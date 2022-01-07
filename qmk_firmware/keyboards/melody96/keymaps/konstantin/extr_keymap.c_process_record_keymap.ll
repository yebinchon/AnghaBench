; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/melody96/keymaps/konstantin/extr_keymap.c_process_record_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/melody96/keymaps/konstantin/extr_keymap.c_process_record_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@cidx = common dso_local global i64 0, align 8
@cnum = common dso_local global i64 0, align 8
@colors = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_keymap(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %37 [
    i32 128, label %6
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load i64, i64* @cidx, align 8
  %14 = add i64 %13, 1
  %15 = load i64, i64* @cnum, align 8
  %16 = urem i64 %14, %15
  store i64 %16, i64* @cidx, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @colors, align 8
  %18 = load i64, i64* @cidx, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @colors, align 8
  %24 = load i64, i64* @cidx, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @colors, align 8
  %30 = load i64, i64* @cidx, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rgblight_sethsv(i32 %22, i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %12, %6
  br label %37

37:                                               ; preds = %2, %36
  ret i32 1
}

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
