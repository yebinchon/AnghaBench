; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_RunFromStore.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_RunFromStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, i32, i32)* }

@TTSOpsMinimalTuple = common dso_local global i32 0, align 4
@CMD_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32, i64, %struct.TYPE_9__*)* @RunFromStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RunFromStore(%struct.TYPE_8__* %0, i32 %1, i64 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @MakeSingleTupleTableSlot(i32 %16, i32* @TTSOpsMinimalTuple)
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = load i32, i32* @CMD_SELECT, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %20(%struct.TYPE_9__* %21, i32 %22, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ScanDirectionIsNoMovement(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %73

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ScanDirectionIsForward(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %71, %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MemoryContextSwitchTo(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @tuplestore_gettupleslot(i32 %41, i32 %42, i32 0, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @MemoryContextSwitchTo(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %72

50:                                               ; preds = %34
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)** %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = call i32 %53(i32* %54, %struct.TYPE_9__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %72

59:                                               ; preds = %50
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @ExecClearTuple(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %72

71:                                               ; preds = %66, %59
  br label %34

72:                                               ; preds = %70, %58, %49
  br label %73

73:                                               ; preds = %72, %30
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = call i32 %76(%struct.TYPE_9__* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @ExecDropSingleTupleTableSlot(i32* %79)
  %81 = load i64, i64* %9, align 8
  ret i64 %81
}

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #1

declare dso_local i64 @ScanDirectionIsNoMovement(i32) #1

declare dso_local i32 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_gettupleslot(i32, i32, i32, i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
