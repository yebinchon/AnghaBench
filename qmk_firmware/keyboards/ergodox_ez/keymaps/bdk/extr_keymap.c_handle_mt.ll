; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bdk/extr_keymap.c_handle_mt.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bdk/extr_keymap.c_handle_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_start_info = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@tap_start_infos = common dso_local global %struct.tap_start_info* null, align 8
@press_counter = common dso_local global i64 0, align 8
@ONESHOT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32, i32)* @handle_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mt(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tap_start_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tap_start_info*, %struct.tap_start_info** @tap_start_infos, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.tap_start_info, %struct.tap_start_info* %10, i64 %12
  store %struct.tap_start_info* %13, %struct.tap_start_info** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @register_mods(i32 %20)
  %22 = call i32 (...) @timer_read()
  %23 = load %struct.tap_start_info*, %struct.tap_start_info** %9, align 8
  %24 = getelementptr inbounds %struct.tap_start_info, %struct.tap_start_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @press_counter, align 8
  %26 = load %struct.tap_start_info*, %struct.tap_start_info** %9, align 8
  %27 = getelementptr inbounds %struct.tap_start_info, %struct.tap_start_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %49

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @unregister_mods(i32 %29)
  %31 = load i64, i64* @press_counter, align 8
  %32 = load %struct.tap_start_info*, %struct.tap_start_info** %9, align 8
  %33 = getelementptr inbounds %struct.tap_start_info, %struct.tap_start_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.tap_start_info*, %struct.tap_start_info** %9, align 8
  %38 = getelementptr inbounds %struct.tap_start_info, %struct.tap_start_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @timer_elapsed(i32 %39)
  %41 = load i64, i64* @ONESHOT_TIMEOUT, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @register_code16(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @unregister_code16(i32 %46)
  br label %48

48:                                               ; preds = %43, %36, %28
  br label %49

49:                                               ; preds = %48, %19
  ret i32 0
}

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @register_code16(i32) #1

declare dso_local i32 @unregister_code16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
