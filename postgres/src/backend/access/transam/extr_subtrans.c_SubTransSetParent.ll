; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransSetParent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransSetParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i64* }

@SubtransControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SubTransCtl = common dso_local global %struct.TYPE_5__* null, align 8
@InvalidTransactionId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubTransSetParent(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @TransactionIdToPage(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @TransactionIdToEntry(i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TransactionIdIsValid(i64 %13)
  %15 = call i32 @Assert(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @TransactionIdFollows(i64 %16, i64 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* @SubtransControlLock, align 4
  %21 = load i32, i32* @LW_EXCLUSIVE, align 4
  %22 = call i32 @LWLockAcquire(i32 %20, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SubTransCtl, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @SimpleLruReadPage(%struct.TYPE_5__* %23, i32 %24, i32 1, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SubTransCtl, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64* %40, i64** %8, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %2
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @InvalidTransactionId, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SubTransCtl, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %45, %2
  %63 = load i32, i32* @SubtransControlLock, align 4
  %64 = call i32 @LWLockRelease(i32 %63)
  ret void
}

declare dso_local i32 @TransactionIdToPage(i64) #1

declare dso_local i32 @TransactionIdToEntry(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i32 @TransactionIdFollows(i64, i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_5__*, i32, i32, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
