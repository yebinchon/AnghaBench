; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_device_demo.c_client.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_device_demo.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nn_send: %s\0A\00", align 1
@NN_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"nn_recv: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"calloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @AF_SP, align 4
  %11 = load i32, i32* @NN_REQ, align 4
  %12 = call i32 @nn_socket(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (...) @nn_errno()
  %18 = call i8* @nn_strerror(i32 %17)
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @nn_connect(i32 %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (...) @nn_errno()
  %28 = call i8* @nn_strerror(i32 %27)
  %29 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @nn_close(i32 %30)
  store i32 -1, i32* %3, align 4
  br label %84

32:                                               ; preds = %20
  %33 = call i32 @usleep(i32 1000)
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i64 @nn_send(i32 %34, i8* %35, i32 %37, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (...) @nn_errno()
  %43 = call i8* @nn_strerror(i32 %42)
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @nn_close(i32 %45)
  store i32 -1, i32* %3, align 4
  br label %84

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NN_MSG, align 4
  %50 = call i32 @nn_recv(i32 %48, i8** %9, i32 %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (...) @nn_errno()
  %56 = call i8* @nn_strerror(i32 %55)
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @nn_close(i32 %58)
  store i32 -1, i32* %3, align 4
  br label %84

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @nn_close(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i8* @calloc(i32 %64, i32 1)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i8* @strerror(i32 %70)
  %72 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  store i32 -1, i32* %3, align 4
  br label %84

73:                                               ; preds = %60
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @nn_freemsg(i8* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %68, %53, %40, %25, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_connect(i32, i8*) #1

declare dso_local i32 @nn_close(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @nn_send(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nn_recv(i32, i8**, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nn_freemsg(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
