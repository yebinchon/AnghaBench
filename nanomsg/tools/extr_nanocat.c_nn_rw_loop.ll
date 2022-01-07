; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_rw_loop.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_nanocat.c_nn_rw_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Message not sent (EAGAIN)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Can't send\00", align 1
@NN_MSG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@EFSM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Can't recv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_rw_loop(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 1000
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %120, %2
  %20 = call i32 (...) @nn_clock_ms()
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nn_send(i32 %21, i32 %25, i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %45

40:                                               ; preds = %33, %19
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @nn_assert_errno(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @nn_recv_loop(%struct.TYPE_7__* %51, i32 %52)
  ret void

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %109, %106, %86, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 (...) @nn_clock_ms()
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %120

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %67, %64
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @nn_set_recv_timeout(i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @NN_MSG, align 4
  %79 = call i32 @nn_recv(i32 %77, i8** %6, i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %73
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EAGAIN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %55

87:                                               ; preds = %82
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @ETIMEDOUT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EFSM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 (...) @nn_clock_ms()
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @nn_sleep(i32 %104)
  br label %106

106:                                              ; preds = %103, %95
  br label %55

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i32, i32* %5, align 4
  %111 = icmp sge i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @nn_assert_errno(i32 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @nn_print_message(%struct.TYPE_7__* %114, i8* %115, i32 %116)
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @nn_freemsg(i8* %118)
  br label %55

120:                                              ; preds = %63
  br label %19
}

declare dso_local i32 @nn_clock_ms(...) #1

declare dso_local i32 @nn_send(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @nn_assert_errno(i32, i8*) #1

declare dso_local i32 @nn_recv_loop(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nn_set_recv_timeout(i32, i32) #1

declare dso_local i32 @nn_recv(i32, i8**, i32, i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @nn_print_message(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @nn_freemsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
