; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/pinky/4/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/pinky/4/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@_QWERTY = common dso_local global i32 0, align 4
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
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %79 [
    i32 129, label %14
    i32 130, label %24
    i32 128, label %45
    i32 131, label %66
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @_QWERTY, align 4
  %22 = call i32 @set_single_persistent_default_layer(i32 %21)
  br label %23

23:                                               ; preds = %20, %14
  store i32 0, i32* %3, align 4
  br label %80

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @_LOWER, align 4
  %32 = call i32 @layer_on(i32 %31)
  %33 = load i32, i32* @_LOWER, align 4
  %34 = load i32, i32* @_RAISE, align 4
  %35 = load i32, i32* @_ADJUST, align 4
  %36 = call i32 @update_tri_layer(i32 %33, i32 %34, i32 %35)
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @_LOWER, align 4
  %39 = call i32 @layer_off(i32 %38)
  %40 = load i32, i32* @_LOWER, align 4
  %41 = load i32, i32* @_RAISE, align 4
  %42 = load i32, i32* @_ADJUST, align 4
  %43 = call i32 @update_tri_layer(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %3, align 4
  br label %80

45:                                               ; preds = %12
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @_RAISE, align 4
  %53 = call i32 @layer_on(i32 %52)
  %54 = load i32, i32* @_LOWER, align 4
  %55 = load i32, i32* @_RAISE, align 4
  %56 = load i32, i32* @_ADJUST, align 4
  %57 = call i32 @update_tri_layer(i32 %54, i32 %55, i32 %56)
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* @_RAISE, align 4
  %60 = call i32 @layer_off(i32 %59)
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  store i32 0, i32* %3, align 4
  br label %80

66:                                               ; preds = %12
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @_ADJUST, align 4
  %74 = call i32 @layer_on(i32 %73)
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @_ADJUST, align 4
  %77 = call i32 @layer_off(i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %3, align 4
  br label %80

79:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78, %65, %44, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
