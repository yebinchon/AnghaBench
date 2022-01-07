; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/clip/extr_clip.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/clip/extr_clip.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_HELP = common dso_local global i32 0, align 4
@FILE_TYPE_CHAR = common dso_local global i64 0, align 8
@IDS_USAGE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@CF_OEMTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %14 = call i32 @GetStdHandle(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @ConInitStdStreams()
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32**, i32*** %5, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @wcsncmp(i32* %21, i8* bitcast ([3 x i32]* @.str to i8*), i32 2)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @StdOut, align 4
  %26 = load i32, i32* @IDS_HELP, align 4
  %27 = call i32 @ConResPuts(i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %120

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GetFileType(i32 %29)
  %31 = load i64, i64* @FILE_TYPE_CHAR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @StdOut, align 4
  %35 = load i32, i32* @IDS_USAGE, align 4
  %36 = call i32 @ConResPuts(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %120

37:                                               ; preds = %28
  %38 = load i32, i32* @GMEM_MOVEABLE, align 4
  %39 = load i32, i32* @GMEM_ZEROINIT, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @GlobalAlloc(i32 %40, i32 4096)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %111

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %80, %45
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @GlobalLock(i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %111

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i64 @ReadFile(i32 %53, i64 %56, i32 4096, i64* %7, i32* null)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @GlobalUnlock(i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @GlobalSize(i64 %64)
  %66 = add nsw i64 %65, 4096
  %67 = load i32, i32* @GMEM_ZEROINIT, align 4
  %68 = call i64 @GlobalReAlloc(i64 %63, i64 %66, i32 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %52
  br label %111

72:                                               ; preds = %52
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %72
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = icmp sgt i64 %78, 0
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i1 [ false, %74 ], [ %79, %77 ]
  br i1 %81, label %46, label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 4
  %86 = load i32, i32* @GMEM_ZEROINIT, align 4
  %87 = call i64 @GlobalReAlloc(i64 %83, i64 %85, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %90, %82
  %93 = call i32 @OpenClipboard(i32* null)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %111

96:                                               ; preds = %92
  %97 = call i32 (...) @EmptyClipboard()
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @IsDataUnicode(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @CF_UNICODETEXT, align 4
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @SetClipboardData(i32 %102, i64 %103)
  br label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @CF_OEMTEXT, align 4
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @SetClipboardData(i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = call i32 (...) @CloseClipboard()
  store i32 0, i32* %3, align 4
  br label %120

111:                                              ; preds = %95, %71, %51, %44
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @GlobalFree(i64 %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 @PrintError(i32 %118)
  store i32 -1, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %109, %33, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i64 @wcsncmp(i32*, i8*, i32) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i64 @GetFileType(i32) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalLock(i64) #1

declare dso_local i64 @ReadFile(i32, i64, i32, i64*, i32*) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i64 @GlobalReAlloc(i64, i64, i32) #1

declare dso_local i64 @GlobalSize(i64) #1

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i32 @EmptyClipboard(...) #1

declare dso_local i64 @IsDataUnicode(i64) #1

declare dso_local i32 @SetClipboardData(i32, i64) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @PrintError(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
