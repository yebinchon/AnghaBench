; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_pointing_device_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_pointing_device_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }

@lastCursor = common dso_local global i32 0, align 4
@cursorTimeout = common dso_local global i64 0, align 8
@xPin = common dso_local global i32 0, align 4
@xOrigin = common dso_local global i32 0, align 4
@maxCursorSpeed = common dso_local global i32 0, align 4
@xPolarity = common dso_local global i32 0, align 4
@yPin = common dso_local global i32 0, align 4
@yOrigin = common dso_local global i32 0, align 4
@yPolarity = common dso_local global i32 0, align 4
@swPin = common dso_local global i32 0, align 4
@MOUSE_BTN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointing_device_task() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  call void (%struct.TYPE_4__*, ...) @pointing_device_get_report(%struct.TYPE_4__* sret %1)
  %2 = load i32, i32* @lastCursor, align 4
  %3 = call i64 @timer_elapsed(i32 %2)
  %4 = load i64, i64* @cursorTimeout, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = call i32 (...) @timer_read()
  store i32 %7, i32* @lastCursor, align 4
  %8 = load i32, i32* @xPin, align 4
  %9 = load i32, i32* @xOrigin, align 4
  %10 = load i32, i32* @maxCursorSpeed, align 4
  %11 = load i32, i32* @xPolarity, align 4
  %12 = call i8* @axisToMouseComponent(i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @yPin, align 4
  %15 = load i32, i32* @yOrigin, align 4
  %16 = load i32, i32* @maxCursorSpeed, align 4
  %17 = load i32, i32* @yPolarity, align 4
  %18 = call i8* @axisToMouseComponent(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %6, %0
  %21 = load i32, i32* @swPin, align 4
  %22 = call i32 @readPin(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @MOUSE_BTN1, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load i32, i32* @MOUSE_BTN1, align 4
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = call i32 @pointing_device_set_report(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1)
  %37 = call i32 (...) @pointing_device_send()
  ret void
}

declare dso_local void @pointing_device_get_report(%struct.TYPE_4__* sret, ...) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i8* @axisToMouseComponent(i32, i32, i32, i32) #1

declare dso_local i32 @readPin(i32) #1

declare dso_local i32 @pointing_device_set_report(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @pointing_device_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
