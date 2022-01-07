; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathGrantRelationLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathGrantRelationLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_5__* null, align 8
@FastPathLocalUseCount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @FastPathGrantRelationLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FastPathGrantRelationLock(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  store i64 %8, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @FAST_PATH_GET_BITS(%struct.TYPE_5__* %14, i64 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  br label %43

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_5__* %30, i64 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FAST_PATH_SET_LOCKMODE(%struct.TYPE_5__* %38, i64 %39, i32 %40)
  store i32 1, i32* %3, align 4
  br label %65

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %9

47:                                               ; preds = %9
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @FAST_PATH_SET_LOCKMODE(%struct.TYPE_5__* %58, i64 %59, i32 %60)
  %62 = load i32, i32* @FastPathLocalUseCount, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @FastPathLocalUseCount, align 4
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %51, %29
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @FAST_PATH_GET_BITS(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @FAST_PATH_SET_LOCKMODE(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
