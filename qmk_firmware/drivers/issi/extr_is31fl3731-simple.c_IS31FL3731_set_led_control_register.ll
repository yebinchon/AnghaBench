; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731-simple.c_IS31FL3731_set_led_control_register.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731-simple.c_IS31FL3731_set_led_control_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@g_is31_leds = common dso_local global %struct.TYPE_3__* null, align 8
@g_led_control_registers = common dso_local global i32** null, align 8
@g_led_control_registers_update_required = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3731_set_led_control_register(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_is31_leds, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  %11 = bitcast %struct.TYPE_3__* %5 to i8*
  %12 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 36
  %16 = sdiv i32 %15, 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 36
  %21 = srem i32 %20, 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = load i32**, i32*** @g_led_control_registers, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %28
  store i32 %37, i32* %35, align 4
  br label %52

38:                                               ; preds = %2
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load i32**, i32*** @g_led_control_registers, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %42
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %38, %25
  store i32 1, i32* @g_led_control_registers_update_required, align 4
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
