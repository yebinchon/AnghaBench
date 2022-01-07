; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_find_multixact_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_find_multixact_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64* }

@MultiXactState = common dso_local global %struct.TYPE_10__* null, align 8
@MultiXactOffsetCtl = common dso_local global %struct.TYPE_9__* null, align 8
@MultiXactMemberCtl = common dso_local global %struct.TYPE_9__* null, align 8
@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @find_multixact_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_multixact_start(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MultiXactState, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MultiXactIdToOffsetPage(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MultiXactIdToOffsetEntry(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %20 = call i32 @SimpleLruFlush(%struct.TYPE_9__* %19, i32 1)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactMemberCtl, align 8
  %22 = call i32 @SimpleLruFlush(%struct.TYPE_9__* %21, i32 1)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SimpleLruDoesPhysicalPageExist(%struct.TYPE_9__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_9__* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %50 = call i32 @LWLockRelease(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %28, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MultiXactIdToOffsetPage(i32) #1

declare dso_local i32 @MultiXactIdToOffsetEntry(i32) #1

declare dso_local i32 @SimpleLruFlush(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SimpleLruDoesPhysicalPageExist(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
