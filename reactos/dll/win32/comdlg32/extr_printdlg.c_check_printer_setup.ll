; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_check_printer_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_check_printer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@PRINTER_ENUM_CONNECTIONS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@PD32_NO_DEVICES = common dso_local global i32 0, align 4
@PD32_PRINT_TITLE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_printer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_printer_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %9 = call i32 @EnumPrintersW(i32 %8, i32* null, i32 2, i32* null, i32 0, i64* %4, i64* %5)
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @PRINTER_ENUM_CONNECTIONS, align 4
  %14 = call i32 @EnumPrintersW(i32 %13, i32* null, i32 2, i32* null, i32 0, i64* %4, i64* %5)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %15
  %21 = load i32, i32* @COMDLG32_hInstance, align 4
  %22 = load i32, i32* @PD32_NO_DEVICES, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %24 = call i32 @LoadStringW(i32 %21, i32 %22, i32* %23, i32 255)
  %25 = load i32, i32* @COMDLG32_hInstance, align 4
  %26 = load i32, i32* @PD32_PRINT_TITLE, align 4
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %28 = call i32 @LoadStringW(i32 %25, i32 %26, i32* %27, i32 255)
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* @MB_OK, align 4
  %33 = load i32, i32* @MB_ICONWARNING, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @MessageBoxW(i32 %29, i32* %30, i32* %31, i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %20, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @EnumPrintersW(i32, i32*, i32, i32*, i32, i64*, i64*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
