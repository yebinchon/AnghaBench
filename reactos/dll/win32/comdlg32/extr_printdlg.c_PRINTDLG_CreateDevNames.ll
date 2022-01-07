; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_CreateDevNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_CreateDevNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @PRINTDLG_CreateDevNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_CreateDevNames(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca [260 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i8* %17)
  store i32 %18, i32* %15, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 92)
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %16, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %28, 1
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 1
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  store i64 %39, i64* %10, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %26
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @GMEM_MOVEABLE, align 4
  %48 = call i32 @GlobalReAlloc(i32 %45, i64 %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %55

50:                                               ; preds = %26
  %51 = load i32, i32* @GMEM_MOVEABLE, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @GlobalAlloc(i32 %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %128

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @GlobalLock(i32 %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %13, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strcpy(i8* %69, i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = load i8*, i8** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcpy(i8* %86, i8* %87)
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = add nsw i32 %98, 1
  %100 = load i8*, i8** %12, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @strcpy(i8* %103, i8* %104)
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %115 = call i32 @GetDefaultPrinterA(i8* %114, i32* %15)
  %116 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @GlobalUnlock(i32 %125)
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %61, %59
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GlobalReAlloc(i32, i64, i32) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @GetDefaultPrinterA(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
