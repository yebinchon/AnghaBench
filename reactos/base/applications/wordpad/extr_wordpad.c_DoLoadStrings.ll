; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_DoLoadStrings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_DoLoadStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wszFilter = common dso_local global i8* null, align 8
@DoLoadStrings.files_rtf = internal constant [6 x i8] c"*.rtf\00", align 1
@DoLoadStrings.files_txt = internal constant [6 x i8] c"*.txt\00", align 1
@DoLoadStrings.files_all = internal constant [4 x i8] c"*.*\00", align 1
@STRING_RICHTEXT_FILES_RTF = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@STRING_TEXT_FILES_TXT = common dso_local global i32 0, align 4
@STRING_TEXT_FILES_UNICODE_TXT = common dso_local global i32 0, align 4
@STRING_ALL_FILES = common dso_local global i32 0, align 4
@wszDefaultFileName = common dso_local global i8* null, align 8
@STRING_DEFAULT_FILENAME = common dso_local global i32 0, align 4
@wszSaveChanges = common dso_local global i8* null, align 8
@STRING_PROMPT_SAVE_CHANGES = common dso_local global i32 0, align 4
@STRING_UNITS_CM = common dso_local global i32 0, align 4
@units_cmW = common dso_local global i8* null, align 8
@STRING_UNITS_IN = common dso_local global i32 0, align 4
@units_inW = common dso_local global i8* null, align 8
@STRING_UNITS_INCH = common dso_local global i32 0, align 4
@units_inchW = common dso_local global i8* null, align 8
@STRING_UNITS_PT = common dso_local global i32 0, align 4
@units_ptW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DoLoadStrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoLoadStrings() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @wszFilter, align 8
  store i8* %3, i8** %1, align 8
  %4 = call i32 @GetModuleHandleW(i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @STRING_RICHTEXT_FILES_RTF, align 4
  %7 = load i8*, i8** %1, align 8
  %8 = load i32, i32* @MAX_STRING_LEN, align 4
  %9 = call i32 @LoadStringW(i32 %5, i32 %6, i8* %7, i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @lstrlenW(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @lstrcpyW(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @DoLoadStrings.files_rtf, i64 0, i64 0))
  %17 = load i8*, i8** %1, align 8
  %18 = call i64 @lstrlenW(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = load i8*, i8** %1, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %21, i8** %1, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @STRING_TEXT_FILES_TXT, align 4
  %24 = load i8*, i8** %1, align 8
  %25 = load i32, i32* @MAX_STRING_LEN, align 4
  %26 = call i32 @LoadStringW(i32 %22, i32 %23, i8* %24, i32 %25)
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @lstrlenW(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %1, align 8
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @lstrcpyW(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @DoLoadStrings.files_txt, i64 0, i64 0))
  %34 = load i8*, i8** %1, align 8
  %35 = call i64 @lstrlenW(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = load i8*, i8** %1, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %1, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @STRING_TEXT_FILES_UNICODE_TXT, align 4
  %41 = load i8*, i8** %1, align 8
  %42 = load i32, i32* @MAX_STRING_LEN, align 4
  %43 = call i32 @LoadStringW(i32 %39, i32 %40, i8* %41, i32 %42)
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @lstrlenW(i8* %44)
  %46 = add nsw i64 %45, 1
  %47 = load i8*, i8** %1, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @lstrcpyW(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @DoLoadStrings.files_txt, i64 0, i64 0))
  %51 = load i8*, i8** %1, align 8
  %52 = call i64 @lstrlenW(i8* %51)
  %53 = add nsw i64 %52, 1
  %54 = load i8*, i8** %1, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %1, align 8
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @STRING_ALL_FILES, align 4
  %58 = load i8*, i8** %1, align 8
  %59 = load i32, i32* @MAX_STRING_LEN, align 4
  %60 = call i32 @LoadStringW(i32 %56, i32 %57, i8* %58, i32 %59)
  %61 = load i8*, i8** %1, align 8
  %62 = call i64 @lstrlenW(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = load i8*, i8** %1, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %1, align 8
  %66 = load i8*, i8** %1, align 8
  %67 = call i32 @lstrcpyW(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @DoLoadStrings.files_all, i64 0, i64 0))
  %68 = load i8*, i8** %1, align 8
  %69 = call i64 @lstrlenW(i8* %68)
  %70 = add nsw i64 %69, 1
  %71 = load i8*, i8** %1, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %1, align 8
  %73 = load i8*, i8** %1, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** @wszDefaultFileName, align 8
  store i8* %74, i8** %1, align 8
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @STRING_DEFAULT_FILENAME, align 4
  %77 = load i8*, i8** %1, align 8
  %78 = load i32, i32* @MAX_STRING_LEN, align 4
  %79 = call i32 @LoadStringW(i32 %75, i32 %76, i8* %77, i32 %78)
  %80 = load i8*, i8** @wszSaveChanges, align 8
  store i8* %80, i8** %1, align 8
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @STRING_PROMPT_SAVE_CHANGES, align 4
  %83 = load i8*, i8** %1, align 8
  %84 = load i32, i32* @MAX_STRING_LEN, align 4
  %85 = call i32 @LoadStringW(i32 %81, i32 %82, i8* %83, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @STRING_UNITS_CM, align 4
  %88 = load i8*, i8** @units_cmW, align 8
  %89 = load i32, i32* @MAX_STRING_LEN, align 4
  %90 = call i32 @LoadStringW(i32 %86, i32 %87, i8* %88, i32 %89)
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @STRING_UNITS_IN, align 4
  %93 = load i8*, i8** @units_inW, align 8
  %94 = load i32, i32* @MAX_STRING_LEN, align 4
  %95 = call i32 @LoadStringW(i32 %91, i32 %92, i8* %93, i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @STRING_UNITS_INCH, align 4
  %98 = load i8*, i8** @units_inchW, align 8
  %99 = load i32, i32* @MAX_STRING_LEN, align 4
  %100 = call i32 @LoadStringW(i32 %96, i32 %97, i8* %98, i32 %99)
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* @STRING_UNITS_PT, align 4
  %103 = load i8*, i8** @units_ptW, align 8
  %104 = load i32, i32* @MAX_STRING_LEN, align 4
  %105 = call i32 @LoadStringW(i32 %101, i32 %102, i8* %103, i32 %104)
  ret void
}

declare dso_local i32 @GetModuleHandleW(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
