; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_convert_ca_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_convert_ca_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kAudioFormatFlagIsNonInterleaved = common dso_local global i32 0, align 4
@kAudioFormatFlagIsFloat = common dso_local global i32 0, align 4
@AUDIO_FORMAT_FLOAT_PLANAR = common dso_local global i32 0, align 4
@AUDIO_FORMAT_FLOAT = common dso_local global i32 0, align 4
@kAudioFormatFlagIsSignedInteger = common dso_local global i32 0, align 4
@AUDIO_FORMAT_U8BIT_PLANAR = common dso_local global i32 0, align 4
@AUDIO_FORMAT_U8BIT = common dso_local global i32 0, align 4
@AUDIO_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@AUDIO_FORMAT_16BIT_PLANAR = common dso_local global i32 0, align 4
@AUDIO_FORMAT_16BIT = common dso_local global i32 0, align 4
@AUDIO_FORMAT_32BIT_PLANAR = common dso_local global i32 0, align 4
@AUDIO_FORMAT_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @convert_ca_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_ca_format(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @kAudioFormatFlagIsNonInterleaved, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @kAudioFormatFlagIsFloat, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @AUDIO_FORMAT_FLOAT_PLANAR, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @AUDIO_FORMAT_FLOAT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @kAudioFormatFlagIsSignedInteger, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @AUDIO_FORMAT_U8BIT_PLANAR, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @AUDIO_FORMAT_U8BIT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %30, %25
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @kAudioFormatFlagIsSignedInteger, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @AUDIO_FORMAT_UNKNOWN, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @AUDIO_FORMAT_16BIT_PLANAR, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @AUDIO_FORMAT_16BIT, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %3, align 4
  br label %76

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @AUDIO_FORMAT_32BIT_PLANAR, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @AUDIO_FORMAT_UNKNOWN, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71, %59, %47, %40, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
