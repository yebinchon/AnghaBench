; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_CreateDevNamesW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_CreateDevNamesW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @PRINTDLG_CreateDevNamesW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRINTDLG_CreateDevNamesW(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca [260 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @wcsrchr(i32* %19, i8 signext 92)
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %16, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @lstrlenW(i32* %27)
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = add i64 %30, 2
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @lstrlenW(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = add i64 %31, %35
  %37 = add i64 %36, 2
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @lstrlenW(i32* %38)
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = add i64 %37, %41
  %43 = add i64 %42, 2
  %44 = add i64 %43, 4
  store i64 %44, i64* %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %26
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* @GMEM_MOVEABLE, align 4
  %53 = call i32 @GlobalReAlloc(i32 %50, i64 %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %60

55:                                               ; preds = %26
  %56 = load i32, i32* @GMEM_MOVEABLE, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @GlobalAlloc(i32 %56, i64 %57)
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %135

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @GlobalLock(i32 %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %71, %struct.TYPE_2__** %13, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 1
  %75 = bitcast %struct.TYPE_2__* %74 to i8*
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @lstrcpyW(i8* %76, i32* %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @lstrlenW(i32* %87)
  %89 = add nsw i32 %88, 1
  %90 = load i8*, i8** %12, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr i8, i8* %90, i64 %91
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @lstrcpyW(i8* %93, i32* %94)
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @lstrlenW(i32* %104)
  %106 = add nsw i32 %105, 1
  %107 = load i8*, i8** %12, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @lstrcpyW(i8* %110, i32* %111)
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 0
  %122 = call i32 @GetDefaultPrinterW(i32* %121, i32* %15)
  %123 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 0
  %124 = load i32*, i32** %8, align 8
  %125 = call i64 @lstrcmpW(i32* %123, i32* %124)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @GlobalUnlock(i32 %132)
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %66, %64
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @wcsrchr(i32*, i8 signext) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @GlobalReAlloc(i32, i64, i32) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i32*) #1

declare dso_local i32 @GetDefaultPrinterW(i32*, i32*) #1

declare dso_local i64 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
