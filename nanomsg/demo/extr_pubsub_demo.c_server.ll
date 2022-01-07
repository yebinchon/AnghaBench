; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_pubsub_demo.c_server.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_pubsub_demo.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PUB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nn_bind: %s\0A\00", align 1
@NN_STAT_CURRENT_CONNECTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"nn_send: %s (ignoring)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @AF_SP, align 4
  %10 = load i32, i32* @NN_PUB, align 4
  %11 = call i32 @nn_socket(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (...) @nn_errno()
  %17 = call i8* @nn_strerror(i32 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @nn_bind(i32 %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (...) @nn_errno()
  %27 = call i8* @nn_strerror(i32 %26)
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @nn_close(i32 %29)
  store i32 -1, i32* %2, align 4
  br label %58

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %56, %31
  %33 = call i64 @time(i32* null)
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %36 = call i64 @nn_get_statistic(i32 %34, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @htonl(i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @htonl(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %42 = call i32 @memcpy(i32* %41, i64* %6, i32 8)
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = call i32 @memcpy(i32* %44, i64* %7, i32 8)
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %48 = call i32 @nn_send(i32 %46, i32* %47, i32 64, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (...) @nn_errno()
  %54 = call i8* @nn_strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %32
  %57 = call i32 @sleep(i32 10)
  br label %32

58:                                               ; preds = %24, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_bind(i32, i8*) #1

declare dso_local i32 @nn_close(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @nn_get_statistic(i32, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @nn_send(i32, i32*, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
