; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortCurrentTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AbortCurrentTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@TRANS_DEFAULT = common dso_local global i32 0, align 4
@TRANS_START = common dso_local global i32 0, align 4
@TRANS_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AbortCurrentTransaction() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %70 [
    i32 143, label %6
    i32 137, label %27
    i32 141, label %27
    i32 144, label %32
    i32 140, label %37
    i32 139, label %37
    i32 142, label %41
    i32 147, label %46
    i32 136, label %46
    i32 146, label %47
    i32 145, label %51
    i32 138, label %56
    i32 130, label %61
    i32 132, label %65
    i32 129, label %65
    i32 131, label %65
    i32 134, label %65
    i32 128, label %65
    i32 135, label %68
    i32 133, label %68
  ]

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRANS_DEFAULT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %26

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRANS_START, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @TRANS_INPROGRESS, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = call i32 (...) @AbortTransaction()
  %25 = call i32 (...) @CleanupTransaction()
  br label %26

26:                                               ; preds = %23, %12
  br label %70

27:                                               ; preds = %0, %0
  %28 = call i32 (...) @AbortTransaction()
  %29 = call i32 (...) @CleanupTransaction()
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 143, i32* %31, align 4
  br label %70

32:                                               ; preds = %0
  %33 = call i32 (...) @AbortTransaction()
  %34 = call i32 (...) @CleanupTransaction()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 143, i32* %36, align 4
  br label %70

37:                                               ; preds = %0, %0
  %38 = call i32 (...) @AbortTransaction()
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 147, i32* %40, align 4
  br label %70

41:                                               ; preds = %0
  %42 = call i32 (...) @AbortTransaction()
  %43 = call i32 (...) @CleanupTransaction()
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 143, i32* %45, align 4
  br label %70

46:                                               ; preds = %0, %0
  br label %70

47:                                               ; preds = %0
  %48 = call i32 (...) @CleanupTransaction()
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 143, i32* %50, align 4
  br label %70

51:                                               ; preds = %0
  %52 = call i32 (...) @AbortTransaction()
  %53 = call i32 (...) @CleanupTransaction()
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 143, i32* %55, align 4
  br label %70

56:                                               ; preds = %0
  %57 = call i32 (...) @AbortTransaction()
  %58 = call i32 (...) @CleanupTransaction()
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 143, i32* %60, align 4
  br label %70

61:                                               ; preds = %0
  %62 = call i32 (...) @AbortSubTransaction()
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 136, i32* %64, align 4
  br label %70

65:                                               ; preds = %0, %0, %0, %0, %0
  %66 = call i32 (...) @AbortSubTransaction()
  %67 = call i32 (...) @CleanupSubTransaction()
  call void @AbortCurrentTransaction()
  br label %70

68:                                               ; preds = %0, %0
  %69 = call i32 (...) @CleanupSubTransaction()
  call void @AbortCurrentTransaction()
  br label %70

70:                                               ; preds = %0, %68, %65, %61, %56, %51, %47, %46, %41, %37, %32, %27, %26
  ret void
}

declare dso_local i32 @AbortTransaction(...) #1

declare dso_local i32 @CleanupTransaction(...) #1

declare dso_local i32 @AbortSubTransaction(...) #1

declare dso_local i32 @CleanupSubTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
