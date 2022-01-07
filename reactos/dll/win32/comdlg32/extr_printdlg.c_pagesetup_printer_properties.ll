; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_printer_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_pagesetup_printer_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Call to OpenPrinter did not succeed!\0A\00", align 1
@DM_IN_BUFFER = common dso_local global i32 0, align 4
@DM_OUT_BUFFER = common dso_local global i32 0, align 4
@DM_IN_PROMPT = common dso_local global i32 0, align 4
@cmb2 = common dso_local global i32 0, align 4
@CB_GETCOUNT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @pagesetup_printer_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagesetup_printer_properties(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @pagesetup_get_devname(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @OpenPrinterW(i32 %13, i32* %5, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pagesetup_release_a_devname(i32* %18, i32 %19)
  br label %87

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @pagesetup_get_devmode(i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @DM_IN_BUFFER, align 4
  %30 = load i32, i32* @DM_OUT_BUFFER, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DM_IN_PROMPT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @DocumentPropertiesW(i32 %24, i32 %25, i32 %26, i32* %27, i32* %28, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @pagesetup_set_devmode(i32* %35, i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @pagesetup_release_devmode(i32* %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pagesetup_release_a_devname(i32* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ClosePrinter(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @pagesetup_update_papersize(i32* %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @pagesetup_update_orientation_buttons(i32 %48, i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @pagesetup_change_preview(i32* %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @cmb2, align 4
  %55 = load i32, i32* @CB_GETCOUNT, align 4
  %56 = call i64 @SendDlgItemMessageW(i32 %53, i32 %54, i32 %55, i32 0, i32 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CB_ERR, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %21
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @pagesetup_get_papersize(i32* %62)
  store i64 %63, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %83, %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @cmb2, align 4
  %71 = load i32, i32* @CB_GETITEMDATA, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @SendDlgItemMessageW(i32 %69, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @cmb2, align 4
  %79 = load i32, i32* @CB_SETCURSEL, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @SendDlgItemMessageW(i32 %77, i32 %78, i32 %79, i32 %80, i32 0)
  br label %86

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %64

86:                                               ; preds = %76, %64
  br label %87

87:                                               ; preds = %16, %86, %21
  ret void
}

declare dso_local i32 @pagesetup_get_devname(i32*) #1

declare dso_local i32 @OpenPrinterW(i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @pagesetup_release_a_devname(i32*, i32) #1

declare dso_local i32* @pagesetup_get_devmode(i32*) #1

declare dso_local i32 @DocumentPropertiesW(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @pagesetup_set_devmode(i32*, i32*) #1

declare dso_local i32 @pagesetup_release_devmode(i32*, i32*) #1

declare dso_local i32 @ClosePrinter(i32) #1

declare dso_local i32 @pagesetup_update_papersize(i32*) #1

declare dso_local i32 @pagesetup_update_orientation_buttons(i32, i32*) #1

declare dso_local i32 @pagesetup_change_preview(i32*) #1

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @pagesetup_get_papersize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
