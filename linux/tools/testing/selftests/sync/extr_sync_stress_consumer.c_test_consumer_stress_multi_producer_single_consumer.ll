; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_consumer.c_test_consumer_stress_multi_producer_single_consumer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_consumer.c_test_consumer_stress_multi_producer_single_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i64 }

@test_data_mpsc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mpsc_producer_thread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_consumer_stress_multi_producer_single_consumer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 4096, i32* %1, align 4
  store i32 5, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %16 = call i32 (...) @sw_sync_timeline_create()
  store i32 %16, i32* %7, align 4
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %26, %0
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = call i32 (...) @sw_sync_timeline_create()
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %12, i64 %24
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %17

29:                                               ; preds = %17
  store i32* %12, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 0), align 8
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 1), align 8
  %31 = load i32, i32* %1, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 2), align 4
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 5), align 8
  %33 = call i32 @pthread_mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 4), i32* null)
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %47, %29
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  %42 = load i64, i64* @mpsc_producer_thread, align 8
  %43 = inttoptr i64 %42 to i8* (i8*)*
  %44 = load i64, i64* %3, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @pthread_create(i32* %41, i32* null, i8* (i8*)* %43, i8* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %34

50:                                               ; preds = %34
  %51 = call i64 (...) @mpcs_consumer_thread()
  store i64 %51, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %62, %50
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32, i32* %15, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pthread_join(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %3, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %52

65:                                               ; preds = %52
  %66 = load i64, i64* %4, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sw_sync_timeline_create(...) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #2

declare dso_local i64 @mpcs_consumer_thread(...) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
