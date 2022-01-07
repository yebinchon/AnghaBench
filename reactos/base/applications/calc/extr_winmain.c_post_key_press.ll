; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_post_key_press.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_post_key_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@calc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WC_BUTTON = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@BS_PUSHBUTTON = common dso_local global i64 0, align 8
@BS_DEFPUSHBUTTON = common dso_local global i64 0, align 8
@BS_OWNERDRAW = common dso_local global i64 0, align 8
@KEY_WAS_DOWN = common dso_local global i32 0, align 4
@BM_SETSTATE = common dso_local global i32 0, align 4
@KEY_IS_UP = common dso_local global i32 0, align 4
@BM_CLICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @post_key_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_key_press(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @IsWindowEnabled(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %20 = call i32 @SIZEOF(i32* %19)
  %21 = call i32 @GetClassName(i32 %17, i32* %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %80

24:                                               ; preds = %16
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* @WC_BUTTON, align 4
  %27 = call i32 @_tcscmp(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GWL_STYLE, align 4
  %32 = call i32 @GetWindowLongPtr(i32 %30, i32 %31)
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @BS_PUSHBUTTON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @BS_DEFPUSHBUTTON, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @BS_OWNERDRAW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42, %38, %29
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @KEY_WAS_DOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BM_SETSTATE, align 4
  %54 = call i32 @PostMessage(i32 %52, i32 %53, i32 1, i32 0)
  br label %68

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @KEY_IS_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BM_SETSTATE, align 4
  %63 = call i32 @PostMessage(i32 %61, i32 %62, i32 0, i32 0)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BM_CLICK, align 4
  %66 = call i32 @PostMessage(i32 %64, i32 %65, i32 0, i32 0)
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %51
  store i32 1, i32* %3, align 4
  br label %80

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @KEY_IS_UP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BM_CLICK, align 4
  %78 = call i32 @PostMessage(i32 %76, i32 %77, i32 0, i32 0)
  br label %79

79:                                               ; preds = %75, %70
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %68, %23, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @GetClassName(i32, i32*, i32) #1

declare dso_local i32 @SIZEOF(i32*) #1

declare dso_local i32 @_tcscmp(i32*, i32) #1

declare dso_local i32 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @PostMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
