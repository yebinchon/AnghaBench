; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockCheckRecurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockCheckRecurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nCurConstraints = common dso_local global i64 0, align 8
@maxCurConstraints = common dso_local global i64 0, align 8
@nPossibleConstraints = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i64 0, align 8
@maxPossibleConstraints = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"inconsistent results during deadlock check\00", align 1
@possibleConstraints = common dso_local global i32* null, align 8
@curConstraints = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DeadLockCheckRecurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeadLockCheckRecurse(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @TestConfiguration(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %82

17:                                               ; preds = %13
  %18 = load i64, i64* @nCurConstraints, align 8
  %19 = load i64, i64* @maxCurConstraints, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %82

22:                                               ; preds = %17
  %23 = load i32, i32* @nPossibleConstraints, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @nPossibleConstraints, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @MaxBackends, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @maxPossibleConstraints, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @nPossibleConstraints, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* @nPossibleConstraints, align 4
  store i32 1, i32* %6, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @TestConfiguration(i32* %50)
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @FATAL, align 4
  %55 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45, %42
  %58 = load i32*, i32** @possibleConstraints, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @curConstraints, align 8
  %66 = load i64, i64* @nCurConstraints, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i64, i64* @nCurConstraints, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* @nCurConstraints, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @DeadLockCheckRecurse(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %82

74:                                               ; preds = %57
  %75 = load i64, i64* @nCurConstraints, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* @nCurConstraints, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %38

80:                                               ; preds = %38
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* @nPossibleConstraints, align 4
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %73, %21, %16, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @TestConfiguration(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
