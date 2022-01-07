; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_backlight_set_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_backlight_set_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Device_PCBRGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set_rgb([3 x i32]* %0) #0 {
  %2 = alloca [3 x i32]*, align 8
  %3 = alloca i32, align 4
  store [3 x i32]* %0, [3 x i32]** %2, align 8
  %4 = call i32 (...) @cli()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 17
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load [3 x i32]*, [3 x i32]** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 %11
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load [3 x i32]*, [3 x i32]** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 %17
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load [3 x i32]*, [3 x i32]** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 %23
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @Device_PCBRGB, align 4
  %28 = call i32 @send_color(i32 %14, i32 %20, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = call i32 (...) @sei()
  %34 = call i32 (...) @show()
  ret void
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @send_color(i32, i32, i32, i32) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @show(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
