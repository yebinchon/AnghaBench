; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_EVENT_USB_Device_Connect.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_EVENT_USB_Device_Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"[C]\00", align 1
@USB_IsInitialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EVENT_USB_Device_Connect() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @USB_IsInitialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @USB_Disable()
  %6 = call i32 (...) @USB_Init()
  %7 = call i32 (...) @USB_Device_EnableSOFEvents()
  br label %8

8:                                                ; preds = %4, %0
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @USB_Disable(...) #1

declare dso_local i32 @USB_Init(...) #1

declare dso_local i32 @USB_Device_EnableSOFEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
