; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_pubsub_demo.c_client.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_pubsub_demo.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_SUB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@NN_SUB_SUBSCRIBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nn_setsockopt: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nn_recv: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"nn_recv: got %d bytes, wanted %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s <pid %u> There are %u clients connected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca [9 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @AF_SP, align 4
  %12 = load i32, i32* @NN_SUB, align 4
  %13 = call i32 @nn_socket(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (...) @nn_errno()
  %19 = call i8* @nn_strerror(i32 %18)
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 -1, i32* %2, align 4
  br label %87

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @nn_connect(i32 %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (...) @nn_errno()
  %29 = call i8* @nn_strerror(i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @nn_close(i32 %31)
  store i32 -1, i32* %2, align 4
  br label %87

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NN_SUB, align 4
  %36 = load i32, i32* @NN_SUB_SUBSCRIBE, align 4
  %37 = call i64 @nn_setsockopt(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (...) @nn_errno()
  %42 = call i8* @nn_strerror(i32 %41)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @nn_close(i32 %44)
  store i32 -1, i32* %2, align 4
  br label %87

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %66, %46
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %50 = call i32 @nn_recv(i32 %48, i32* %49, i32 32, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (...) @nn_errno()
  %56 = call i8* @nn_strerror(i32 %55)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %84

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 32
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 32)
  br label %84

66:                                               ; preds = %58
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %68 = call i32 @memcpy(i32* %9, i32* %67, i32 4)
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = call i32 @memcpy(i32* %8, i32* %70, i32 4)
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @ntohl(i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %75 = call i32 @localtime(i64* %10)
  %76 = call i32 @strftime(i8* %74, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %78 = call i64 (...) @getpid()
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @ntohl(i32 %80)
  %82 = trunc i64 %81 to i32
  %83 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 %79, i32 %82)
  br label %47

84:                                               ; preds = %62, %53
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @nn_close(i32 %85)
  store i32 -1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %39, %26, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_connect(i32, i8*) #1

declare dso_local i32 @nn_close(i32) #1

declare dso_local i64 @nn_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @nn_recv(i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i64*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
