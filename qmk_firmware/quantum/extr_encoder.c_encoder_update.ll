; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_update.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoder_LUT = common dso_local global i64* null, align 8
@encoder_pulses = common dso_local global i32* null, align 8
@ENCODER_RESOLUTION = common dso_local global i32 0, align 4
@encoder_value = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @encoder_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoder_update(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64*, i64** @encoder_LUT, align 8
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load i32*, i32** @encoder_pulses, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %10
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** @encoder_pulses, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ENCODER_RESOLUTION, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32*, i32** @encoder_value, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @encoder_update_kb(i64 %30, i32 1)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32*, i32** @encoder_pulses, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ENCODER_RESOLUTION, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32*, i32** @encoder_value, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @encoder_update_kb(i64 %46, i32 0)
  br label %48

48:                                               ; preds = %40, %32
  %49 = load i32, i32* @ENCODER_RESOLUTION, align 4
  %50 = load i32*, i32** @encoder_pulses, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, %49
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @encoder_update_kb(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
