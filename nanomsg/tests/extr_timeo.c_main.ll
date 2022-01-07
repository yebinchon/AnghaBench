; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_timeo.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_timeo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_stopwatch = type { i32 }

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@NN_SNDTIMEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.nn_stopwatch, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @AF_SP, align 4
  %9 = load i32, i32* @NN_PAIR, align 4
  %10 = call i32 @test_socket(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  store i32 100, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NN_SOL_SOCKET, align 4
  %13 = load i32, i32* @NN_RCVTIMEO, align 4
  %14 = call i32 @nn_setsockopt(i32 %11, i32 %12, i32 %13, i32* %4, i32 4)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @errno_assert(i32 %17)
  %19 = call i32 @nn_stopwatch_init(%struct.nn_stopwatch* %6)
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %22 = call i32 @nn_recv(i32 %20, i8* %21, i32 3, i32 0)
  store i32 %22, i32* %2, align 4
  %23 = call i32 @nn_stopwatch_term(%struct.nn_stopwatch* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %0
  %27 = call i64 (...) @nn_errno()
  %28 = load i64, i64* @ETIMEDOUT, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %0
  %31 = phi i1 [ false, %0 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @errno_assert(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @time_assert(i32 %34, i32 100000)
  store i32 100, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @NN_SOL_SOCKET, align 4
  %38 = load i32, i32* @NN_SNDTIMEO, align 4
  %39 = call i32 @nn_setsockopt(i32 %36, i32 %37, i32 %38, i32* %4, i32 4)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @errno_assert(i32 %42)
  %44 = call i32 @nn_stopwatch_init(%struct.nn_stopwatch* %6)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @nn_send(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 0)
  store i32 %46, i32* %2, align 4
  %47 = call i32 @nn_stopwatch_term(%struct.nn_stopwatch* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = call i64 (...) @nn_errno()
  %52 = load i64, i64* @ETIMEDOUT, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %30
  %55 = phi i1 [ false, %30 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @errno_assert(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @time_assert(i32 %58, i32 100000)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @test_close(i32 %60)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_stopwatch_init(%struct.nn_stopwatch*) #1

declare dso_local i32 @nn_recv(i32, i8*, i32, i32) #1

declare dso_local i32 @nn_stopwatch_term(%struct.nn_stopwatch*) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @time_assert(i32, i32) #1

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
