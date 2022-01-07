; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/lae3/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/lae3/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_ARROW = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %77 [
    i32 131, label %7
    i32 128, label %24
    i32 129, label %41
    i32 132, label %53
    i32 130, label %65
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_LOWER, align 4
  %15 = call i32 @layer_on(i32 %14)
  br label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @_LOWER, align 4
  %18 = call i32 @layer_off(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @_LOWER, align 4
  %21 = load i32, i32* @_RAISE, align 4
  %22 = load i32, i32* @_ADJUST, align 4
  %23 = call i32 @update_tri_layer(i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @_RAISE, align 4
  %32 = call i32 @layer_on(i32 %31)
  br label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @_RAISE, align 4
  %35 = call i32 @layer_off(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @_LOWER, align 4
  %38 = load i32, i32* @_RAISE, align 4
  %39 = load i32, i32* @_ADJUST, align 4
  %40 = call i32 @update_tri_layer(i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %78

41:                                               ; preds = %2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @_ARROW, align 4
  %49 = call i32 @layer_off(i32 %48)
  %50 = load i32, i32* @_NUMPAD, align 4
  %51 = call i32 @layer_off(i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  store i32 0, i32* %3, align 4
  br label %78

53:                                               ; preds = %2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @_NUMPAD, align 4
  %61 = call i32 @layer_off(i32 %60)
  %62 = load i32, i32* @_ARROW, align 4
  %63 = call i32 @layer_on(i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  store i32 0, i32* %3, align 4
  br label %78

65:                                               ; preds = %2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @_ARROW, align 4
  %73 = call i32 @layer_off(i32 %72)
  %74 = load i32, i32* @_NUMPAD, align 4
  %75 = call i32 @layer_on(i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %64, %52, %36, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
