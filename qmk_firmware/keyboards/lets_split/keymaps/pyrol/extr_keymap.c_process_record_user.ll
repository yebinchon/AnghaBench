; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/pyrol/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/pyrol/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_GAME = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %102 [
    i32 129, label %7
    i32 133, label %17
    i32 132, label %27
    i32 131, label %37
    i32 130, label %47
    i32 128, label %68
    i32 134, label %89
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %103

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @_DVORAK, align 4
  %35 = call i32 @set_single_persistent_default_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %103

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @_GAME, align 4
  %45 = call i32 @set_single_persistent_default_layer(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %103

47:                                               ; preds = %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @_LOWER, align 4
  %55 = call i32 @layer_on(i32 %54)
  %56 = load i32, i32* @_LOWER, align 4
  %57 = load i32, i32* @_RAISE, align 4
  %58 = load i32, i32* @_ADJUST, align 4
  %59 = call i32 @update_tri_layer(i32 %56, i32 %57, i32 %58)
  br label %67

60:                                               ; preds = %47
  %61 = load i32, i32* @_LOWER, align 4
  %62 = call i32 @layer_off(i32 %61)
  %63 = load i32, i32* @_LOWER, align 4
  %64 = load i32, i32* @_RAISE, align 4
  %65 = load i32, i32* @_ADJUST, align 4
  %66 = call i32 @update_tri_layer(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %53
  store i32 0, i32* %3, align 4
  br label %103

68:                                               ; preds = %2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @_RAISE, align 4
  %76 = call i32 @layer_on(i32 %75)
  %77 = load i32, i32* @_LOWER, align 4
  %78 = load i32, i32* @_RAISE, align 4
  %79 = load i32, i32* @_ADJUST, align 4
  %80 = call i32 @update_tri_layer(i32 %77, i32 %78, i32 %79)
  br label %88

81:                                               ; preds = %68
  %82 = load i32, i32* @_RAISE, align 4
  %83 = call i32 @layer_off(i32 %82)
  %84 = load i32, i32* @_LOWER, align 4
  %85 = load i32, i32* @_RAISE, align 4
  %86 = load i32, i32* @_ADJUST, align 4
  %87 = call i32 @update_tri_layer(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  store i32 0, i32* %3, align 4
  br label %103

89:                                               ; preds = %2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @_ADJUST, align 4
  %97 = call i32 @layer_on(i32 %96)
  br label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @_ADJUST, align 4
  %100 = call i32 @layer_off(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  store i32 0, i32* %3, align 4
  br label %103

102:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101, %88, %67, %46, %36, %26, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
