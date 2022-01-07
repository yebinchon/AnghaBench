; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_change_printer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_change_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't open printer %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"GetPrinterDriverA failed for %s, fix your config!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DocumentProperties fails on %s\0A\00", align 1
@DM_OUT_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @pagesetup_change_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagesetup_change_printer(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @OpenPrinterW(i32 %12, i32* %5, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %81

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GetPrinterW(i32 %20, i32 2, i32* null, i32 0, i32* %6)
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_8__* @HeapAlloc(i32 %22, i32 0, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = bitcast %struct.TYPE_8__* %26 to i32*
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GetPrinterW(i32 %25, i32 2, i32* %27, i32 %28, i32* %6)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @GetPrinterDriverW(i32 %30, i32* null, i32 3, i32* null, i32 0, i32* %6)
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_8__* @HeapAlloc(i32 %32, i32 0, i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to i32*
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @GetPrinterDriverW(i32 %35, i32* null, i32 3, i32* %37, i32 %38, i32* %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %19
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @debugstr_w(i32 %44)
  %46 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %81

47:                                               ; preds = %19
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ClosePrinter(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @DocumentPropertiesW(i32 0, i32 0, i32 %50, %struct.TYPE_8__* null, i32* null, i32 0)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @debugstr_w(i32 %55)
  %57 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %81

58:                                               ; preds = %47
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.TYPE_8__* @HeapAlloc(i32 %59, i32 0, i32 %60)
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %9, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = load i32, i32* @DM_OUT_BUFFER, align 4
  %65 = call i32 @DocumentPropertiesW(i32 0, i32 0, i32 %62, %struct.TYPE_8__* %63, i32* null, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = call i32 @pagesetup_set_devmode(i32* %66, %struct.TYPE_8__* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pagesetup_set_devnames(i32* %69, i32 %72, i32 %75, i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %58, %54, %41, %15
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = call i32 @HeapFree(i32 %82, i32 0, %struct.TYPE_8__* %83)
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = call i32 @HeapFree(i32 %85, i32 0, %struct.TYPE_8__* %86)
  %88 = call i32 (...) @GetProcessHeap()
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i32 @HeapFree(i32 %88, i32 0, %struct.TYPE_8__* %89)
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @OpenPrinterW(i32, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @GetPrinterW(i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetPrinterDriverW(i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ClosePrinter(i32) #1

declare dso_local i32 @DocumentPropertiesW(i32, i32, i32, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @pagesetup_set_devmode(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pagesetup_set_devnames(i32*, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
