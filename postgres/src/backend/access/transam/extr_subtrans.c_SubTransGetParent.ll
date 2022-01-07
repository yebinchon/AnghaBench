; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransGetParent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransGetParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@TransactionXmin = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@SubTransCtl = common dso_local global %struct.TYPE_5__* null, align 8
@SubtransControlLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SubTransGetParent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TransactionIdToPage(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TransactionIdToEntry(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TransactionXmin, align 4
  %15 = call i32 @TransactionIdFollowsOrEquals(i32 %13, i32 %14)
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TransactionIdIsNormal(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SubTransCtl, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_5__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SubTransCtl, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @SubtransControlLock, align 4
  %44 = call i32 @LWLockRelease(i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %22, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @TransactionIdToEntry(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
