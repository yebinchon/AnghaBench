; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/contra/keymaps/maxr1998/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/contra/keymaps/maxr1998/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@DE_SS = common dso_local global i32 0, align 4
@_NR = common dso_local global i32 0, align 4
@_NR_L3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %58 [
    i32 130, label %7
    i32 128, label %30
    i32 129, label %44
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = call i32 (...) @get_mods()
  %15 = load i32, i32* @KC_LSFT, align 4
  %16 = call i32 @MOD_BIT(i32 %15)
  %17 = load i32, i32* @KC_RSFT, align 4
  %18 = call i32 @MOD_BIT(i32 %17)
  %19 = or i32 %16, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @DE_SS, align 4
  %24 = call i32 @register_code(i32 %23)
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %13
  br label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @DE_SS, align 4
  %28 = call i32 @unregister_code(i32 %27)
  br label %29

29:                                               ; preds = %26, %25
  store i32 1, i32* %3, align 4
  br label %59

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @_NR, align 4
  %38 = call i32 @layer_on(i32 %37)
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @_NR, align 4
  %41 = call i32 @layer_off(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 (...) @update_tri_layer_user()
  store i32 0, i32* %3, align 4
  br label %59

44:                                               ; preds = %2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @_NR_L3, align 4
  %52 = call i32 @layer_on(i32 %51)
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @_NR_L3, align 4
  %55 = call i32 @layer_off(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = call i32 (...) @update_tri_layer_user()
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %42, %29, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
