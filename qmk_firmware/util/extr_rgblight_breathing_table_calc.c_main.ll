; ModuleID = '/home/carl/AnghaBench/qmk_firmware/util/extr_rgblight_breathing_table_calc.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/util/extr_rgblight_breathing_table_calc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@RGBLIGHT_EFFECT_BREATHE_CENTER = common dso_local global i32 0, align 4
@M_E = common dso_local global i32 0, align 4
@RGBLIGHT_EFFECT_BREATHE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"#ifndef RGBLIGHT_EFFECT_BREATHE_TABLE\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"#define RGBLIGHT_EFFECT_BREATHE_TABLE\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"const uint8_t rgblight_effect_breathe_table[] PROGMEM = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"  /* #define RGBLIGHT_EFFECT_BREATHE_CENTER   %.2f */\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"  /* #define RGBLIGHT_EFFECT_BREATHE_MAX      %d */\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0A #if RGBLIGHT_BREATHE_TABLE_SIZE == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"  0x%x%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" #endif /* %d bytes table */\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"\0Astatic const int table_scale = 256/sizeof(rgblight_effect_breathe_table);\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\0A#endif /* RGBLIGHT_EFFECT_BREATHE_TABLE */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %34, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 2.550000e+02
  %14 = load i32, i32* @M_PI, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %13, %15
  %17 = fptosi double %16 to i32
  %18 = call i32 @sin(i32 %17)
  %19 = call i32 @exp(i32 %18)
  %20 = load i32, i32* @RGBLIGHT_EFFECT_BREATHE_CENTER, align 4
  %21 = load i32, i32* @M_E, align 4
  %22 = sdiv i32 %20, %21
  %23 = sub nsw i32 %19, %22
  %24 = load i32, i32* @RGBLIGHT_EFFECT_BREATHE_MAX, align 4
  %25 = load i32, i32* @M_E, align 4
  %26 = load i32, i32* @M_E, align 4
  %27 = sdiv i32 1, %26
  %28 = sub nsw i32 %25, %27
  %29 = sdiv i32 %24, %28
  %30 = mul nsw i32 %23, %29
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %10
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %7

37:                                               ; preds = %7
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @RGBLIGHT_EFFECT_BREATHE_CENTER, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @RGBLIGHT_EFFECT_BREATHE_MAX, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i32 0, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 1, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %101, %37
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %106

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 128, i32 64
  br label %59

59:                                               ; preds = %54, %53
  %60 = phi i32 [ 256, %53 ], [ %58, %54 ]
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %85, %59
  %63 = load i32, i32* %2, align 4
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = icmp sge i32 %72, 256
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %69, i8* %75)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %77, %78
  %80 = srem i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %2, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 128, i32 64
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi i32 [ 256, %92 ], [ %97, %93 ]
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 1, %104
  store i32 %105, i32* %6, align 4
  br label %47

106:                                              ; preds = %47
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @exp(i32) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
