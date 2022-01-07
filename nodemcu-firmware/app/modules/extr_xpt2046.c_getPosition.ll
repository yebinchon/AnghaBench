; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_getPosition.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_getPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cal_dx = common dso_local global i32 0, align 4
@_cal_vj1 = common dso_local global i32 0, align 4
@_cal_dvj = common dso_local global i32 0, align 4
@CAL_MARGIN = common dso_local global i64 0, align 8
@_cal_dy = common dso_local global i32 0, align 4
@_cal_vi1 = common dso_local global i32 0, align 4
@_cal_dvi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @getPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getPosition(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i64 (...) @isTouching()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  store i32 65535, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 65535, i32* %11, align 4
  br label %49

12:                                               ; preds = %2
  %13 = call i32 @getRaw(i32* %5, i32* %6)
  %14 = load i32, i32* @_cal_dx, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @_cal_vj1, align 4
  %17 = sub nsw i32 %15, %16
  %18 = mul nsw i32 %14, %17
  %19 = load i32, i32* @_cal_dvj, align 4
  %20 = sdiv i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @CAL_MARGIN, align 8
  %23 = add nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %3, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 32767
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = load i32*, i32** %3, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %12
  %32 = load i32, i32* @_cal_dy, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @_cal_vi1, align 4
  %35 = sub nsw i32 %33, %34
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* @_cal_dvi, align 4
  %38 = sdiv i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @CAL_MARGIN, align 8
  %41 = add nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 32767
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %9, %47, %31
  ret void
}

declare dso_local i64 @isTouching(...) #1

declare dso_local i32 @getRaw(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
