; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_keycode_config.c_keycode_config.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_keycode_config.c_keycode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@keymap_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KC_NO = common dso_local global i32 0, align 4
@KC_LCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keycode_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %107 [
    i32 137, label %5
    i32 131, label %5
    i32 133, label %14
    i32 134, label %28
    i32 132, label %38
    i32 129, label %53
    i32 130, label %63
    i32 128, label %73
    i32 135, label %87
    i32 136, label %92
    i32 139, label %97
    i32 138, label %102
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 7), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 8), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5
  store i32 133, i32* %2, align 4
  br label %109

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 7), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 137, i32* %2, align 4
  br label %109

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 5), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @KC_NO, align 4
  store i32 %25, i32* %2, align 4
  br label %109

26:                                               ; preds = %21
  store i32 132, i32* %2, align 4
  br label %109

27:                                               ; preds = %18
  store i32 133, i32* %2, align 4
  br label %109

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 6), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @KC_NO, align 4
  store i32 %35, i32* %2, align 4
  br label %109

36:                                               ; preds = %31
  store i32 132, i32* %2, align 4
  br label %109

37:                                               ; preds = %28
  store i32 134, i32* %2, align 4
  br label %109

38:                                               ; preds = %1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 6), align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 134, i32* %2, align 4
  br label %109

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 5), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @KC_LCTRL, align 4
  store i32 %46, i32* %2, align 4
  br label %109

47:                                               ; preds = %42
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @KC_NO, align 4
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %47
  store i32 132, i32* %2, align 4
  br label %109

53:                                               ; preds = %1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 3), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @KC_NO, align 4
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %56
  store i32 128, i32* %2, align 4
  br label %109

62:                                               ; preds = %53
  store i32 129, i32* %2, align 4
  br label %109

63:                                               ; preds = %1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 4), align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @KC_NO, align 4
  store i32 %70, i32* %2, align 4
  br label %109

71:                                               ; preds = %66
  store i32 128, i32* %2, align 4
  br label %109

72:                                               ; preds = %63
  store i32 130, i32* %2, align 4
  br label %109

73:                                               ; preds = %1
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 4), align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 130, i32* %2, align 4
  br label %109

77:                                               ; preds = %73
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 3), align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 129, i32* %2, align 4
  br label %109

81:                                               ; preds = %77
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @KC_NO, align 4
  store i32 %85, i32* %2, align 4
  br label %109

86:                                               ; preds = %81
  store i32 128, i32* %2, align 4
  br label %109

87:                                               ; preds = %1
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 1), align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 136, i32* %2, align 4
  br label %109

91:                                               ; preds = %87
  store i32 135, i32* %2, align 4
  br label %109

92:                                               ; preds = %1
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 1), align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 135, i32* %2, align 4
  br label %109

96:                                               ; preds = %92
  store i32 136, i32* %2, align 4
  br label %109

97:                                               ; preds = %1
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 0), align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 138, i32* %2, align 4
  br label %109

101:                                              ; preds = %97
  store i32 139, i32* %2, align 4
  br label %109

102:                                              ; preds = %1
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 0), align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 139, i32* %2, align 4
  br label %109

106:                                              ; preds = %102
  store i32 138, i32* %2, align 4
  br label %109

107:                                              ; preds = %1
  %108 = load i32, i32* %3, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %106, %105, %101, %100, %96, %95, %91, %90, %86, %84, %80, %76, %72, %71, %69, %62, %61, %59, %52, %50, %45, %41, %37, %36, %34, %27, %26, %24, %17, %12, %11
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
