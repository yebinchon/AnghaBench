; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bpruitt-goddard/extr_keymap.c_macro_tapdance_fn.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bpruitt-goddard/extr_keymap.c_macro_tapdance_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"macro_tap_dance_fn %d\0A\00", align 1
@is_macro1_recording = common dso_local global i32 0, align 4
@DYN_REC_STOP = common dso_local global i32 0, align 4
@current_layer_state = common dso_local global i32 0, align 4
@DYN_MACRO_PLAY1 = common dso_local global i32 0, align 4
@DYN_REC_START1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_tapdance_fn(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @is_macro1_recording, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @DYN_REC_STOP, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* @is_macro1_recording, align 4
  %15 = load i32, i32* @current_layer_state, align 4
  %16 = call i32 @layer_state_set_user(i32 %15)
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @DYN_MACRO_PLAY1, align 4
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @DYN_REC_START1, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* @is_macro1_recording, align 4
  %26 = load i32, i32* @current_layer_state, align 4
  %27 = call i32 @layer_state_set_user(i32 %26)
  br label %28

28:                                               ; preds = %24, %22
  br label %29

29:                                               ; preds = %28, %13
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @process_record_dynamic_macro(i32 %32, %struct.TYPE_8__* %6)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @process_record_dynamic_macro(i32 %36, %struct.TYPE_8__* %6)
  ret void
}

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @layer_state_set_user(i32) #1

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
