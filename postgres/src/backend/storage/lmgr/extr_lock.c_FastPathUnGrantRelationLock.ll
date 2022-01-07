; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathUnGrantRelationLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_FastPathUnGrantRelationLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@FastPathLocalUseCount = common dso_local global i64 0, align 8
@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @FastPathUnGrantRelationLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FastPathUnGrantRelationLock(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* @FastPathLocalUseCount, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_5__* %21, i64 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_5__* %32, i64 %33, i32 %34)
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %20, %11
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @FAST_PATH_GET_BITS(%struct.TYPE_5__* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* @FastPathLocalUseCount, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* @FastPathLocalUseCount, align 8
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %7

48:                                               ; preds = %7
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @FAST_PATH_CHECK_LOCKMODE(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FAST_PATH_CLEAR_LOCKMODE(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i64 @FAST_PATH_GET_BITS(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
