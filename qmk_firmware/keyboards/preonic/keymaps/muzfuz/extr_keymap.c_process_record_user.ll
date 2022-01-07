; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/muzfuz/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/muzfuz/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4

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
    i32 132, label %16
    i32 129, label %25
    i32 130, label %35
    i32 128, label %56
    i32 133, label %77
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @_QWERTY, align 4
  %33 = call i32 @set_single_persistent_default_layer(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %91

35:                                               ; preds = %2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @_LOWER, align 4
  %43 = call i32 @layer_on(i32 %42)
  %44 = load i32, i32* @_LOWER, align 4
  %45 = load i32, i32* @_RAISE, align 4
  %46 = load i32, i32* @_ADJUST, align 4
  %47 = call i32 @update_tri_layer(i32 %44, i32 %45, i32 %46)
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @_LOWER, align 4
  %50 = call i32 @layer_off(i32 %49)
  %51 = load i32, i32* @_LOWER, align 4
  %52 = load i32, i32* @_RAISE, align 4
  %53 = load i32, i32* @_ADJUST, align 4
  %54 = call i32 @update_tri_layer(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  store i32 0, i32* %3, align 4
  br label %91

56:                                               ; preds = %2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @_RAISE, align 4
  %64 = call i32 @layer_on(i32 %63)
  %65 = load i32, i32* @_LOWER, align 4
  %66 = load i32, i32* @_RAISE, align 4
  %67 = load i32, i32* @_ADJUST, align 4
  %68 = call i32 @update_tri_layer(i32 %65, i32 %66, i32 %67)
  br label %76

69:                                               ; preds = %56
  %70 = load i32, i32* @_RAISE, align 4
  %71 = call i32 @layer_off(i32 %70)
  %72 = load i32, i32* @_LOWER, align 4
  %73 = load i32, i32* @_RAISE, align 4
  %74 = load i32, i32* @_ADJUST, align 4
  %75 = call i32 @update_tri_layer(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %62
  store i32 0, i32* %3, align 4
  br label %91

77:                                               ; preds = %2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @KC_RSFT, align 4
  %85 = call i32 @register_code(i32 %84)
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @KC_RSFT, align 4
  %88 = call i32 @unregister_code(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %3, align 4
  br label %91

90:                                               ; preds = %2, %24, %15
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %76, %55, %34
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
