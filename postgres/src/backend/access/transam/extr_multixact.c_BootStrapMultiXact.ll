; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_BootStrapMultiXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_BootStrapMultiXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactOffsetCtl = common dso_local global %struct.TYPE_6__* null, align 8
@MultiXactMemberControlLock = common dso_local global i32 0, align 4
@MultiXactMemberCtl = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BootStrapMultiXact() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %3 = load i32, i32* @LW_EXCLUSIVE, align 4
  %4 = call i32 @LWLockAcquire(i32 %2, i32 %3)
  %5 = call i32 @ZeroMultiXactOffsetPage(i32 0, i32 0)
  store i32 %5, i32* %1, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MultiXactOffsetCtl, align 8
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @SimpleLruWritePage(%struct.TYPE_6__* %6, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MultiXactOffsetCtl, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %23 = call i32 @LWLockRelease(i32 %22)
  %24 = load i32, i32* @MultiXactMemberControlLock, align 4
  %25 = load i32, i32* @LW_EXCLUSIVE, align 4
  %26 = call i32 @LWLockAcquire(i32 %24, i32 %25)
  %27 = call i32 @ZeroMultiXactMemberPage(i32 0, i32 0)
  store i32 %27, i32* %1, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MultiXactMemberCtl, align 8
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @SimpleLruWritePage(%struct.TYPE_6__* %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MultiXactMemberCtl, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* @MultiXactMemberControlLock, align 4
  %45 = call i32 @LWLockRelease(i32 %44)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroMultiXactOffsetPage(i32, i32) #1

declare dso_local i32 @SimpleLruWritePage(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ZeroMultiXactMemberPage(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
