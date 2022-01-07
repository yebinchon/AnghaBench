; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_GetTipText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_GetTipText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"load res string %p %x\0A\00", align 1
@INFOTIPSIZE = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@GWL_STYLE = common dso_local global i32 0, align 4
@TTS_NOPREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i8*)* @TOOLTIPS_GetTipText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLTIPS_GetTipText(%struct.TYPE_9__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 %12
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @IS_INTRESOURCE(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @LOWORD(i64 %25)
  %27 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @LOWORD(i64 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @INFOTIPSIZE, align 4
  %37 = call i32 @LoadStringW(i32 %30, i32 %34, i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %19
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %19
  br label %82

43:                                               ; preds = %3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @TOOLTIPS_GetDispInfoW(%struct.TYPE_9__* %60, %struct.TYPE_8__* %61, i8* %62)
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @TOOLTIPS_GetDispInfoA(%struct.TYPE_9__* %65, %struct.TYPE_8__* %66, i8* %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %77

70:                                               ; preds = %48
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @INFOTIPSIZE, align 4
  %76 = call i32 @lstrcpynW(i8* %71, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %69
  br label %81

78:                                               ; preds = %43
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %42
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @GWL_STYLE, align 4
  %87 = call i32 @GetWindowLongW(i32 %85, i32 %86)
  %88 = load i32, i32* @TTS_NOPREFIX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = call i8* @strchrW(i8* %92, i8 signext 9)
  store i8* %93, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @debugstr_w(i8* %99)
  %101 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  ret void
}

declare dso_local i64 @IS_INTRESOURCE(i64) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @TOOLTIPS_GetDispInfoW(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @TOOLTIPS_GetDispInfoA(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @lstrcpynW(i8*, i64, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
