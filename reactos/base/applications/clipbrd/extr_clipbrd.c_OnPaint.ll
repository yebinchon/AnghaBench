; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_OnPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_OnPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@Globals = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@COLOR_WINDOW = common dso_local global i64 0, align 8
@COLOR_WINDOWTEXT = common dso_local global i64 0, align 8
@Scrollstate = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WM_PAINTCLIPBOARD = common dso_local global i32 0, align 4
@ERROR_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @OnPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnPaint(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 2), align 4
  %15 = call i32 @OpenClipboard(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %130

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BeginPaint(i32 %19, %struct.TYPE_9__* %8)
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %28 = load i64, i64* @COLOR_WINDOW, align 8
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = call i32 @FillRect(i32 %26, i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @COLOR_WINDOW, align 8
  %36 = call i32 @GetSysColor(i64 %35)
  %37 = call i32 @SetBkColor(i32 %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @COLOR_WINDOWTEXT, align 8
  %41 = call i32 @GetSysColor(i64 %40)
  %42 = call i32 @SetTextColor(i32 %39, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @RealizeClipboardPalette(i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  switch i32 %46, label %106 [
    i32 132, label %47
    i32 135, label %48
    i32 129, label %48
    i32 131, label %48
    i32 128, label %48
    i32 138, label %57
    i32 141, label %57
    i32 140, label %66
    i32 139, label %66
    i32 136, label %76
    i32 133, label %76
    i32 137, label %81
    i32 134, label %81
    i32 130, label %86
  ]

47:                                               ; preds = %32
  br label %118

48:                                               ; preds = %32, %32, %32, %32
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %50 = load i32, i32* @Scrollstate, align 4
  %51 = bitcast %struct.TYPE_9__* %8 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @DrawTextFromClipboard(i32 %49, i64 %53, i64 %55, i32 %50)
  br label %118

57:                                               ; preds = %32, %32
  %58 = load i32, i32* @Scrollstate, align 4
  %59 = load i32, i32* @SRCCOPY, align 4
  %60 = bitcast %struct.TYPE_9__* %8 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @BitBltFromClipboard(i64 %62, i64 %64, i32 %58, i32 %59)
  br label %118

66:                                               ; preds = %32, %32
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %68 = load i32, i32* @Scrollstate, align 4
  %69 = load i32, i32* @DIB_RGB_COLORS, align 4
  %70 = bitcast %struct.TYPE_9__* %8 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @SetDIBitsToDeviceFromClipboard(i32 %67, i64 %72, i64 %74, i32 %68, i32 %69)
  br label %118

76:                                               ; preds = %32, %32
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @GetClientRect(i32 %77, i32* %11)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @PlayMetaFileFromClipboard(i32 %79, i32* %11)
  br label %118

81:                                               ; preds = %32, %32
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @GetClientRect(i32 %82, i32* %11)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @PlayEnhMetaFileFromClipboard(i32 %84, i32* %11)
  br label %118

86:                                               ; preds = %32
  %87 = load i32, i32* @GMEM_MOVEABLE, align 4
  %88 = call i32 @GlobalAlloc(i32 %87, i32 16)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @GlobalLock(i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @CopyMemory(i32 %94, %struct.TYPE_9__* %8, i32 16)
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @GlobalUnlock(i32 %96)
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32, i32* @WM_PAINTCLIPBOARD, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @SendClipboardOwnerMessage(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @GlobalFree(i32 %103)
  br label %105

105:                                              ; preds = %91, %86
  br label %118

106:                                              ; preds = %32
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @GetClientRect(i32 %107, i32* %11)
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 1), align 4
  %110 = load i32, i32* @ERROR_UNSUPPORTED_FORMAT, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @DT_CENTER, align 4
  %113 = load i32, i32* @DT_WORDBREAK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @DT_NOPREFIX, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @DrawTextFromResource(i32 %109, i32 %110, i32 %111, i32* %11, i32 %116)
  br label %118

118:                                              ; preds = %106, %105, %81, %76, %66, %57, %48, %47
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @SetTextColor(i32 %120, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @SetBkColor(i32 %124, i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @EndPaint(i32 %127, %struct.TYPE_9__* %8)
  %129 = call i32 (...) @CloseClipboard()
  br label %130

130:                                              ; preds = %118, %17
  ret void
}

declare dso_local i32 @OpenClipboard(i32) #1

declare dso_local i32 @BeginPaint(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i64) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @RealizeClipboardPalette(i32) #1

declare dso_local i32 @DrawTextFromClipboard(i32, i64, i64, i32) #1

declare dso_local i32 @BitBltFromClipboard(i64, i64, i32, i32) #1

declare dso_local i32 @SetDIBitsToDeviceFromClipboard(i32, i64, i64, i32, i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @PlayMetaFileFromClipboard(i32, i32*) #1

declare dso_local i32 @PlayEnhMetaFileFromClipboard(i32, i32*) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @CopyMemory(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @SendClipboardOwnerMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @DrawTextFromResource(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @EndPaint(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
