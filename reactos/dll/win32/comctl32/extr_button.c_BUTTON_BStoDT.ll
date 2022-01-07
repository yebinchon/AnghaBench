; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_button.c_BUTTON_BStoDT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_button.c_BUTTON_BStoDT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_NOCLIP = common dso_local global i32 0, align 4
@BS_PUSHLIKE = common dso_local global i32 0, align 4
@BS_TYPEMASK = common dso_local global i32 0, align 4
@BS_MULTILINE = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@DT_RIGHT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@BS_DEFPUSHBUTTON = common dso_local global i64 0, align 8
@WS_EX_RIGHT = common dso_local global i32 0, align 4
@DT_LEFT = common dso_local global i32 0, align 4
@BS_GROUPBOX = common dso_local global i64 0, align 8
@DT_BOTTOM = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @BUTTON_BStoDT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BUTTON_BStoDT(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DT_NOCLIP, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @BS_PUSHLIKE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @BS_TYPEMASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BS_MULTILINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @DT_SINGLELINE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @DT_WORDBREAK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 132
  switch i32 %31, label %41 [
    i32 131, label %32
    i32 130, label %33
    i32 132, label %37
  ]

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29
  %34 = load i32, i32* @DT_RIGHT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i32, i32* @DT_CENTER, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @get_button_type(i32 %42)
  %44 = load i64, i64* @BS_DEFPUSHBUTTON, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @DT_CENTER, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %37, %33, %32
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @WS_EX_RIGHT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* @DT_RIGHT, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DT_LEFT, align 4
  %60 = load i32, i32* @DT_CENTER, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = or i32 %57, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %56, %51
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @get_button_type(i32 %66)
  %68 = load i64, i64* @BS_GROUPBOX, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 128
  switch i32 %72, label %79 [
    i32 129, label %73
    i32 133, label %74
    i32 128, label %78
  ]

73:                                               ; preds = %70
  br label %83

74:                                               ; preds = %70
  %75 = load i32, i32* @DT_BOTTOM, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %70, %78
  %80 = load i32, i32* @DT_VCENTER, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74, %73
  br label %88

84:                                               ; preds = %65
  %85 = load i32, i32* @DT_SINGLELINE, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %83
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @get_button_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
