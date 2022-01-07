; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_ws2812.c_set_led_color_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_ws2812.c_set_led_color_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@txbuf = common dso_local global i32* null, align 8
@BYTES_FOR_LED = common dso_local global i32 0, align 4
@BYTES_FOR_LED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_led_color_rgb(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %11, align 4
  %12 = bitcast %struct.TYPE_3__* %4 to i8*
  %13 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_protocol_eq(i32 %19, i32 %20)
  %22 = load i32*, i32** @txbuf, align 8
  %23 = load i32, i32* @BYTES_FOR_LED, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  store i32 %21, i32* %29, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @get_protocol_eq(i32 %39, i32 %40)
  %42 = load i32*, i32** @txbuf, align 8
  %43 = load i32, i32* @BYTES_FOR_LED, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @BYTES_FOR_LED_BYTE, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  store i32 %41, i32* %51, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @get_protocol_eq(i32 %61, i32 %62)
  %64 = load i32*, i32** @txbuf, align 8
  %65 = load i32, i32* @BYTES_FOR_LED, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* @BYTES_FOR_LED_BYTE, align 4
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %64, i64 %73
  store i32 %63, i32* %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %56

78:                                               ; preds = %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_protocol_eq(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
