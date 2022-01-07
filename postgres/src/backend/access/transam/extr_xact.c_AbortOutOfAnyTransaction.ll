; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortOutOfAnyTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortOutOfAnyTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@TRANS_DEFAULT = common dso_local global i32 0, align 4
@TRANS_START = common dso_local global i32 0, align 4
@TRANS_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AbortOutOfAnyTransaction() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = call i32 (...) @AtAbort_Memory()
  br label %4

4:                                                ; preds = %70, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %69 [
    i32 143, label %8
    i32 137, label %29
    i32 144, label %29
    i32 140, label %29
    i32 141, label %29
    i32 139, label %29
    i32 142, label %29
    i32 145, label %29
    i32 138, label %29
    i32 147, label %34
    i32 146, label %34
    i32 132, label %39
    i32 130, label %39
    i32 129, label %39
    i32 131, label %39
    i32 134, label %39
    i32 128, label %39
    i32 136, label %43
    i32 135, label %43
    i32 133, label %43
  ]

8:                                                ; preds = %4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TRANS_DEFAULT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TRANS_START, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @TRANS_INPROGRESS, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = call i32 (...) @AbortTransaction()
  %27 = call i32 (...) @CleanupTransaction()
  br label %28

28:                                               ; preds = %25, %14
  br label %69

29:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %30 = call i32 (...) @AbortTransaction()
  %31 = call i32 (...) @CleanupTransaction()
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 143, i32* %33, align 8
  br label %69

34:                                               ; preds = %4, %4
  %35 = call i32 (...) @AtAbort_Portals()
  %36 = call i32 (...) @CleanupTransaction()
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 143, i32* %38, align 8
  br label %69

39:                                               ; preds = %4, %4, %4, %4, %4, %4
  %40 = call i32 (...) @AbortSubTransaction()
  %41 = call i32 (...) @CleanupSubTransaction()
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %1, align 8
  br label %69

43:                                               ; preds = %4, %4, %4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @AtSubAbort_Portals(i32 %51, i32 %56, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %48, %43
  %67 = call i32 (...) @CleanupSubTransaction()
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %1, align 8
  br label %69

69:                                               ; preds = %4, %66, %39, %34, %29, %28
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 143
  br i1 %74, label %4, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp eq %struct.TYPE_4__* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = call i32 (...) @AtCleanup_Memory()
  ret void
}

declare dso_local i32 @AtAbort_Memory(...) #1

declare dso_local i32 @AbortTransaction(...) #1

declare dso_local i32 @CleanupTransaction(...) #1

declare dso_local i32 @AtAbort_Portals(...) #1

declare dso_local i32 @AbortSubTransaction(...) #1

declare dso_local i32 @CleanupSubTransaction(...) #1

declare dso_local i32 @AtSubAbort_Portals(i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AtCleanup_Memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
