; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_process_unicode_common.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_process_unicode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@UC_OSX = common dso_local global i32 0, align 4
@UC_LNX = common dso_local global i32 0, align 4
@UC_WIN = common dso_local global i32 0, align 4
@UC_BSD = common dso_local global i32 0, align 4
@UC_WINC = common dso_local global i32 0, align 4
@UNICODE_SONG_BSD = common dso_local global float** null, align 8
@UNICODE_SONG_LNX = common dso_local global float** null, align 8
@UNICODE_SONG_OSX = common dso_local global float** null, align 8
@UNICODE_SONG_WIN = common dso_local global float** null, align 8
@UNICODE_SONG_WINC = common dso_local global float** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_unicode_common(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %31 [
    i32 133, label %12
    i32 130, label %14
    i32 131, label %16
    i32 132, label %19
    i32 129, label %22
    i32 134, label %25
    i32 128, label %28
  ]

12:                                               ; preds = %10
  %13 = call i32 @cycle_unicode_input_mode(i32 1)
  br label %31

14:                                               ; preds = %10
  %15 = call i32 @cycle_unicode_input_mode(i32 -1)
  br label %31

16:                                               ; preds = %10
  %17 = load i32, i32* @UC_OSX, align 4
  %18 = call i32 @set_unicode_input_mode(i32 %17)
  br label %31

19:                                               ; preds = %10
  %20 = load i32, i32* @UC_LNX, align 4
  %21 = call i32 @set_unicode_input_mode(i32 %20)
  br label %31

22:                                               ; preds = %10
  %23 = load i32, i32* @UC_WIN, align 4
  %24 = call i32 @set_unicode_input_mode(i32 %23)
  br label %31

25:                                               ; preds = %10
  %26 = load i32, i32* @UC_BSD, align 4
  %27 = call i32 @set_unicode_input_mode(i32 %26)
  br label %31

28:                                               ; preds = %10
  %29 = load i32, i32* @UC_WINC, align 4
  %30 = call i32 @set_unicode_input_mode(i32 %29)
  br label %31

31:                                               ; preds = %10, %28, %25, %22, %19, %16, %14, %12
  br label %32

32:                                               ; preds = %31, %2
  ret i32 1
}

declare dso_local i32 @cycle_unicode_input_mode(i32) #1

declare dso_local i32 @set_unicode_input_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
