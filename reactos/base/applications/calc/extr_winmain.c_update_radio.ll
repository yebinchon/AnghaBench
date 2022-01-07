; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_update_radio.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_update_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IDR_MENU_SCIENTIFIC_1 = common dso_local global i32 0, align 4
@BITMASK_DEC_MASK = common dso_local global i32 0, align 4
@IDR_MENU_SCIENTIFIC_2 = common dso_local global i32 0, align 4
@BITMASK_HEX_MASK = common dso_local global i32 0, align 4
@BITMASK_OCT_MASK = common dso_local global i32 0, align 4
@BITMASK_BIN_MASK = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@radio_setup = common dso_local global %struct.TYPE_4__* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@IDC_RADIO_DEG = common dso_local global i32 0, align 4
@IDC_RADIO_GRAD = common dso_local global i32 0, align 4
@IDC_RADIO_QWORD = common dso_local global i32 0, align 4
@IDC_RADIO_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @update_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_radio(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %26 [
    i32 130, label %10
    i32 129, label %14
    i32 128, label %18
    i32 131, label %22
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IDR_MENU_SCIENTIFIC_1, align 4
  %12 = call i32 @MAKEINTRESOURCE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @BITMASK_DEC_MASK, align 4
  store i32 %13, i32* %7, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @IDR_MENU_SCIENTIFIC_2, align 4
  %16 = call i32 @MAKEINTRESOURCE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @BITMASK_HEX_MASK, align 4
  store i32 %17, i32* %7, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @IDR_MENU_SCIENTIFIC_2, align 4
  %20 = call i32 @MAKEINTRESOURCE(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @BITMASK_OCT_MASK, align 4
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @IDR_MENU_SCIENTIFIC_2, align 4
  %24 = call i32 @MAKEINTRESOURCE(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @BITMASK_BIN_MASK, align 4
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %2
  br label %105

27:                                               ; preds = %22, %18, %14, %10
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = call i32 @convert_text2number(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 4))
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @convert_real_integer(i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @display_rpn_result(i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 4))
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @GetMenu(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DestroyMenu(i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 3), align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @LoadMenu(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SetMenu(i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @update_menu(i32 %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %80, %31
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @radio_setup, align 8
  %53 = call i32 @SIZEOF(%struct.TYPE_4__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @radio_setup, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GetDlgItem(i32 %56, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @radio_setup, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = load i32, i32* @SW_SHOW, align 4
  br label %77

75:                                               ; preds = %55
  %76 = load i32, i32* @SW_HIDE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @ShowWindow(i32 %63, i32 %78)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @enable_allowed_controls(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %27
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %90 = call i32 @CheckRadioButton(i32 %88, i32 129, i32 131, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @IDC_RADIO_DEG, align 4
  %96 = load i32, i32* @IDC_RADIO_GRAD, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 4
  %98 = call i32 @CheckRadioButton(i32 %94, i32 %95, i32 %96, i32 %97)
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @IDC_RADIO_QWORD, align 4
  %102 = load i32, i32* @IDC_RADIO_BYTE, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 2), align 4
  %104 = call i32 @CheckRadioButton(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %26, %99, %93
  ret void
}

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @convert_text2number(i32*) #1

declare dso_local i32 @convert_real_integer(i32) #1

declare dso_local i32 @display_rpn_result(i32, i32*) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @DestroyMenu(i32) #1

declare dso_local i32 @LoadMenu(i32, i32) #1

declare dso_local i32 @SetMenu(i32, i32) #1

declare dso_local i32 @update_menu(i32) #1

declare dso_local i32 @SIZEOF(%struct.TYPE_4__*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @enable_allowed_controls(i32, i32) #1

declare dso_local i32 @CheckRadioButton(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
