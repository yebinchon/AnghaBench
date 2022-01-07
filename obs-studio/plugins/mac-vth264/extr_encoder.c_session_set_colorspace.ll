; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_session_set_colorspace.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_session_set_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kVTCompressionPropertyKey_ColorPrimaries = common dso_local global i32 0, align 4
@kCVImageBufferColorPrimaries_ITU_R_709_2 = common dso_local global i32* null, align 8
@kVTCompressionPropertyKey_TransferFunction = common dso_local global i32 0, align 4
@kCVImageBufferTransferFunction_ITU_R_709_2 = common dso_local global i32* null, align 8
@kVTCompressionPropertyKey_YCbCrMatrix = common dso_local global i32 0, align 4
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @session_set_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_set_colorspace(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32* @obs_to_vt_colorspace(i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @kVTCompressionPropertyKey_ColorPrimaries, align 4
  %14 = load i32*, i32** @kCVImageBufferColorPrimaries_ITU_R_709_2, align 8
  %15 = call i32 @session_set_prop(i32 %12, i32 %13, i32* %14)
  %16 = call i32 @SESSION_CHECK(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @kVTCompressionPropertyKey_TransferFunction, align 4
  %19 = load i32*, i32** @kCVImageBufferTransferFunction_ITU_R_709_2, align 8
  %20 = call i32 @session_set_prop(i32 %17, i32 %18, i32* %19)
  %21 = call i32 @SESSION_CHECK(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @kVTCompressionPropertyKey_YCbCrMatrix, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @session_set_prop(i32 %22, i32 %23, i32* %24)
  %26 = call i32 @SESSION_CHECK(i32 %25)
  br label %27

27:                                               ; preds = %11, %2
  %28 = load i32, i32* @noErr, align 4
  ret i32 %28
}

declare dso_local i32* @obs_to_vt_colorspace(i32) #1

declare dso_local i32 @SESSION_CHECK(i32) #1

declare dso_local i32 @session_set_prop(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
