; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_gui_mch_draw_part_cursor.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_gui_mch_draw_part_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@s_hdc = common dso_local global i32 0, align 4
@CURSOR_BAR_RIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_draw_part_cursor(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  %10 = call i64 @FILL_X(i64 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 8
  %13 = call i64 @FILL_Y(i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %15, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @CreateSolidBrush(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @s_hdc, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @FillRect(i32 %34, %struct.TYPE_4__* %8, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DeleteBrush(i32 %37)
  ret void
}

declare dso_local i64 @FILL_X(i64) #1

declare dso_local i64 @FILL_Y(i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @DeleteBrush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
