; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/vlukash_trackpad_right/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/vlukash_trackpad_right/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@MOUSE_BTN1 = common dso_local global i32 0, align 4
@isScrollMode = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %100 [
    i32 132, label %10
    i32 134, label %21
    i32 131, label %42
    i32 129, label %63
    i32 130, label %64
    i32 133, label %65
    i32 128, label %91
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i64, i64* @_QWERTY, align 8
  %18 = shl i64 1, %17
  %19 = call i32 @persistent_default_layer_set(i64 %18)
  br label %20

20:                                               ; preds = %16, %10
  store i32 0, i32* %3, align 4
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @_LOWER, align 4
  %29 = call i32 @layer_on(i32 %28)
  %30 = load i32, i32* @_LOWER, align 4
  %31 = load i32, i32* @_RAISE, align 4
  %32 = load i32, i32* @_ADJUST, align 4
  %33 = call i32 @update_tri_layer_RGB(i32 %30, i32 %31, i32 %32)
  br label %41

34:                                               ; preds = %21
  %35 = load i32, i32* @_LOWER, align 4
  %36 = call i32 @layer_off(i32 %35)
  %37 = load i32, i32* @_LOWER, align 4
  %38 = load i32, i32* @_RAISE, align 4
  %39 = load i32, i32* @_ADJUST, align 4
  %40 = call i32 @update_tri_layer_RGB(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %101

42:                                               ; preds = %2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @_RAISE, align 4
  %50 = call i32 @layer_on(i32 %49)
  %51 = load i32, i32* @_LOWER, align 4
  %52 = load i32, i32* @_RAISE, align 4
  %53 = load i32, i32* @_ADJUST, align 4
  %54 = call i32 @update_tri_layer_RGB(i32 %51, i32 %52, i32 %53)
  br label %62

55:                                               ; preds = %42
  %56 = load i32, i32* @_RAISE, align 4
  %57 = call i32 @layer_off(i32 %56)
  %58 = load i32, i32* @_LOWER, align 4
  %59 = load i32, i32* @_RAISE, align 4
  %60 = load i32, i32* @_ADJUST, align 4
  %61 = call i32 @update_tri_layer_RGB(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %48
  store i32 0, i32* %3, align 4
  br label %101

63:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

64:                                               ; preds = %2
  br label %100

65:                                               ; preds = %2
  %66 = call i32 (...) @pointing_device_get_report()
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.TYPE_9__* %6 to i8*
  %69 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* @MOUSE_BTN1, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %86

80:                                               ; preds = %65
  %81 = load i32, i32* @MOUSE_BTN1, align 4
  %82 = xor i32 %81, -1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pointing_device_set_report(i32 %88)
  %90 = call i32 (...) @pointing_device_send()
  store i32 0, i32* %3, align 4
  br label %101

91:                                               ; preds = %2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* @isScrollMode, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* @isScrollMode, align 4
  br label %99

99:                                               ; preds = %98, %97
  store i32 0, i32* %3, align 4
  br label %101

100:                                              ; preds = %2, %64
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %99, %86, %63, %62, %41, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @persistent_default_layer_set(i64) #2

declare dso_local i32 @layer_on(i32) #2

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #2

declare dso_local i32 @layer_off(i32) #2

declare dso_local i32 @pointing_device_get_report(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pointing_device_set_report(i32) #2

declare dso_local i32 @pointing_device_send(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
