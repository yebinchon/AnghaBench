; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_backlight_set_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_backlight_set_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLED_NUM = common dso_local global i64 0, align 8
@Device_PCBRGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set_rgb([3 x i64]* %0) #0 {
  %2 = alloca [3 x i64]*, align 8
  %3 = alloca i64, align 8
  store [3 x i64]* %0, [3 x i64]** %2, align 8
  %4 = load i64, i64* @RGBLED_NUM, align 8
  %5 = call i32 (...) @cli()
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @RGBLED_NUM, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load [3 x i64]*, [3 x i64]** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 %12
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load [3 x i64]*, [3 x i64]** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 %17
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load [3 x i64]*, [3 x i64]** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 %22
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @Device_PCBRGB, align 4
  %27 = call i32 @send_color(i64 %15, i64 %20, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %10
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %6

31:                                               ; preds = %6
  %32 = call i32 (...) @sei()
  %33 = call i32 (...) @show()
  ret void
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @send_color(i64, i64, i64, i32) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @show(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
