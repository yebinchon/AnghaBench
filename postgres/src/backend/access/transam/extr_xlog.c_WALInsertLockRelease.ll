; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WALInsertLockRelease.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WALInsertLockRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@holdingAllLocks = common dso_local global i32 0, align 4
@NUM_XLOGINSERT_LOCKS = common dso_local global i32 0, align 4
@WALInsertLocks = common dso_local global %struct.TYPE_4__* null, align 8
@MyLockNo = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WALInsertLockRelease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WALInsertLockRelease() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @holdingAllLocks, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %23, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NUM_XLOGINSERT_LOCKS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WALInsertLocks, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WALInsertLocks, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @LWLockReleaseClearVar(i32* %15, i32* %21, i32 0)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %5

26:                                               ; preds = %5
  store i32 0, i32* @holdingAllLocks, align 4
  br label %39

27:                                               ; preds = %0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WALInsertLocks, align 8
  %29 = load i64, i64* @MyLockNo, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WALInsertLocks, align 8
  %34 = load i64, i64* @MyLockNo, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @LWLockReleaseClearVar(i32* %32, i32* %37, i32 0)
  br label %39

39:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @LWLockReleaseClearVar(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
