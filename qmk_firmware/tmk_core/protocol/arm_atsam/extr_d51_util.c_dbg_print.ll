; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_d51_util.c_dbg_print.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_d51_util.c_dbg_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_1_ON = common dso_local global i32 0, align 4
@DBG_1_OFF = common dso_local global i32 0, align 4
@DBG_PAUSE = common dso_local global i64 0, align 8
@w = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %50

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 1000
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %3, align 4
  br label %49

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 10000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 3, i32* %3, align 4
  br label %48

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 100000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %47

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 1000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 5, i32* %3, align 4
  br label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 10000000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 6, i32* %3, align 4
  br label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 100000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7, i32* %3, align 4
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 1000000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 8, i32* %3, align 4
  br label %43

42:                                               ; preds = %38
  store i32 9, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47, %21
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49, %13
  br label %51

51:                                               ; preds = %50, %9
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %3, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %61, %55
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 10
  store i32 %63, i32* %5, align 4
  br label %57

64:                                               ; preds = %57
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @DBG_1_ON, align 4
  %77 = load i32, i32* @DBG_1_OFF, align 4
  %78 = load i32, i32* @DBG_1_ON, align 4
  %79 = load i32, i32* @DBG_1_OFF, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @DBG_1_ON, align 4
  %88 = load i32, i32* @DBG_1_OFF, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %4, align 4
  br label %83

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %3, align 4
  br label %52

95:                                               ; preds = %52
  %96 = load i64, i64* @DBG_PAUSE, align 8
  store i64 %96, i64* @w, align 8
  br label %97

97:                                               ; preds = %101, %95
  %98 = load i64, i64* @w, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* @w, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* @w, align 8
  br label %97

104:                                              ; preds = %97
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
