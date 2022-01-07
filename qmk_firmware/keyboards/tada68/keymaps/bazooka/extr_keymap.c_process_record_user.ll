; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/tada68/keymaps/bazooka/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/tada68/keymaps/bazooka/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_FUNC = common dso_local global i32 0, align 4
@keyboard_state = common dso_local global i32 0, align 4
@_MOUSE = common dso_local global i32 0, align 4
@X_LGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %90 [
    i32 131, label %7
    i32 130, label %36
    i32 128, label %61
    i32 129, label %71
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i32, i32* @_FUNC, align 4
  %15 = call i32 @layer_on(i32 %14)
  %16 = load i32, i32* @keyboard_state, align 4
  %17 = call i32 @CHECK_BIT(i32 %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @_MOUSE, align 4
  %21 = call i32 @layer_on(i32 %20)
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @_MOUSE, align 4
  %24 = call i32 @layer_off(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @keyboard_state, align 4
  %27 = call i32 @SET_BIT(i32 %26, i32 0)
  br label %35

28:                                               ; preds = %7
  %29 = load i32, i32* @_FUNC, align 4
  %30 = call i32 @layer_off(i32 %29)
  %31 = load i32, i32* @_MOUSE, align 4
  %32 = call i32 @layer_off(i32 %31)
  %33 = load i32, i32* @keyboard_state, align 4
  %34 = call i32 @CLEAR_BIT(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %25
  br label %90

36:                                               ; preds = %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i32, i32* @keyboard_state, align 4
  %44 = call i32 @TOGGLE_BIT(i32 %43, i32 1)
  %45 = load i32, i32* @keyboard_state, align 4
  %46 = call i32 @CHECK_BIT(i32 %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* @keyboard_state, align 4
  %50 = call i32 @CHECK_BIT(i32 %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @_MOUSE, align 4
  %54 = call i32 @layer_on(i32 %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @_MOUSE, align 4
  %57 = call i32 @layer_off(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %36
  br label %90

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @keyboard_state, align 4
  %69 = call i32 @TOGGLE_BIT(i32 %68, i32 2)
  br label %70

70:                                               ; preds = %67, %61
  br label %90

71:                                               ; preds = %2
  %72 = load i32, i32* @keyboard_state, align 4
  %73 = call i32 @CHECK_BIT(i32 %72, i32 2)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @X_LGUI, align 4
  %83 = call i32 @SS_DOWN(i32 %82)
  %84 = call i32 @SEND_STRING(i32 %83)
  store i32 0, i32* %3, align 4
  br label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @X_LGUI, align 4
  %87 = call i32 @SS_UP(i32 %86)
  %88 = call i32 @SEND_STRING(i32 %87)
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %2, %89, %70, %60, %35
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %85, %81
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @CHECK_BIT(i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @CLEAR_BIT(i32, i32) #1

declare dso_local i32 @TOGGLE_BIT(i32, i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_DOWN(i32) #1

declare dso_local i32 @SS_UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
