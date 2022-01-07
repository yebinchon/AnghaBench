; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/cole/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/cole/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %89 [
    i32 130, label %7
    i32 129, label %37
    i32 133, label %67
    i32 131, label %80
    i32 132, label %81
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load i32, i32* @TOG_STATUS, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @TOG_STATUS, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* @TOG_STATUS, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* @_LOWER, align 4
  %24 = call i32 @layer_on(i32 %23)
  %25 = load i32, i32* @_LOWER, align 4
  %26 = load i32, i32* @_RAISE, align 4
  %27 = load i32, i32* @_ADJUST, align 4
  %28 = call i32 @update_tri_layer_RGB(i32 %25, i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %7
  store i32 0, i32* @TOG_STATUS, align 4
  %30 = load i32, i32* @_LOWER, align 4
  %31 = call i32 @layer_off(i32 %30)
  %32 = load i32, i32* @_LOWER, align 4
  %33 = load i32, i32* @_RAISE, align 4
  %34 = load i32, i32* @_ADJUST, align 4
  %35 = call i32 @update_tri_layer_RGB(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %90

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i32, i32* @TOG_STATUS, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @TOG_STATUS, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @TOG_STATUS, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* @_RAISE, align 4
  %54 = call i32 @layer_on(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer_RGB(i32 %55, i32 %56, i32 %57)
  br label %66

59:                                               ; preds = %37
  %60 = load i32, i32* @_RAISE, align 4
  %61 = call i32 @layer_off(i32 %60)
  store i32 0, i32* @TOG_STATUS, align 4
  %62 = load i32, i32* @_LOWER, align 4
  %63 = load i32, i32* @_RAISE, align 4
  %64 = load i32, i32* @_ADJUST, align 4
  %65 = call i32 @update_tri_layer_RGB(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %90

67:                                               ; preds = %2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @_ADJUST, align 4
  %75 = call i32 @layer_on(i32 %74)
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @layer_off(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %3, align 4
  br label %90

80:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

81:                                               ; preds = %2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %81
  store i32 0, i32* %3, align 4
  br label %90

89:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88, %80, %79, %66, %36
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
