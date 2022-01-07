; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_find_installed_font.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_font.c_find_installed_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_metrics = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FontFamilyNotFound = common dso_local global i32 0, align 4
@is_font_installed_proc = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@NotTrueTypeFont = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.font_metrics*)* @find_installed_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_installed_font(i32* %0, %struct.font_metrics* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.font_metrics*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.font_metrics* %1, %struct.font_metrics** %4, align 8
  %10 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @FontFamilyNotFound, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @is_font_installed_proc, align 4
  %15 = ptrtoint %struct.TYPE_3__* %5 to i32
  %16 = call i32 @EnumFontFamiliesW(i32 %12, i32* %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %2
  %19 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %20 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcpyW(i32 %21, i32 %23)
  %25 = call i32 @CreateFontIndirectW(%struct.TYPE_3__* %5)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SelectObject(i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %31 = call i64 @get_font_metrics(i32 %29, %struct.font_metrics* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @Ok, align 4
  br label %37

35:                                               ; preds = %18
  %36 = load i32, i32* @NotTrueTypeFont, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @SelectObject(i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DeleteObject(i32 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DeleteDC(i32 %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @EnumFontFamiliesW(i32, i32*, i32, i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i32 @CreateFontIndirectW(%struct.TYPE_3__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i64 @get_font_metrics(i32, %struct.font_metrics*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
