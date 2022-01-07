; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_CreateLayoutIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_CreateLayoutIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@SPI_GETICONTITLELOGFONT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i32 0, align 4
@COLOR_WINDOWTEXT = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 8226, i32 0], align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@BLACKNESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @CreateLayoutIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateLayoutIcon(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load i32, i32* @SM_CXSMICON, align 4
  %18 = call i32 @GetSystemMetrics(i32 %17)
  %19 = mul nsw i32 %18, 2
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @SM_CYSMICON, align 4
  %21 = call i32 @GetSystemMetrics(i32 %20)
  store i32 %21, i32* %6, align 4
  store i32* null, i32** %10, align 8
  %22 = call i64 @GetDC(i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @CreateCompatibleDC(i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @CreateCompatibleBitmap(i64 %25, i32 %26, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @ReleaseDC(i32* null, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %155

33:                                               ; preds = %2
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %155

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @CreateBitmap(i32 %37, i32 %38, i32 1, i32 1, i32* null)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %154

42:                                               ; preds = %36
  %43 = load i32, i32* @SPI_GETICONTITLELOGFONT, align 4
  %44 = call i64 @SystemParametersInfoW(i32 %43, i32 4, i32* %12, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %151

46:                                               ; preds = %42
  %47 = call i32* @CreateFontIndirectW(i32* %12)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %150

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @SelectObject(i64 %51, i32* %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %147

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = sdiv i32 %57, 2
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @SetRect(%struct.TYPE_8__* %16, i32 0, i32 0, i32 %58, i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @COLOR_WINDOW, align 4
  %67 = call i32 @GetSysColor(i32 %66)
  %68 = call i32 @SetBkColor(i64 %65, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @COLOR_WINDOWTEXT, align 4
  %71 = call i32 @GetSysColor(i32 %70)
  %72 = call i32 @SetTextColor(i64 %69, i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ETO_OPAQUE, align 4
  %79 = call i32 @ExtTextOutW(i64 %73, i32 %75, i32 %77, i32 %78, %struct.TYPE_8__* %16, i8* bitcast ([1 x i32]* @.str to i8*), i32 0, i32* null)
  %80 = load i64, i64* %7, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = call i32* @SelectObject(i64 %80, i32* %81)
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @DT_SINGLELINE, align 4
  %85 = load i32, i32* @DT_CENTER, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DT_VCENTER, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @DrawTextW(i64 %83, i8* bitcast ([2 x i32]* @.str.1 to i8*), i32 1, %struct.TYPE_8__* %16, i32 %88)
  br label %95

90:                                               ; preds = %56
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* @COLOR_WINDOW, align 4
  %93 = call i32 @GetSysColorBrush(i32 %92)
  %94 = call i32 @FillRect(i64 %91, %struct.TYPE_8__* %16, i32 %93)
  br label %95

95:                                               ; preds = %90, %64
  %96 = load i32, i32* %5, align 4
  %97 = sdiv i32 %96, 2
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @SetRect(%struct.TYPE_8__* %16, i32 %97, i32 0, i32 %98, i32 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %103 = call i32 @GetSysColor(i32 %102)
  %104 = call i32 @SetBkColor(i64 %101, i32 %103)
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %107 = call i32 @GetSysColor(i32 %106)
  %108 = call i32 @SetTextColor(i64 %105, i32 %107)
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ETO_OPAQUE, align 4
  %115 = call i32 @ExtTextOutW(i64 %109, i32 %111, i32 %113, i32 %114, %struct.TYPE_8__* %16, i8* bitcast ([1 x i32]* @.str to i8*), i32 0, i32* null)
  %116 = load i64, i64* %7, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32* @SelectObject(i64 %116, i32* %117)
  %119 = load i64, i64* %7, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = load i32, i32* @DT_SINGLELINE, align 4
  %122 = load i32, i32* @DT_CENTER, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @DT_VCENTER, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @DrawTextW(i64 %119, i8* %120, i32 2, %struct.TYPE_8__* %16, i32 %125)
  %127 = load i64, i64* %7, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i32* @SelectObject(i64 %127, i32* %128)
  %130 = load i64, i64* %7, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @BLACKNESS, align 4
  %134 = call i32 @PatBlt(i64 %130, i32 0, i32 0, i32 %131, i32 %132, i32 %133)
  %135 = load i64, i64* %7, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32* @SelectObject(i64 %135, i32* %136)
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32* %138, i32** %139, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32* %140, i32** %141, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %142, i32* %143, align 8
  %144 = call i32* @CreateIconIndirect(%struct.TYPE_9__* %13)
  store i32* %144, i32** %10, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @DeleteObject(i32* %145)
  br label %147

147:                                              ; preds = %95, %50
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @DeleteObject(i32* %148)
  br label %150

150:                                              ; preds = %147, %46
  br label %151

151:                                              ; preds = %150, %42
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @DeleteObject(i32* %152)
  br label %154

154:                                              ; preds = %151, %36
  br label %155

155:                                              ; preds = %154, %33, %2
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @DeleteDC(i64 %156)
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @DeleteObject(i32* %158)
  %160 = load i32*, i32** %10, align 8
  ret i32* %160
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @GetDC(i32*) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i32* @CreateCompatibleBitmap(i64, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i64) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i32* @CreateFontIndirectW(i32*) #1

declare dso_local i32* @SelectObject(i64, i32*) #1

declare dso_local i32 @SetRect(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @SetBkColor(i64, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i64, i32) #1

declare dso_local i32 @ExtTextOutW(i64, i32, i32, i32, %struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @DrawTextW(i64, i8*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FillRect(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @PatBlt(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32* @CreateIconIndirect(%struct.TYPE_9__*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
