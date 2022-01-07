; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheReleaseMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheReleaseMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"CacheReleaseMemory() MinimumAmountToRelease = %d\0A\00", align 1
@CacheManagerInitialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CacheManagerDrive = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CacheReleaseMemory(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* @CacheManagerInitialized, align 8
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %2, align 8
  br label %34

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %21, %12
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = call i32 @CacheInternalFreeBlock(%struct.TYPE_3__* @CacheManagerDrive)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %28

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CacheManagerDrive, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CacheManagerDrive, i32 0, i32 1), align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %13

28:                                               ; preds = %20, %13
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp sge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %28, %10
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @CacheInternalFreeBlock(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
