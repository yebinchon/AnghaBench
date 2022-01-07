; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_poll.c_getevents.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_poll.c_getevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@NN_IN = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVFD = common dso_local global i32 0, align 4
@NN_OUT = common dso_local global i32 0, align 4
@NN_SNDFD = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getevents(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 @FD_ZERO(i32* %8)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NN_IN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  store i64 4, i64* %12, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NN_SOL_SOCKET, align 4
  %23 = load i32, i32* @NN_RCVFD, align 4
  %24 = bitcast i32* %9 to i8*
  %25 = call i32 @nn_getsockopt(i32 %21, i32 %22, i32 %23, i8* %24, i64* %12)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @errno_assert(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 4
  %32 = zext i1 %31 to i32
  %33 = call i32 @nn_assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @FD_SET(i32 %34, i32* %8)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %20
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NN_OUT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  store i64 4, i64* %12, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @NN_SOL_SOCKET, align 4
  %52 = load i32, i32* @NN_SNDFD, align 4
  %53 = bitcast i32* %10 to i8*
  %54 = call i32 @nn_getsockopt(i32 %50, i32 %51, i32 %52, i8* %53, i64* %12)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @errno_assert(i32 %57)
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @nn_assert(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @FD_SET(i32 %63, i32* %8)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %49
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %6, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = sdiv i32 %77, 1000
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = srem i32 %80, 1000
  %82 = mul nsw i32 %81, 1000
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %88
  %91 = phi %struct.timeval* [ null, %88 ], [ %13, %89 ]
  %92 = call i32 @select(i32 %85, i32* %8, i32* null, i32* null, %struct.timeval* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @errno_assert(i32 %95)
  store i32 0, i32* %14, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @NN_IN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @FD_ISSET(i32 %102, i32* %8)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @NN_IN, align 4
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %105, %101, %90
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @NN_OUT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @FD_ISSET(i32 %115, i32* %8)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @NN_OUT, align 4
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %118, %114, %109
  %123 = load i32, i32* %14, align 4
  ret i32 %123
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
