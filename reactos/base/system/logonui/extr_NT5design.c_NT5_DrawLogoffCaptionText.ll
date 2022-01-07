; ModuleID = '/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawLogoffCaptionText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawLogoffCaptionText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@LF_FACESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 65, i32 114, i32 105, i32 97, i32 108, i32 0], align 4
@g_pInfo = common dso_local global %struct.TYPE_9__* null, align 8
@LOGPIXELSY = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@DT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @NT5_DrawLogoffCaptionText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NT5_DrawLogoffCaptionText(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = call i32 @ZeroMemory(%struct.TYPE_8__* %7, i32 16)
  %11 = load i32, i32* @DEFAULT_CHARSET, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 22, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 109, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LF_FACESIZE, align 4
  %18 = call i32 @wcscpy_s(i32 %16, i32 %17, i8* bitcast ([6 x i32]* @.str to i8*))
  %19 = call i64 @CreateFontIndirectW(%struct.TYPE_8__* %7)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @SelectObject(i32 %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @RGB(i32 255, i32 255, i32 255)
  %28 = call i32 @SetTextColor(i32 %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pInfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %32, 34
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pInfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %38, 34
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LOGPIXELSY, align 4
  %43 = call i64 @GetDeviceCaps(i32 %41, i32 %42)
  %44 = add nsw i64 %40, %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pInfo, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pInfo, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 %54, 35
  %56 = add nsw i32 %55, 137
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @TRANSPARENT, align 4
  %60 = call i32 @SetBkMode(i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DT_NOPREFIX, align 4
  %64 = load i32, i32* @DT_WORDBREAK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DT_RIGHT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @DrawTextW(i32 %61, i32 %62, i32 -1, %struct.TYPE_7__* %8, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @SetBkMode(i32 %69, i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @DeleteObject(i64 %72)
  br label %74

74:                                               ; preds = %22, %2
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @wcscpy_s(i32, i32, i8*) #1

declare dso_local i64 @CreateFontIndirectW(%struct.TYPE_8__*) #1

declare dso_local i32 @SelectObject(i32, i64) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @DrawTextW(i32, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
