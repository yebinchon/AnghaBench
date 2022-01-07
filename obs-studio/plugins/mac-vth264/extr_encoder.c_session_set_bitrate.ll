; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_session_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_session_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kVTCompressionPropertyKey_AverageBitRate = common dso_local global i32 0, align 4
@kCFNumberIntType = common dso_local global i32 0, align 4
@kCFNumberFloatType = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeArrayCallBacks = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_DataRateLimits = common dso_local global i32 0, align 4
@kVTPropertyNotSupportedErr = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"setting DataRateLimits on session\00", align 1
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, float)* @session_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_set_bitrate(i32 %0, i32 %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @kVTCompressionPropertyKey_AverageBitRate, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = call i32 @session_set_prop_int(i32 %17, i32 %18, i32 %20)
  %22 = call i32 @SESSION_CHECK(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 125
  %28 = sitofp i32 %27 to float
  %29 = load float, float* %11, align 4
  %30 = fmul float %28, %29
  store float %30, float* %13, align 4
  %31 = load i32, i32* @kCFNumberIntType, align 4
  %32 = call i32 @CFNumberCreate(i32* null, i32 %31, float* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @kCFNumberFloatType, align 4
  %34 = call i32 @CFNumberCreate(i32* null, i32 %33, float* %11)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @kCFAllocatorDefault, align 4
  %36 = call i32 @CFArrayCreateMutable(i32 %35, i32 2, i32* @kCFTypeArrayCallBacks)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @CFArrayAppendValue(i32 %37, i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @CFArrayAppendValue(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @kVTCompressionPropertyKey_DataRateLimits, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @session_set_prop(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @CFRelease(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @CFRelease(i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @CFRelease(i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @kVTPropertyNotSupportedErr, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %25
  %57 = load i32, i32* @LOG_WARNING, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @log_osstatus(i32 %57, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @noErr, align 4
  store i32 %60, i32* %6, align 4
  br label %64

61:                                               ; preds = %25
  br label %62

62:                                               ; preds = %61, %5
  %63 = load i32, i32* @noErr, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @SESSION_CHECK(i32) #1

declare dso_local i32 @session_set_prop_int(i32, i32, i32) #1

declare dso_local i32 @CFNumberCreate(i32*, i32, float*) #1

declare dso_local i32 @CFArrayCreateMutable(i32, i32, i32*) #1

declare dso_local i32 @CFArrayAppendValue(i32, i32) #1

declare dso_local i32 @session_set_prop(i32, i32, i32) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @log_osstatus(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
