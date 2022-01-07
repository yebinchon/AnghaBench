; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_client.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nn_send: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nn_recv: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Request took %u milliseconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @AF_SP, align 4
  %16 = load i32, i32* @NN_REQ, align 4
  %17 = call i32 @nn_socket(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (...) @nn_errno()
  %23 = call i8* @nn_strerror(i32 %22)
  %24 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @nn_connect(i32 %26, i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (...) @nn_errno()
  %33 = call i8* @nn_strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @nn_close(i32 %35)
  store i32 -1, i32* %3, align 4
  br label %76

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @htonl(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %41 = call i32 @memcpy(i32* %40, i32* %12, i32 4)
  %42 = call i64 (...) @milliseconds()
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %45 = call i64 @nn_send(i32 %43, i32* %44, i32 16, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (...) @nn_errno()
  %50 = call i8* @nn_strerror(i32 %49)
  %51 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @nn_close(i32 %52)
  store i32 -1, i32* %3, align 4
  br label %76

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = bitcast [4 x i32]* %9 to i32**
  %57 = call i32 @nn_recv(i32 %55, i32** %56, i32 16, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (...) @nn_errno()
  %63 = call i8* @nn_strerror(i32 %62)
  %64 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @nn_close(i32 %65)
  store i32 -1, i32* %3, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @nn_close(i32 %68)
  %70 = call i64 (...) @milliseconds()
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %60, %47, %30, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_connect(i32, i8*) #1

declare dso_local i32 @nn_close(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @milliseconds(...) #1

declare dso_local i64 @nn_send(i32, i32*, i32, i32) #1

declare dso_local i32 @nn_recv(i32, i32**, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
