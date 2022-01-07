; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_change_printer_dialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_change_printer_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @pagesetup_change_printer_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagesetup_change_printer_dialog(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %13 = call i32 @memset(%struct.TYPE_11__* %5, i32 0, i32 40)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 40, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @pagesetup_get_drvname(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @pagesetup_get_devname(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @pagesetup_get_portname(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PRINTDLG_CreateDevNamesW(i64* %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pagesetup_release_a_devname(i32* %30, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pagesetup_release_a_devname(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @pagesetup_release_a_devname(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_13__* @pagesetup_get_devmode(i32* %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  %41 = load i32, i32* @GMEM_MOVEABLE, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i64 @GlobalAlloc(i32 %41, i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @GlobalLock(i64 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %10, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @memcpy(%struct.TYPE_13__* %55, %struct.TYPE_13__* %56, i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @GlobalUnlock(i64 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = call i32 @pagesetup_release_devmode(i32* %68, %struct.TYPE_13__* %69)
  %71 = call i64 @PrintDlgW(%struct.TYPE_11__* %5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @GlobalLock(i64 %75)
  %77 = bitcast i8* %76 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @GlobalLock(i64 %79)
  %81 = bitcast i8* %80 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %12, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %84 = bitcast %struct.TYPE_12__* %83 to i32*
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %91 = bitcast %struct.TYPE_12__* %90 to i32*
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %98 = bitcast %struct.TYPE_12__* %97 to i32*
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = call i32 @pagesetup_set_devnames(i32* %82, i32* %89, i32* %96, i32* %103)
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %107 = call i32 @pagesetup_set_devmode(i32* %105, %struct.TYPE_13__* %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @GlobalUnlock(i64 %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @GlobalUnlock(i64 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @pagesetup_init_combos(i32 %114, i32* %115)
  br label %117

117:                                              ; preds = %73, %2
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @GlobalFree(i64 %119)
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @GlobalFree(i64 %122)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @pagesetup_get_drvname(i32*) #1

declare dso_local i32 @pagesetup_get_devname(i32*) #1

declare dso_local i32 @pagesetup_get_portname(i32*) #1

declare dso_local i32 @PRINTDLG_CreateDevNamesW(i64*, i32, i32, i32) #1

declare dso_local i32 @pagesetup_release_a_devname(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @pagesetup_get_devmode(i32*) #1

declare dso_local i64 @GlobalAlloc(i32, i64) #1

declare dso_local i8* @GlobalLock(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @pagesetup_release_devmode(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @PrintDlgW(%struct.TYPE_11__*) #1

declare dso_local i32 @pagesetup_set_devnames(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pagesetup_set_devmode(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pagesetup_init_combos(i32, i32*) #1

declare dso_local i32 @GlobalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
