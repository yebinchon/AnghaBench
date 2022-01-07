; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/gordon/extr_gordon.c_hold_cur_dance.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/gordon/extr_gordon.c_hold_cur_dance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@SINGLE_TAP = common dso_local global i32 0, align 4
@SINGLE_HOLD = common dso_local global i32 0, align 4
@DOUBLE_HOLD = common dso_local global i32 0, align 4
@DOUBLE_TAP = common dso_local global i32 0, align 4
@TRIPLE_TAP = common dso_local global i32 0, align 4
@TRIPLE_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hold_cur_dance(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @SINGLE_TAP, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %13
  %21 = load i32, i32* @SINGLE_HOLD, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @SINGLE_TAP, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %22
  %30 = load i32, i32* @SINGLE_HOLD, align 4
  store i32 %30, i32* %2, align 4
  br label %60

31:                                               ; preds = %1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @DOUBLE_HOLD, align 4
  store i32 %42, i32* %2, align 4
  br label %60

43:                                               ; preds = %36
  %44 = load i32, i32* @DOUBLE_TAP, align 4
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %31
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @TRIPLE_TAP, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @TRIPLE_HOLD, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %45
  store i32 8, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %55, %43, %41, %29, %27, %20, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
