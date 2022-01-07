; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_ctrl_resize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_ctrl_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@WM_GETFONT = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @ctrl_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_resize(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %22 = call i32 @SendMessageW(i32 %20, i32 %21, i32 0, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 1, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @HeapAlloc(i32 %23, i32 0, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %119

33:                                               ; preds = %4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @WM_GETTEXT, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 @SendMessageW(i32 %34, i32 %35, i32 %37, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GetDC(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @WM_GETFONT, align 4
  %45 = call i32 @SendMessageW(i32 %43, i32 %44, i32 0, i32 0)
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %18, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i64, i64* %18, align 8
  %49 = call i64 @SelectObject(i32 %47, i64 %48)
  store i64 %49, i64* %18, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @lstrlenW(i8* %52)
  %54 = call i32 @GetTextExtentPoint32W(i32 %50, i8* %51, i32 %53, %struct.TYPE_5__* %14)
  %55 = load i32, i32* %16, align 4
  %56 = load i64, i64* %18, align 8
  %57 = call i64 @SelectObject(i32 %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @ReleaseDC(i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %33
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %17, align 8
  br label %68

68:                                               ; preds = %82, %66
  %69 = load i8*, i8** %17, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i8*, i8** %17, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %17, align 8
  br label %68

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %13, align 4
  br label %99

91:                                               ; preds = %63, %33
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @GetWindowRect(i32 %92, %struct.TYPE_6__* %15)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %91, %85
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @max(i32 %101, i32 %102)
  %104 = add nsw i64 %103, 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @min(i64 %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @SWP_NOZORDER, align 4
  %111 = load i32, i32* @SWP_NOMOVE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SWP_NOACTIVATE, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @SetWindowPos(i32 %107, i32* null, i32 0, i32 0, i32 %108, i32 %109, i32 %114)
  %116 = call i32 (...) @GetProcessHeap()
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @HeapFree(i32 %116, i32 0, i8* %117)
  br label %119

119:                                              ; preds = %99, %32
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
