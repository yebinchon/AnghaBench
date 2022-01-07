; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_set_color.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_set_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@DRIVER_LED_TOTAL = common dso_local global i32 0, align 4
@g_is31_leds = common dso_local global %struct.TYPE_3__* null, align 8
@g_pwm_buffer = common dso_local global i32** null, align 8
@g_pwm_buffer_update_required = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3731_set_color(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DRIVER_LED_TOTAL, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_is31_leds, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = bitcast %struct.TYPE_3__* %9 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load i32, i32* %6, align 4
  %24 = load i32**, i32*** @g_pwm_buffer, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 36
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32 %23, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32**, i32*** @g_pwm_buffer, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 36
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32 %34, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32**, i32*** @g_pwm_buffer, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 36
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 %45, i32* %55, align 4
  %56 = load i32*, i32** @g_pwm_buffer_update_required, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %16, %12, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
