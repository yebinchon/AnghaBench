; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/fabian/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/fabian/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_COLEMAK = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = call i32 @process_record_dynamic_macro(i32 %6, %struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %88 [
    i32 131, label %13
    i32 129, label %23
    i32 130, label %33
    i32 128, label %54
    i32 132, label %75
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @_COLEMAK, align 4
  %21 = call i32 @set_single_persistent_default_layer(i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @_QWERTY, align 4
  %31 = call i32 @set_single_persistent_default_layer(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %89

33:                                               ; preds = %11
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @_LOWER, align 4
  %41 = call i32 @layer_on(i32 %40)
  %42 = load i32, i32* @_LOWER, align 4
  %43 = load i32, i32* @_RAISE, align 4
  %44 = load i32, i32* @_ADJUST, align 4
  %45 = call i32 @update_tri_layer(i32 %42, i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %33
  %47 = load i32, i32* @_LOWER, align 4
  %48 = call i32 @layer_off(i32 %47)
  %49 = load i32, i32* @_LOWER, align 4
  %50 = load i32, i32* @_RAISE, align 4
  %51 = load i32, i32* @_ADJUST, align 4
  %52 = call i32 @update_tri_layer(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  store i32 0, i32* %3, align 4
  br label %89

54:                                               ; preds = %11
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @_RAISE, align 4
  %62 = call i32 @layer_on(i32 %61)
  %63 = load i32, i32* @_LOWER, align 4
  %64 = load i32, i32* @_RAISE, align 4
  %65 = load i32, i32* @_ADJUST, align 4
  %66 = call i32 @update_tri_layer(i32 %63, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %54
  %68 = load i32, i32* @_RAISE, align 4
  %69 = call i32 @layer_off(i32 %68)
  %70 = load i32, i32* @_LOWER, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  store i32 0, i32* %3, align 4
  br label %89

75:                                               ; preds = %11
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @_ADJUST, align 4
  %83 = call i32 @layer_on(i32 %82)
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @_ADJUST, align 4
  %86 = call i32 @layer_off(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %89

88:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %74, %53, %32, %22, %10
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

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
