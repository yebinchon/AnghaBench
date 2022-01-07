; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_mouse.c_ps2_mouse_enable_scrolling.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_mouse.c_ps2_mouse_enable_scrolling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS2_MOUSE_SET_SAMPLE_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Initiaing scroll wheel enable: Set sample rate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Set sample rate\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@PS2_MOUSE_GET_DEVICE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Finished enabling scroll wheel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps2_mouse_enable_scrolling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2_mouse_enable_scrolling() #0 {
  %1 = load i32, i32* @PS2_MOUSE_SET_SAMPLE_RATE, align 4
  %2 = call i32 @PS2_MOUSE_SEND(i32 %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @PS2_MOUSE_SEND(i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @PS2_MOUSE_SET_SAMPLE_RATE, align 4
  %5 = call i32 @PS2_MOUSE_SEND(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @PS2_MOUSE_SEND(i32 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %7 = load i32, i32* @PS2_MOUSE_SET_SAMPLE_RATE, align 4
  %8 = call i32 @PS2_MOUSE_SEND(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @PS2_MOUSE_SEND(i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @PS2_MOUSE_GET_DEVICE_ID, align 4
  %11 = call i32 @PS2_MOUSE_SEND(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @_delay_ms(i32 20)
  ret void
}

declare dso_local i32 @PS2_MOUSE_SEND(i32, i8*) #1

declare dso_local i32 @_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
