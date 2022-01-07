; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/rorschach/keymaps/insertsnideremarks/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/rorschach/keymaps/insertsnideremarks/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_COLEMAK = common dso_local global i64 0, align 8
@_QWERTY = common dso_local global i64 0, align 8
@_NUMBERS = common dso_local global i64 0, align 8
@_NUMBERS2 = common dso_local global i64 0, align 8
@_FUNCTION = common dso_local global i64 0, align 8
@_FUNCTION2 = common dso_local global i64 0, align 8
@_NUMPAD = common dso_local global i64 0, align 8
@_ADJUST = common dso_local global i64 0, align 8
@_ADJUST2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %61 [
    i32 129, label %7
    i32 128, label %34
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load i64, i64* @_COLEMAK, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @default_layer_set(i64 %15)
  %17 = load i64, i64* @_QWERTY, align 8
  %18 = call i32 @layer_off(i64 %17)
  %19 = load i64, i64* @_NUMBERS, align 8
  %20 = call i32 @layer_off(i64 %19)
  %21 = load i64, i64* @_NUMBERS2, align 8
  %22 = call i32 @layer_off(i64 %21)
  %23 = load i64, i64* @_FUNCTION, align 8
  %24 = call i32 @layer_off(i64 %23)
  %25 = load i64, i64* @_FUNCTION2, align 8
  %26 = call i32 @layer_off(i64 %25)
  %27 = load i64, i64* @_NUMPAD, align 8
  %28 = call i32 @layer_off(i64 %27)
  %29 = load i64, i64* @_ADJUST, align 8
  %30 = call i32 @layer_off(i64 %29)
  %31 = load i64, i64* @_ADJUST2, align 8
  %32 = call i32 @layer_off(i64 %31)
  br label %33

33:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i64, i64* @_QWERTY, align 8
  %42 = shl i64 1, %41
  %43 = call i32 @default_layer_set(i64 %42)
  %44 = load i64, i64* @_COLEMAK, align 8
  %45 = call i32 @layer_off(i64 %44)
  %46 = load i64, i64* @_NUMBERS, align 8
  %47 = call i32 @layer_off(i64 %46)
  %48 = load i64, i64* @_NUMBERS2, align 8
  %49 = call i32 @layer_off(i64 %48)
  %50 = load i64, i64* @_FUNCTION, align 8
  %51 = call i32 @layer_off(i64 %50)
  %52 = load i64, i64* @_FUNCTION2, align 8
  %53 = call i32 @layer_off(i64 %52)
  %54 = load i64, i64* @_NUMPAD, align 8
  %55 = call i32 @layer_off(i64 %54)
  %56 = load i64, i64* @_ADJUST, align 8
  %57 = call i32 @layer_off(i64 %56)
  %58 = load i64, i64* @_ADJUST2, align 8
  %59 = call i32 @layer_off(i64 %58)
  br label %60

60:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @default_layer_set(i64) #1

declare dso_local i32 @layer_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
