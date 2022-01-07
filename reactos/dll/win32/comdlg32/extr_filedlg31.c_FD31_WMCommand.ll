; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_WMCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LBN_DBLCLK = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@LBN_SELCHANGE = common dso_local global i32 0, align 4
@CBN_SELCHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"OK pressed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @FD31_WMCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_WMCommand(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %83 [
    i32 130, label %13
    i32 129, label %32
    i32 132, label %42
    i32 133, label %50
    i32 128, label %51
    i32 131, label %52
    i32 134, label %60
    i32 135, label %73
    i32 136, label %78
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @FD31_StripEditControl(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @LBN_DBLCLK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @WM_COMMAND, align 4
  %22 = call i32 @SendMessageW(i32 %20, i32 %21, i32 134, i32 0)
  store i32 %22, i32* %6, align 4
  br label %85

23:                                               ; preds = %13
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LBN_SELCHANGE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @FD31_FileListSelect(i32* %28)
  store i32 %29, i32* %6, align 4
  br label %85

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  br label %83

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FD31_StripEditControl(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LBN_DBLCLK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @FD31_DirListDblClick(i32* %39)
  store i32 %40, i32* %6, align 4
  br label %85

41:                                               ; preds = %32
  br label %83

42:                                               ; preds = %5
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CBN_SELCHANGE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @FD31_FileTypeChange(i32* %47)
  store i32 %48, i32* %6, align 4
  br label %85

49:                                               ; preds = %42
  br label %83

50:                                               ; preds = %5
  br label %83

51:                                               ; preds = %5
  br label %83

52:                                               ; preds = %5
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @CBN_SELCHANGE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @FD31_DiskChange(i32* %57)
  store i32 %58, i32* %6, align 4
  br label %85

59:                                               ; preds = %52
  br label %83

60:                                               ; preds = %5
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @FD31_Validate(i32* %62, i32* null, i32 %63, i32 0, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @EndDialog(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %6, align 4
  br label %85

73:                                               ; preds = %5
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @EndDialog(i32 %74, i32 %75)
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %6, align 4
  br label %85

78:                                               ; preds = %5
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @EndDialog(i32 %79, i32 %80)
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %5, %59, %51, %50, %49, %41, %31
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %78, %73, %71, %56, %46, %38, %27, %19
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @FD31_StripEditControl(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @FD31_FileListSelect(i32*) #1

declare dso_local i32 @FD31_DirListDblClick(i32*) #1

declare dso_local i32 @FD31_FileTypeChange(i32*) #1

declare dso_local i32 @FD31_DiskChange(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FD31_Validate(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @EndDialog(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
