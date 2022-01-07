; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_TestConfiguration.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_TestConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@possibleConstraints = common dso_local global i32* null, align 8
@nPossibleConstraints = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4
@maxPossibleConstraints = common dso_local global i32 0, align 4
@curConstraints = common dso_local global %struct.TYPE_3__* null, align 8
@nCurConstraints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @TestConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestConfiguration(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** @possibleConstraints, align 8
  %9 = load i32, i32* @nPossibleConstraints, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @nPossibleConstraints, align 4
  %13 = load i32, i32* @MaxBackends, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @maxPossibleConstraints, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curConstraints, align 8
  %20 = load i32, i32* @nCurConstraints, align 4
  %21 = call i32 @ExpandConstraints(%struct.TYPE_3__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %78

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @nCurConstraints, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curConstraints, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @FindLockCycle(i32* %35, i32* %36, i32* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %78

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %29
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curConstraints, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @FindLockCycle(i32* %51, i32* %52, i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %78

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @FindLockCycle(i32* %66, i32* %67, i32* %6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %73, %58, %42, %23, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ExpandConstraints(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @FindLockCycle(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
