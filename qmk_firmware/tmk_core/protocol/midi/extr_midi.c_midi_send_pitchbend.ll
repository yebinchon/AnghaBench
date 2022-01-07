; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_midi.c_midi_send_pitchbend.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_midi.c_midi_send_pitchbend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* }

@MIDI_PITCHBEND = common dso_local global i32 0, align 4
@MIDI_CHANMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midi_send_pitchbend(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 8191
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 16383, i32* %7, align 4
  br label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, -8192
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 8192
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %14
  br label %19

19:                                               ; preds = %18, %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32, i32)** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load i32, i32* @MIDI_PITCHBEND, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MIDI_CHANMASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 127
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 7
  %33 = and i32 %32, 127
  %34 = call i32 %22(%struct.TYPE_4__* %23, i32 3, i32 %28, i32 %30, i32 %33)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
