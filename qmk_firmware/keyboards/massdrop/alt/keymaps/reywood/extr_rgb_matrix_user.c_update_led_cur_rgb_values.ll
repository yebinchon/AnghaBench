; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_update_led_cur_rgb_values.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_update_led_cur_rgb_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8**, i8**, i8** }

@led_cur = common dso_local global %struct.TYPE_4__* null, align 8
@UNDERGLOW_SCAN_CODE = common dso_local global i64 0, align 8
@UNDERGLOW_R = common dso_local global i8* null, align 8
@UNDERGLOW_G = common dso_local global i8* null, align 8
@UNDERGLOW_B = common dso_local global i8* null, align 8
@MAX_R = common dso_local global i32 0, align 4
@MIN_R = common dso_local global i32 0, align 4
@MAX_G = common dso_local global i32 0, align 4
@MIN_G = common dso_local global i32 0, align 4
@MAX_B = common dso_local global i32 0, align 4
@MIN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_led_cur_rgb_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_led_cur_rgb_values() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @UNDERGLOW_SCAN_CODE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i8*, i8** @UNDERGLOW_R, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i8**, i8*** %10, align 8
  store i8* %7, i8** %11, align 8
  %12 = load i8*, i8** @UNDERGLOW_G, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  store i8* %12, i8** %16, align 8
  %17 = load i8*, i8** @UNDERGLOW_B, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  store i8* %17, i8** %21, align 8
  br label %44

22:                                               ; preds = %0
  %23 = load i32, i32* @MAX_R, align 4
  %24 = load i32, i32* @MIN_R, align 4
  %25 = call i8* @calculate_new_color_component_value(i32 %23, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @MAX_G, align 4
  %31 = load i32, i32* @MIN_G, align 4
  %32 = call i8* @calculate_new_color_component_value(i32 %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* @MAX_B, align 4
  %38 = load i32, i32* @MIN_B, align 4
  %39 = call i8* @calculate_new_color_component_value(i32 %37, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_cur, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %22, %6
  ret void
}

declare dso_local i8* @calculate_new_color_component_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
