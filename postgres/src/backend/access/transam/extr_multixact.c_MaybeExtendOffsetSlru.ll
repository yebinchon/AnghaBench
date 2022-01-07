; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MaybeExtendOffsetSlru.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MaybeExtendOffsetSlru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactOffsetCtl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MaybeExtendOffsetSlru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MaybeExtendOffsetSlru() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @MultiXactIdToOffsetPage(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %8 = load i32, i32* @LW_EXCLUSIVE, align 4
  %9 = call i32 @LWLockAcquire(i32 %7, i32 %8)
  %10 = load i32, i32* @MultiXactOffsetCtl, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @SimpleLruDoesPhysicalPageExist(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ZeroMultiXactOffsetPage(i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @MultiXactOffsetCtl, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @SimpleLruWritePage(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %0
  %21 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %22 = call i32 @LWLockRelease(i32 %21)
  ret void
}

declare dso_local i32 @MultiXactIdToOffsetPage(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SimpleLruDoesPhysicalPageExist(i32, i32) #1

declare dso_local i32 @ZeroMultiXactOffsetPage(i32, i32) #1

declare dso_local i32 @SimpleLruWritePage(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
