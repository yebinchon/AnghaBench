; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPrinterListComboA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_SetUpPrinterListComboA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_FINDSTRINGEXACT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Can't find %s in printer list so trying to find default\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't find default printer in printer list\0A\00", align 1
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @PRINTDLG_SetUpPrinterListComboA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PRINTDLG_SetUpPrinterListComboA(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca [260 x i8], align 16
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %15 = call i32 @EnumPrintersA(i32 %14, i32* null, i32 2, i32* null, i64 0, i64* %8, i64* %9)
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.TYPE_4__* @HeapAlloc(i32 %16, i32 0, i64 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  %19 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = bitcast %struct.TYPE_4__* %20 to i32*
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @EnumPrintersA(i32 %19, i32* null, i32 2, i32* %21, i64 %22, i64* %8, i64* %9)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CB_RESETCONTENT, align 4
  %27 = call i64 @SendDlgItemMessageA(i32 %24, i32 %25, i32 %26, i64 0, i32 0)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %43, %3
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CB_ADDSTRING, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @SendDlgItemMessageA(i32 %33, i32 %34, i32 %35, i64 0, i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %28

46:                                               ; preds = %28
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_4__* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = ptrtoint i32* %56 to i32
  %58 = call i64 @SendDlgItemMessageA(i32 %53, i32 %54, i32 %55, i64 -1, i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* @CB_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %52, %46
  %62 = getelementptr inbounds [260 x i8], [260 x i8]* %12, i64 0, i64 0
  %63 = call i64 @ARRAY_SIZE(i8* %62)
  store i64 %63, i64* %13, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @debugstr_a(i32* %67)
  %69 = call i32 @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds [260 x i8], [260 x i8]* %12, i64 0, i64 0
  %72 = call i32 @GetDefaultPrinterA(i8* %71, i64* %13)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  br label %96

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %80 = getelementptr inbounds [260 x i8], [260 x i8]* %12, i64 0, i64 0
  %81 = ptrtoint i8* %80 to i32
  %82 = call i64 @SendDlgItemMessageA(i32 %77, i32 %78, i32 %79, i64 -1, i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @CB_ERR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %76
  br label %89

89:                                               ; preds = %88, %52
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @CB_SETCURSEL, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @SendDlgItemMessageA(i32 %90, i32 %91, i32 %92, i64 %93, i32 0)
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %89, %74
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @EnumPrintersA(i32, i32*, i32, i32*, i64, i64*, i64*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SendDlgItemMessageA(i32, i32, i32, i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32*) #1

declare dso_local i32 @GetDefaultPrinterA(i8*, i64*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
