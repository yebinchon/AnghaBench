; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/krusli/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/krusli/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_NUMPAD = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %106 [
    i32 129, label %7
    i32 130, label %18
    i32 133, label %29
    i32 132, label %40
    i32 131, label %51
    i32 128, label %72
    i32 134, label %93
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @_NUMPAD, align 8
  %26 = shl i64 1, %25
  %27 = call i32 @persistent_default_layer_set(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @_COLEMAK, align 8
  %37 = shl i64 1, %36
  %38 = call i32 @persistent_default_layer_set(i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %107

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @_DVORAK, align 8
  %48 = shl i64 1, %47
  %49 = call i32 @persistent_default_layer_set(i64 %48)
  br label %50

50:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %107

51:                                               ; preds = %2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @_LOWER, align 4
  %59 = call i32 @layer_on(i32 %58)
  %60 = load i32, i32* @_LOWER, align 4
  %61 = load i32, i32* @_RAISE, align 4
  %62 = load i32, i32* @_ADJUST, align 4
  %63 = call i32 @update_tri_layer(i32 %60, i32 %61, i32 %62)
  br label %71

64:                                               ; preds = %51
  %65 = load i32, i32* @_LOWER, align 4
  %66 = call i32 @layer_off(i32 %65)
  %67 = load i32, i32* @_LOWER, align 4
  %68 = load i32, i32* @_RAISE, align 4
  %69 = load i32, i32* @_ADJUST, align 4
  %70 = call i32 @update_tri_layer(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %57
  store i32 0, i32* %3, align 4
  br label %107

72:                                               ; preds = %2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* @_RAISE, align 4
  %80 = call i32 @layer_on(i32 %79)
  %81 = load i32, i32* @_LOWER, align 4
  %82 = load i32, i32* @_RAISE, align 4
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @update_tri_layer(i32 %81, i32 %82, i32 %83)
  br label %92

85:                                               ; preds = %72
  %86 = load i32, i32* @_RAISE, align 4
  %87 = call i32 @layer_off(i32 %86)
  %88 = load i32, i32* @_LOWER, align 4
  %89 = load i32, i32* @_RAISE, align 4
  %90 = load i32, i32* @_ADJUST, align 4
  %91 = call i32 @update_tri_layer(i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %78
  store i32 0, i32* %3, align 4
  br label %107

93:                                               ; preds = %2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @_ADJUST, align 4
  %101 = call i32 @layer_on(i32 %100)
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @_ADJUST, align 4
  %104 = call i32 @layer_off(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %3, align 4
  br label %107

106:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %105, %92, %71, %50, %39, %28, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
