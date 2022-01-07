; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_qmk_midi.c_usb_get_midi.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_qmk_midi.c_usb_get_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@UNDEFINED = common dso_local global i32 0, align 4
@SYSEX_START_OR_CONT = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_3 = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_2 = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @usb_get_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_get_midi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store i32* %0, i32** %2, align 8
  br label %6

6:                                                ; preds = %65, %1
  %7 = call i64 @recv_midi_packet(%struct.TYPE_3__* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @midi_packet_length(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @UNDEFINED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @SYSEX_START_OR_CONT, align 4
  %29 = call i64 @MIDI_EVENT(i32 0, i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SYSEX_ENDS_IN_3, align 4
  %35 = call i64 @MIDI_EVENT(i32 0, i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i32 3, i32* %4, align 4
  br label %55

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @SYSEX_ENDS_IN_2, align 4
  %42 = call i64 @MIDI_EVENT(i32 0, i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 2, i32* %4, align 4
  br label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @SYSEX_ENDS_IN_1, align 4
  %49 = call i64 @MIDI_EVENT(i32 0, i32 %48)
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %44
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %9
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @UNDEFINED, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %64 = call i32 @midi_device_input(i32* %61, i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %6

66:                                               ; preds = %6
  ret void
}

declare dso_local i64 @recv_midi_packet(%struct.TYPE_3__*) #1

declare dso_local i32 @midi_packet_length(i32) #1

declare dso_local i64 @MIDI_EVENT(i32, i32) #1

declare dso_local i32 @midi_device_input(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
