; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_qmk_midi.c_usb_send_func.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_qmk_midi.c_usb_send_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@UNDEFINED = common dso_local global i64 0, align 8
@SYSEX_END = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_3 = common dso_local global i32 0, align 4
@SYSEX_START_OR_CONT = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_2 = common dso_local global i32 0, align 4
@SYSEX_ENDS_IN_1 = common dso_local global i32 0, align 4
@SYS_COMMON_3 = common dso_local global i32 0, align 4
@SYS_COMMON_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @usb_send_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_send_func(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @midi_packet_length(i32 %19)
  %21 = load i64, i64* @UNDEFINED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %70 [
    i32 3, label %25
    i32 2, label %40
    i32 1, label %55
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SYSEX_END, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @SYSEX_ENDS_IN_3, align 4
  %32 = call i8* @MIDI_EVENT(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @SYSEX_START_OR_CONT, align 4
  %37 = call i8* @MIDI_EVENT(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  br label %71

40:                                               ; preds = %23
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SYSEX_END, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @SYSEX_ENDS_IN_2, align 4
  %47 = call i8* @MIDI_EVENT(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SYSEX_START_OR_CONT, align 4
  %52 = call i8* @MIDI_EVENT(i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  br label %71

55:                                               ; preds = %23
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SYSEX_END, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @SYSEX_ENDS_IN_1, align 4
  %62 = call i8* @MIDI_EVENT(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SYSEX_START_OR_CONT, align 4
  %67 = call i8* @MIDI_EVENT(i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %71

70:                                               ; preds = %23
  br label %93

71:                                               ; preds = %69, %54, %39
  br label %91

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 240
  switch i32 %74, label %85 [
    i32 130, label %75
    i32 129, label %80
    i32 128, label %80
  ]

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @SYS_COMMON_3, align 4
  %78 = call i8* @MIDI_EVENT(i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %78, i8** %79, align 8
  br label %90

80:                                               ; preds = %72, %72
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @SYS_COMMON_2, align 4
  %83 = call i8* @MIDI_EVENT(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %83, i8** %84, align 8
  br label %90

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i8* @MIDI_EVENT(i32 %86, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %80, %75
  br label %91

91:                                               ; preds = %90, %71
  %92 = call i32 @send_midi_packet(%struct.TYPE_3__* %11)
  br label %93

93:                                               ; preds = %91, %70
  ret void
}

declare dso_local i64 @midi_packet_length(i32) #1

declare dso_local i8* @MIDI_EVENT(i32, i32) #1

declare dso_local i32 @send_midi_packet(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
