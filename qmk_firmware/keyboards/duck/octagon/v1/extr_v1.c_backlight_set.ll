; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v1/extr_v1.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v1/extr_v1.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKLIGHT_ALPHA = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@BACKLIGHT_EXTRA = common dso_local global i32 0, align 4
@BACKLIGHT_MODNUM = common dso_local global i32 0, align 4
@BACKLIGHT_FROW = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@BACKLIGHT_RGBRED = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@BACKLIGHT_RGBGREEN = common dso_local global i32 0, align 4
@BACKLIGHT_RGBBLUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @BACKLIGHT_ALPHA, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @PORTB, align 4
  %9 = or i32 %8, 2
  store i32 %9, i32* @PORTB, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @PORTB, align 4
  %12 = and i32 %11, -3
  store i32 %12, i32* @PORTB, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @BACKLIGHT_EXTRA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @PORTB, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* @PORTB, align 4
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @PORTB, align 4
  %24 = and i32 %23, -5
  store i32 %24, i32* @PORTB, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @BACKLIGHT_MODNUM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @PORTB, align 4
  %33 = or i32 %32, 8
  store i32 %33, i32* @PORTB, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @PORTB, align 4
  %36 = and i32 %35, -9
  store i32 %36, i32* @PORTB, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @BACKLIGHT_FROW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @PORTE, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* @PORTE, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @PORTE, align 4
  %48 = and i32 %47, -65
  store i32 %48, i32* @PORTE, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @BACKLIGHT_RGBRED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @PORTD, align 4
  %57 = or i32 %56, 64
  store i32 %57, i32* @PORTD, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @PORTD, align 4
  %60 = and i32 %59, -65
  store i32 %60, i32* @PORTD, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ]
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @BACKLIGHT_RGBGREEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @PORTD, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* @PORTD, align 4
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @PORTD, align 4
  %72 = and i32 %71, -129
  store i32 %72, i32* @PORTD, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %72, %70 ]
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @BACKLIGHT_RGBBLUE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @PORTD, align 4
  %81 = or i32 %80, 16
  store i32 %81, i32* @PORTD, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @PORTD, align 4
  %84 = and i32 %83, -17
  store i32 %84, i32* @PORTD, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i32 [ %81, %79 ], [ %84, %82 ]
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
