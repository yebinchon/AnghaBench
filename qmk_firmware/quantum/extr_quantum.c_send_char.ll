; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_char.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ascii_to_keycode_lut = common dso_local global i32* null, align 8
@ascii_to_shift_lut = common dso_local global i32* null, align 8
@ascii_to_altgr_lut = common dso_local global i32* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %6 = load i32*, i32** @ascii_to_keycode_lut, align 8
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = call i8* @pgm_read_byte(i32* %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i32*, i32** @ascii_to_shift_lut, align 8
  %13 = load i8, i8* %2, align 1
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i8* @pgm_read_byte(i32* %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** @ascii_to_altgr_lut, align 8
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i8* @pgm_read_byte(i32* %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @KC_LSFT, align 4
  %28 = call i32 @register_code(i32 %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @KC_RALT, align 4
  %34 = call i32 @register_code(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @tap_code(i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @KC_RALT, align 4
  %42 = call i32 @unregister_code(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @KC_LSFT, align 4
  %48 = call i32 @unregister_code(i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local i8* @pgm_read_byte(i32*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @tap_code(i64) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
