; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/jyh2/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/jyh2/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

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
  br label %88

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %87 [
    i32 129, label %13
    i32 131, label %23
    i32 128, label %44
    i32 132, label %65
    i32 130, label %78
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @_QWERTY, align 4
  %21 = call i32 @set_single_persistent_default_layer(i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %88

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @_LOWER, align 4
  %31 = call i32 @layer_on(i32 %30)
  %32 = load i32, i32* @_LOWER, align 4
  %33 = load i32, i32* @_RAISE, align 4
  %34 = load i32, i32* @_ADJUST, align 4
  %35 = call i32 @update_tri_layer(i32 %32, i32 %33, i32 %34)
  br label %43

36:                                               ; preds = %23
  %37 = load i32, i32* @_LOWER, align 4
  %38 = call i32 @layer_off(i32 %37)
  %39 = load i32, i32* @_LOWER, align 4
  %40 = load i32, i32* @_RAISE, align 4
  %41 = load i32, i32* @_ADJUST, align 4
  %42 = call i32 @update_tri_layer(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  br label %88

44:                                               ; preds = %11
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @_RAISE, align 4
  %52 = call i32 @layer_on(i32 %51)
  %53 = load i32, i32* @_LOWER, align 4
  %54 = load i32, i32* @_RAISE, align 4
  %55 = load i32, i32* @_ADJUST, align 4
  %56 = call i32 @update_tri_layer(i32 %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %44
  %58 = load i32, i32* @_RAISE, align 4
  %59 = call i32 @layer_off(i32 %58)
  %60 = load i32, i32* @_LOWER, align 4
  %61 = load i32, i32* @_RAISE, align 4
  %62 = load i32, i32* @_ADJUST, align 4
  %63 = call i32 @update_tri_layer(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  store i32 0, i32* %3, align 4
  br label %88

65:                                               ; preds = %11
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @layer_on(i32 %72)
  br label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @_ADJUST, align 4
  %76 = call i32 @layer_off(i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* %3, align 4
  br label %88

78:                                               ; preds = %11
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (...) @make_it_pink_blue()
  br label %86

86:                                               ; preds = %84, %78
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %77, %64, %43, %22, %10
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @make_it_pink_blue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
