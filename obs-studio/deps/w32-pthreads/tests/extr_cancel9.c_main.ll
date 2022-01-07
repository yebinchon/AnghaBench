; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTW32_ALERTABLE_ASYNC_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cancel sleeping thread.\0A\00", align 1
@test_sleep = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"test_sleep\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cancel waiting thread.\0A\00", align 1
@test_wait = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"test_wait\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Cancel blocked thread (blocked on network I/O).\0A\00", align 1
@test_udp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"test_udp\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Alertable async cancel not available.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @PTW32_ALERTABLE_ASYNC_CANCEL, align 4
  %5 = call i64 @pthread_win32_test_features_np(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %83

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @test_sleep, align 4
  %10 = call i64 @pthread_create(i32* %2, i32* null, i32 %9, i32* null)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @Sleep(i32 100)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @pthread_cancel(i32 %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @pthread_join(i32 %20, i8** %3)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28, %7
  %30 = phi i1 [ false, %7 ], [ true, %28 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @test_wait, align 4
  %35 = call i64 @pthread_create(i32* %2, i32* null, i32 %34, i32* null)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @Sleep(i32 100)
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @pthread_cancel(i32 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i64 @pthread_join(i32 %45, i8** %3)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %29
  %55 = phi i1 [ false, %29 ], [ true, %53 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @test_udp, align 4
  %60 = call i64 @pthread_create(i32* %2, i32* null, i32 %59, i32* null)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 @Sleep(i32 100)
  %65 = load i32, i32* %2, align 4
  %66 = call i64 @pthread_cancel(i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = call i64 @pthread_join(i32 %70, i8** %3)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %54
  %80 = phi i1 [ false, %54 ], [ true, %78 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %85

83:                                               ; preds = %0
  %84 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  ret i32 0
}

declare dso_local i64 @pthread_win32_test_features_np(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @assert(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pthread_cancel(i32) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
