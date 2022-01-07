; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SIInsertDataEntries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SIInsertDataEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@shmInvalBuffer = common dso_local global %struct.TYPE_4__* null, align 8
@WRITE_QUANTUM = common dso_local global i32 0, align 4
@SInvalWriteLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MAXNUMMESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIInsertDataEntries(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shmInvalBuffer, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  br label %12

12:                                               ; preds = %99, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WRITE_QUANTUM, align 4
  %18 = call i32 @Min(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @SInvalWriteLock, align 4
  %23 = load i32, i32* @LW_EXCLUSIVE, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %48, %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @MAXNUMMESSAGES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %25
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @SICleanupQueue(i32 1, i32 %45)
  br label %48

47:                                               ; preds = %38
  br label %49

48:                                               ; preds = %44
  br label %25

49:                                               ; preds = %47
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %57, %49
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %3, align 8
  %60 = load i32, i32* %58, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MAXNUMMESSAGES, align 4
  %66 = srem i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = call i32 @SpinLockAcquire(i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = call i32 @SpinLockRelease(i32* %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %96, %71
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %10, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load i32, i32* @SInvalWriteLock, align 4
  %101 = call i32 @LWLockRelease(i32 %100)
  br label %12

102:                                              ; preds = %12
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SICleanupQueue(i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
