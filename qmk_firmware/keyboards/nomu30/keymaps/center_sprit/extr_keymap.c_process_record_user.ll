; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/nomu30/keymaps/center_sprit/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/nomu30/keymaps/center_sprit/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@keymap_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %27 [
    i32 130, label %7
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keymap_config, i32 0, i32 0), align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @KC_LANG2, align 4
  %18 = call i32 @register_code(i32 %17)
  br label %22

19:                                               ; preds = %13
  %20 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @SEND_STRING(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @KC_LANG2, align 4
  %25 = call i32 @unregister_code(i32 %24)
  br label %26

26:                                               ; preds = %23, %22
  br label %28

27:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_LALT(i8*) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
