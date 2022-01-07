; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_CreateTrayIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_CreateTrayIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@LOCALE_SISO639LANGNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FW_NORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@FF_DONTCARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Tahoma\00", align 1
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@BLACKNESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @CreateTrayIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateTrayIcon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %12, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @_tcstoul(i32 %15, i32* null, i32 16)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @LOCALE_SISO639LANGNAME, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %21 = call i32 @ARRAYSIZE(i32* %20)
  %22 = call i64 @GetLocaleInfo(i64 %17, i32 %18, i32* %19, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @StringCchCopy(i32* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = call i64 @GetDC(i32* null)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @CreateCompatibleDC(i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i8* @CreateCompatibleBitmap(i64 %34, i32 16, i32 16)
  store i8* %35, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @ReleaseDC(i32* null, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %120

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %120

43:                                               ; preds = %40
  %44 = call i8* @CreateBitmap(i32 16, i32 16, i32 1, i32 1, i32* null)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %119

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @SelectObject(i64 %48, i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 16, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %57 = call i32 @GetSysColor(i32 %56)
  %58 = call i32 @SetBkColor(i64 %55, i32 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %61 = call i32 @GetSysColor(i32 %60)
  %62 = call i32 @SetTextColor(i64 %59, i32 %61)
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETO_OPAQUE, align 4
  %69 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @ExtTextOut(i64 %63, i64 %65, i64 %67, i32 %68, %struct.TYPE_6__* %10, i32 %69, i32 0, i32* null)
  %71 = load i32, i32* @FW_NORMAL, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @ANSI_CHARSET, align 4
  %76 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %77 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %78 = load i32, i32* @DEFAULT_QUALITY, align 4
  %79 = load i32, i32* @FF_DONTCARE, align 4
  %80 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i8* @CreateFont(i32 -11, i32 0, i32 0, i32 0, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i8* %81, i8** %12, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i8* @SelectObject(i64 %82, i8* %83)
  store i8* %84, i8** %11, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %87 = call i32 @_tcsupr(i32* %86)
  %88 = load i32, i32* @DT_SINGLELINE, align 4
  %89 = load i32, i32* @DT_CENTER, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @DT_VCENTER, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @DrawText(i64 %85, i32 %87, i32 2, %struct.TYPE_6__* %10, i32 %92)
  %94 = load i64, i64* %5, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i8* @SelectObject(i64 %94, i8* %95)
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* @BLACKNESS, align 4
  %99 = call i32 @PatBlt(i64 %97, i32 0, i32 0, i32 16, i32 16, i32 %98)
  %100 = load i64, i64* %5, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i8* @SelectObject(i64 %100, i8* %101)
  %103 = load i64, i64* %5, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i8* @SelectObject(i64 %103, i8* %104)
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* @TRUE, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = call i32* @CreateIconIndirect(%struct.TYPE_7__* %13)
  store i32* %112, i32** %14, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @DeleteObject(i8* %113)
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @DeleteObject(i8* %115)
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @DeleteObject(i8* %117)
  br label %119

119:                                              ; preds = %47, %43
  br label %120

120:                                              ; preds = %119, %40, %30
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @DeleteDC(i64 %121)
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @DeleteObject(i8* %123)
  %125 = load i32*, i32** %14, align 8
  ret i32* %125
}

declare dso_local i64 @_tcstoul(i32, i32*, i32) #1

declare dso_local i64 @GetLocaleInfo(i64, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @StringCchCopy(i32*, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetDC(i32*) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i8* @CreateCompatibleBitmap(i64, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i64) #1

declare dso_local i8* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i8* @SelectObject(i64, i8*) #1

declare dso_local i32 @SetBkColor(i64, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i64, i32) #1

declare dso_local i32 @ExtTextOut(i64, i64, i64, i32, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i8* @CreateFont(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DrawText(i64, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @_tcsupr(i32*) #1

declare dso_local i32 @PatBlt(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32* @CreateIconIndirect(%struct.TYPE_7__*) #1

declare dso_local i32 @DeleteObject(i8*) #1

declare dso_local i32 @DeleteDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
