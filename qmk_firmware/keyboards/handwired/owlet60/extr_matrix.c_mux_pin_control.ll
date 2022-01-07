; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_mux_pin_control.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_mux_pin_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@col_select_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @mux_pin_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mux_pin_control(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i32*, i32** @col_select_pins, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @setPinOutput(i32 %5)
  %7 = load i64*, i64** %2, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32*, i32** @col_select_pins, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writePinLow(i32 %14)
  br label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** @col_select_pins, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @writePinHigh(i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32*, i32** @col_select_pins, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @setPinOutput(i32 %24)
  %26 = load i64*, i64** %2, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32*, i32** @col_select_pins, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writePinLow(i32 %33)
  br label %40

35:                                               ; preds = %21
  %36 = load i32*, i32** @col_select_pins, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writePinHigh(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32*, i32** @col_select_pins, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @setPinOutput(i32 %43)
  %45 = load i64*, i64** %2, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32*, i32** @col_select_pins, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writePinLow(i32 %52)
  br label %59

54:                                               ; preds = %40
  %55 = load i32*, i32** @col_select_pins, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @writePinHigh(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @setPinOutput(i32) #1

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
