; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_play.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [44 x i8] c"dynamic macro: slot %d playback, length %d\0A\00", align 1
@dynamic_macros = common dso_local global %struct.TYPE_2__* null, align 8
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dynamic_macro_play(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dynamic_macros, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %5, i64 %10)
  %12 = load i32, i32* @layer_state, align 4
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @clear_keyboard()
  %14 = call i32 (...) @layer_clear()
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dynamic_macros, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dynamic_macros, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @process_record(i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %15

35:                                               ; preds = %15
  %36 = call i32 (...) @clear_keyboard()
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* @layer_state, align 4
  ret void
}

declare dso_local i32 @dprintf(i8*, i64, i64) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @layer_clear(...) #1

declare dso_local i32 @process_record(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
