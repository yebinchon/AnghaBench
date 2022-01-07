; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/bluepill/extr_ws2812.c_set_led_color_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/bluepill/extr_ws2812.c_set_led_color_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@txbuf = common dso_local global i32* null, align 8
@PREAMBLE_SIZE = common dso_local global i32 0, align 4
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

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_protocol_eq(i32 %19, i32 %20)
  %22 = load i32*, i32** @txbuf, align 8
  %23 = load i32, i32* @PREAMBLE_SIZE, align 4
  %24 = load i32, i32* @BYTES_FOR_LED, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 %21, i32* %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @get_protocol_eq(i32 %41, i32 %42)
  %44 = load i32*, i32** @txbuf, align 8
  %45 = load i32, i32* @PREAMBLE_SIZE, align 4
  %46 = load i32, i32* @BYTES_FOR_LED, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* @BYTES_FOR_LED_BYTE, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %44, i64 %54
  store i32 %43, i32* %55, align 4
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %36

59:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @get_protocol_eq(i32 %65, i32 %66)
  %68 = load i32*, i32** @txbuf, align 8
  %69 = load i32, i32* @PREAMBLE_SIZE, align 4
  %70 = load i32, i32* @BYTES_FOR_LED, align 4
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* @BYTES_FOR_LED_BYTE, align 4
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %68, i64 %79
  store i32 %67, i32* %80, align 4
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %60

84:                                               ; preds = %60
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
