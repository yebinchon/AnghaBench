; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_MenuCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_MenuCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @NOTEPAD_MenuCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NOTEPAD_MenuCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %50 [
    i32 142, label %4
    i32 141, label %6
    i32 136, label %8
    i32 135, label %10
    i32 138, label %12
    i32 140, label %14
    i32 147, label %16
    i32 129, label %18
    i32 149, label %20
    i32 150, label %22
    i32 139, label %24
    i32 148, label %26
    i32 132, label %28
    i32 130, label %30
    i32 134, label %32
    i32 133, label %34
    i32 137, label %36
    i32 145, label %38
    i32 128, label %40
    i32 146, label %42
    i32 131, label %44
    i32 143, label %46
    i32 144, label %48
  ]

4:                                                ; preds = %1
  %5 = call i32 (...) @DIALOG_FileNew()
  br label %51

6:                                                ; preds = %1
  %7 = call i32 (...) @DIALOG_FileOpen()
  br label %51

8:                                                ; preds = %1
  %9 = call i32 (...) @DIALOG_FileSave()
  br label %51

10:                                               ; preds = %1
  %11 = call i32 (...) @DIALOG_FileSaveAs()
  br label %51

12:                                               ; preds = %1
  %13 = call i32 (...) @DIALOG_FilePrint()
  br label %51

14:                                               ; preds = %1
  %15 = call i32 (...) @DIALOG_FilePageSetup()
  br label %51

16:                                               ; preds = %1
  %17 = call i32 (...) @DIALOG_FileExit()
  br label %51

18:                                               ; preds = %1
  %19 = call i32 (...) @DIALOG_EditUndo()
  br label %51

20:                                               ; preds = %1
  %21 = call i32 (...) @DIALOG_EditCut()
  br label %51

22:                                               ; preds = %1
  %23 = call i32 (...) @DIALOG_EditCopy()
  br label %51

24:                                               ; preds = %1
  %25 = call i32 (...) @DIALOG_EditPaste()
  br label %51

26:                                               ; preds = %1
  %27 = call i32 (...) @DIALOG_EditDelete()
  br label %51

28:                                               ; preds = %1
  %29 = call i32 (...) @DIALOG_EditSelectAll()
  br label %51

30:                                               ; preds = %1
  %31 = call i32 (...) @DIALOG_EditTimeDate()
  br label %51

32:                                               ; preds = %1
  %33 = call i32 (...) @DIALOG_Search()
  br label %51

34:                                               ; preds = %1
  %35 = call i32 (...) @DIALOG_SearchNext()
  br label %51

36:                                               ; preds = %1
  %37 = call i32 (...) @DIALOG_Replace()
  br label %51

38:                                               ; preds = %1
  %39 = call i32 (...) @DIALOG_GoTo()
  br label %51

40:                                               ; preds = %1
  %41 = call i32 (...) @DIALOG_EditWrap()
  br label %51

42:                                               ; preds = %1
  %43 = call i32 (...) @DIALOG_SelectFont()
  br label %51

44:                                               ; preds = %1
  %45 = call i32 (...) @DIALOG_ViewStatusBar()
  br label %51

46:                                               ; preds = %1
  %47 = call i32 (...) @DIALOG_HelpContents()
  br label %51

48:                                               ; preds = %1
  %49 = call i32 (...) @DIALOG_HelpAboutNotepad()
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret i32 0
}

declare dso_local i32 @DIALOG_FileNew(...) #1

declare dso_local i32 @DIALOG_FileOpen(...) #1

declare dso_local i32 @DIALOG_FileSave(...) #1

declare dso_local i32 @DIALOG_FileSaveAs(...) #1

declare dso_local i32 @DIALOG_FilePrint(...) #1

declare dso_local i32 @DIALOG_FilePageSetup(...) #1

declare dso_local i32 @DIALOG_FileExit(...) #1

declare dso_local i32 @DIALOG_EditUndo(...) #1

declare dso_local i32 @DIALOG_EditCut(...) #1

declare dso_local i32 @DIALOG_EditCopy(...) #1

declare dso_local i32 @DIALOG_EditPaste(...) #1

declare dso_local i32 @DIALOG_EditDelete(...) #1

declare dso_local i32 @DIALOG_EditSelectAll(...) #1

declare dso_local i32 @DIALOG_EditTimeDate(...) #1

declare dso_local i32 @DIALOG_Search(...) #1

declare dso_local i32 @DIALOG_SearchNext(...) #1

declare dso_local i32 @DIALOG_Replace(...) #1

declare dso_local i32 @DIALOG_GoTo(...) #1

declare dso_local i32 @DIALOG_EditWrap(...) #1

declare dso_local i32 @DIALOG_SelectFont(...) #1

declare dso_local i32 @DIALOG_ViewStatusBar(...) #1

declare dso_local i32 @DIALOG_HelpContents(...) #1

declare dso_local i32 @DIALOG_HelpAboutNotepad(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
