; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_InitMenuPopup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_InitMenuPopup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CMD_WRAP = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@CMD_STATUSBAR = common dso_local global i32 0, align 4
@CMD_UNDO = common dso_local global i32 0, align 4
@EM_CANUNDO = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@CMD_PASTE = common dso_local global i32 0, align 4
@CF_TEXT = common dso_local global i32 0, align 4
@EM_GETSEL = common dso_local global i32 0, align 4
@CMD_CUT = common dso_local global i32 0, align 4
@CMD_COPY = common dso_local global i32 0, align 4
@CMD_DELETE = common dso_local global i32 0, align 4
@CMD_SELECT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @NOTEPAD_InitMenuPopup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NOTEPAD_InitMenuPopup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @UNREFERENCED_PARAMETER(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 8
  %10 = call i32 @GetMenu(i32 %9)
  %11 = load i32, i32* @CMD_WRAP, align 4
  %12 = load i32, i32* @MF_BYCOMMAND, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 3), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @MF_CHECKED, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MF_UNCHECKED, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = or i32 %12, %20
  %22 = call i32 @CheckMenuItem(i32 %10, i32 %11, i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 3), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 8
  %27 = call i32 @GetMenu(i32 %26)
  %28 = load i32, i32* @CMD_STATUSBAR, align 4
  %29 = load i32, i32* @MF_BYCOMMAND, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 2), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @MF_CHECKED, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @MF_UNCHECKED, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = or i32 %29, %37
  %39 = call i32 @CheckMenuItem(i32 %27, i32 %28, i32 %38)
  br label %40

40:                                               ; preds = %36, %19
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @CMD_UNDO, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %44 = load i32, i32* @EM_CANUNDO, align 4
  %45 = call i64 @SendMessage(i32 %43, i32 %44, i32 0, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @MF_ENABLED, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @MF_GRAYED, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @EnableMenuItem(i32 %41, i32 %42, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CMD_PASTE, align 4
  %56 = load i32, i32* @CF_TEXT, align 4
  %57 = call i64 @IsClipboardFormatAvailable(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @MF_ENABLED, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @MF_GRAYED, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @EnableMenuItem(i32 %54, i32 %55, i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %67 = load i32, i32* @EM_GETSEL, align 4
  %68 = call i64 @SendMessage(i32 %66, i32 %67, i32 0, i32 0)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @HIWORD(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @LOWORD(i32 %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @MF_GRAYED, align 4
  br label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @MF_ENABLED, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @CMD_CUT, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @EnableMenuItem(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @CMD_COPY, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @EnableMenuItem(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CMD_DELETE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @EnableMenuItem(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @CMD_SELECT_ALL, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %96 = call i64 @GetWindowTextLength(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = load i32, i32* @MF_ENABLED, align 4
  br label %102

100:                                              ; preds = %79
  %101 = load i32, i32* @MF_GRAYED, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @EnableMenuItem(i32 %93, i32 %94, i32 %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 8
  %106 = call i32 @DrawMenuBar(i32 %105)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @IsClipboardFormatAvailable(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @GetWindowTextLength(i32) #1

declare dso_local i32 @DrawMenuBar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
