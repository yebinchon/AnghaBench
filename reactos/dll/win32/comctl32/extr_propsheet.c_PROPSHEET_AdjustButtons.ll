; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustButtons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_AdjustButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@IDOK = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@DM_SETDEFID = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@IDC_APPLY_BUTTON = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDHELP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @PROPSHEET_AdjustButtons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPSHEET_AdjustButtons(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IDOK, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 2, i32* %9, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @PROPSHEET_GetPaddingInfo(i32 %16)
  %18 = bitcast %struct.TYPE_9__* %12 to i64*
  store i64 %17, i64* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GetClientRect(i32 %35, %struct.TYPE_7__* %6)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @GetClientRect(i32 %41, %struct.TYPE_7__* %6)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @IDOK, align 4
  %52 = call i32 @GetDlgItem(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sub nsw i32 %54, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SWP_NOSIZE, align 4
  %66 = load i32, i32* @SWP_NOZORDER, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SWP_NOACTIVATE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @SetWindowPos(i32 %62, i32 0, i32 %63, i32 %64, i32 0, i32 0, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @DM_SETDEFID, align 4
  %73 = load i32, i32* @IDOK, align 4
  %74 = call i32 @SendMessageW(i32 %71, i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IDCANCEL, align 4
  %77 = call i32 @GetDlgItem(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @SWP_NOSIZE, align 4
  %88 = load i32, i32* @SWP_NOZORDER, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SWP_NOACTIVATE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @SetWindowPos(i32 %84, i32 0, i32 %85, i32 %86, i32 0, i32 0, i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @IDC_APPLY_BUTTON, align 4
  %95 = call i32 @GetDlgItem(i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %34
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %111

107:                                              ; preds = %34
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @SW_HIDE, align 4
  %110 = call i32 @ShowWindow(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %100
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SWP_NOSIZE, align 4
  %116 = load i32, i32* @SWP_NOZORDER, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SWP_NOACTIVATE, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @SetWindowPos(i32 %112, i32 0, i32 %113, i32 %114, i32 0, i32 0, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @EnableWindow(i32 %121, i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @IDHELP, align 4
  %126 = call i32 @GetDlgItem(i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @SWP_NOSIZE, align 4
  %137 = load i32, i32* @SWP_NOZORDER, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SWP_NOACTIVATE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @SetWindowPos(i32 %133, i32 0, i32 %134, i32 %135, i32 0, i32 0, i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %111
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @SW_HIDE, align 4
  %149 = call i32 @ShowWindow(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %111
  %151 = load i32, i32* @TRUE, align 4
  ret i32 %151
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @PROPSHEET_GetPaddingInfo(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
