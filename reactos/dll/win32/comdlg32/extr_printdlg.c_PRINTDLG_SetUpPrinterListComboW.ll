; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPrinterListComboW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPrinterListComboW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_FINDSTRINGEXACT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Can't find %s in printer list so trying to find default\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't find default printer in printer list\0A\00", align 1
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @PRINTDLG_SetUpPrinterListComboW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PRINTDLG_SetUpPrinterListComboW(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca [260 x i32], align 16
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %15 = call i32 @EnumPrintersW(i32 %14, i32* null, i32 2, i32* null, i64 0, i64* %8, i64* %9)
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.TYPE_4__* @HeapAlloc(i32 %16, i32 0, i64 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  %19 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = bitcast %struct.TYPE_4__* %20 to i32*
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @EnumPrintersW(i32 %19, i32* null, i32 2, i32* %21, i64 %22, i64* %8, i64* %9)
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %39, %3
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CB_ADDSTRING, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @SendDlgItemMessageW(i32 %29, i32 %30, i32 %31, i64 0, i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %24

42:                                               ; preds = %24
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, %struct.TYPE_4__* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = call i64 @SendDlgItemMessageW(i32 %49, i32 %50, i32 %51, i64 -1, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* @CB_ERR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %48, %42
  %58 = getelementptr inbounds [260 x i32], [260 x i32]* %12, i64 0, i64 0
  %59 = call i64 @ARRAY_SIZE(i32* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @debugstr_w(i32* %63)
  %65 = call i32 @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds [260 x i32], [260 x i32]* %12, i64 0, i64 0
  %68 = call i32 @GetDefaultPrinterW(i32* %67, i64* %13)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %4, align 8
  br label %92

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %76 = getelementptr inbounds [260 x i32], [260 x i32]* %12, i64 0, i64 0
  %77 = ptrtoint i32* %76 to i32
  %78 = call i64 @SendDlgItemMessageW(i32 %73, i32 %74, i32 %75, i64 -1, i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @CB_ERR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %72
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @CB_SETCURSEL, align 4
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @SendDlgItemMessageW(i32 %86, i32 %87, i32 %88, i64 %89, i32 0)
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %85, %70
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i32 @EnumPrintersW(i32, i32*, i32, i32*, i64, i64*, i64*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @GetDefaultPrinterW(i32*, i64*) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
