; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_rpc_demo.c_server.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_rpc_demo.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@AF_SP = common dso_local global i32 0, align 4
@NN_REP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nn_bind: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nn_recv: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"morning\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"afternoon\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"evening\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"night\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Good %s, %s.\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"I'm sorry, your name is too long.  But good %s anyway.\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"nn_send: %s (ignoring)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @AF_SP, align 4
  %13 = load i32, i32* @NN_REP, align 4
  %14 = call i32 @nn_socket(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (...) @nn_errno()
  %20 = call i8* @nn_strerror(i32 %19)
  %21 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %113

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @nn_bind(i32 %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (...) @nn_errno()
  %30 = call i8* @nn_strerror(i32 %29)
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nn_close(i32 %32)
  store i32 -1, i32* %2, align 4
  br label %113

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %109, %34
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %38 = call i32 @nn_recv(i32 %36, i8* %37, i32 128, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (...) @nn_errno()
  %44 = call i8* @nn_strerror(i32 %43)
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %110

46:                                               ; preds = %35
  %47 = call i32 @time(i32* null)
  store i32 %47, i32* %7, align 4
  %48 = call %struct.tm* @localtime(i32* %7)
  store %struct.tm* %48, %struct.tm** %8, align 8
  %49 = load %struct.tm*, %struct.tm** %8, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 12
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %69

54:                                               ; preds = %46
  %55 = load %struct.tm*, %struct.tm** %8, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 17
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %68

60:                                               ; preds = %54
  %61 = load %struct.tm*, %struct.tm** %8, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 20
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %67

66:                                               ; preds = %60
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 128
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %75
  store i8 0, i8* %76, align 1
  br label %79

77:                                               ; preds = %69
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 127
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %73
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %81, %83
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %91

91:                                               ; preds = %90, %79
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %96 = call i32 @sprintf(i8* %92, i8* %93, i8* %94, i8* %95)
  %97 = load i32, i32* %4, align 4
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %100 = call i32 @strlen(i8* %99)
  %101 = call i32 @nn_send(i32 %97, i8* %98, i32 %100, i32 0)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (...) @nn_errno()
  %107 = call i8* @nn_strerror(i32 %106)
  %108 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %104, %91
  br label %35

110:                                              ; preds = %41
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @nn_close(i32 %111)
  store i32 -1, i32* %2, align 4
  br label %113

113:                                              ; preds = %110, %27, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_bind(i32, i8*) #1

declare dso_local i32 @nn_close(i32) #1

declare dso_local i32 @nn_recv(i32, i8*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
