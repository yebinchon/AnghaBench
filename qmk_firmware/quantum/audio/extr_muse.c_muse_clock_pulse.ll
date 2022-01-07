; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_muse.c_muse_clock_pulse.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_muse.c_muse_clock_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@number_of_ones_to_bool = common dso_local global i32* null, align 8
@muse_theme = common dso_local global i32* null, align 8
@muse_timer_1bit = common dso_local global i32 0, align 4
@muse_timer_2bit_counter = common dso_local global i32 0, align 4
@muse_timer_2bit = common dso_local global i32 0, align 4
@muse_timer_4bit = common dso_local global i32 0, align 4
@muse_timer_31bit = common dso_local global i32 0, align 4
@muse_interval = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @muse_clock_pulse() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @number_of_ones_to_bool, align 8
  %3 = load i32*, i32** @muse_theme, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @bit_for_value(i32 %5)
  %7 = load i32*, i32** @muse_theme, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bit_for_value(i32 %9)
  %11 = shl i32 %10, 1
  %12 = add nsw i32 %6, %11
  %13 = load i32*, i32** @muse_theme, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bit_for_value(i32 %15)
  %17 = shl i32 %16, 2
  %18 = add nsw i32 %12, %17
  %19 = load i32*, i32** @muse_theme, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bit_for_value(i32 %21)
  %23 = shl i32 %22, 3
  %24 = add nsw i32 %18, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %2, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @muse_timer_1bit, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %0
  %31 = load i32, i32* @muse_timer_2bit_counter, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @muse_timer_2bit, align 4
  %35 = add nsw i32 %34, 1
  %36 = srem i32 %35, 4
  store i32 %36, i32* @muse_timer_2bit, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @muse_timer_2bit_counter, align 4
  %39 = add nsw i32 %38, 1
  %40 = srem i32 %39, 3
  store i32 %40, i32* @muse_timer_2bit_counter, align 4
  %41 = load i32, i32* @muse_timer_4bit, align 4
  %42 = add nsw i32 %41, 1
  %43 = srem i32 %42, 16
  store i32 %43, i32* @muse_timer_4bit, align 4
  %44 = load i32, i32* @muse_timer_31bit, align 4
  %45 = shl i32 %44, 1
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* @muse_timer_31bit, align 4
  br label %48

48:                                               ; preds = %37, %0
  %49 = load i32, i32* @muse_timer_1bit, align 4
  %50 = add nsw i32 %49, 1
  %51 = srem i32 %50, 2
  store i32 %51, i32* @muse_timer_1bit, align 4
  %52 = load i32*, i32** @muse_interval, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bit_for_value(i32 %54)
  %56 = load i32*, i32** @muse_interval, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bit_for_value(i32 %58)
  %60 = shl i32 %59, 1
  %61 = add nsw i32 %55, %60
  %62 = load i32*, i32** @muse_interval, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bit_for_value(i32 %64)
  %66 = shl i32 %65, 2
  %67 = add nsw i32 %61, %66
  %68 = load i32*, i32** @muse_interval, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bit_for_value(i32 %70)
  %72 = shl i32 %71, 3
  %73 = add nsw i32 %67, %72
  ret i32 %73
}

declare dso_local i32 @bit_for_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
