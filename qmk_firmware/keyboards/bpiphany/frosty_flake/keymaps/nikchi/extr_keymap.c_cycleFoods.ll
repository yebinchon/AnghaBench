; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/frosty_flake/keymaps/nikchi/extr_keymap.c_cycleFoods.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/frosty_flake/keymaps/nikchi/extr_keymap.c_cycleFoods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@unicode_map = common dso_local global i32* null, align 8
@FOODS = common dso_local global i64 0, align 8
@KC_BSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cycleFoods(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = call i32 (...) @unicode_input_start()
  %11 = load i32*, i32** @unicode_map, align 8
  %12 = load i64, i64* @FOODS, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i64 @pgm_read_dword(i32* %13)
  %15 = call i32 @register_hex32(i64 %14)
  %16 = call i32 (...) @unicode_input_finish()
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 87
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* @KC_BSPC, align 4
  %24 = call i32 @tap(i32 %23)
  %25 = call i32 (...) @unicode_input_start()
  %26 = load i32*, i32** @unicode_map, align 8
  %27 = load i64, i64* @FOODS, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i64 @pgm_read_dword(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = call i32 @register_hex32(i64 %34)
  %36 = call i32 (...) @unicode_input_finish()
  br label %37

37:                                               ; preds = %22, %17
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @unicode_input_start(...) #1

declare dso_local i32 @register_hex32(i64) #1

declare dso_local i64 @pgm_read_dword(i32*) #1

declare dso_local i32 @unicode_input_finish(...) #1

declare dso_local i32 @tap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
