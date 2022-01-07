; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_UpdateDisplayMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_UpdateDisplayMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_FMT_NAME_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DISPLAY_MENU_POS = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_SEPARATOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@CMD_AUTOMATIC = common dso_local global i64 0, align 8
@MF_GRAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateDisplayMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateDisplayMenu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_FMT_NAME_LEN, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 2), align 4
  %12 = load i32, i32* @DISPLAY_MENU_POS, align 4
  %13 = call i32 @GetSubMenu(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %18, %0
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @GetMenuItemCount(i32 %15)
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MF_BYPOSITION, align 4
  %21 = call i32 @DeleteMenu(i32 %19, i32 1, i32 %20)
  br label %14

22:                                               ; preds = %14
  %23 = call i64 (...) @CountClipboardFormats()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %85

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %28 = call i32 @OpenClipboard(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %85

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @MF_SEPARATOR, align 4
  %34 = call i32 @AppendMenuW(i32 %32, i32 %33, i64 0, i32* null)
  %35 = call i64 @EnumClipboardFormats(i64 0)
  store i64 %35, i64* %1, align 8
  br label %36

36:                                               ; preds = %56, %31
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i64, i64* %1, align 8
  %41 = call i64 @IsClipboardFormatSupported(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %45 = load i64, i64* %1, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @ARRAYSIZE(i32* %10)
  %48 = call i32 @RetrieveClipboardFormatName(i32 %44, i64 %45, i32 %46, i32* %10, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @MF_STRING, align 4
  %51 = load i64, i64* @CMD_AUTOMATIC, align 8
  %52 = load i64, i64* %1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @AppendMenuW(i32 %49, i32 %50, i64 %53, i32* %10)
  br label %55

55:                                               ; preds = %43, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %1, align 8
  %58 = call i64 @EnumClipboardFormats(i64 %57)
  store i64 %58, i64* %1, align 8
  br label %36

59:                                               ; preds = %36
  %60 = call i64 @EnumClipboardFormats(i64 0)
  store i64 %60, i64* %1, align 8
  br label %61

61:                                               ; preds = %80, %59
  %62 = load i64, i64* %1, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i64, i64* %1, align 8
  %66 = call i64 @IsClipboardFormatSupported(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %70 = load i64, i64* %1, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @ARRAYSIZE(i32* %10)
  %73 = call i32 @RetrieveClipboardFormatName(i32 %69, i64 %70, i32 %71, i32* %10, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @MF_STRING, align 4
  %76 = load i32, i32* @MF_GRAYED, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @AppendMenuW(i32 %74, i32 %77, i64 0, i32* %10)
  br label %79

79:                                               ; preds = %68, %64
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %1, align 8
  %82 = call i64 @EnumClipboardFormats(i64 %81)
  store i64 %82, i64* %1, align 8
  br label %61

83:                                               ; preds = %61
  %84 = call i32 (...) @CloseClipboard()
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %30, %25
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSubMenu(i32, i32) #2

declare dso_local i32 @GetMenuItemCount(i32) #2

declare dso_local i32 @DeleteMenu(i32, i32, i32) #2

declare dso_local i64 @CountClipboardFormats(...) #2

declare dso_local i32 @OpenClipboard(i32) #2

declare dso_local i32 @AppendMenuW(i32, i32, i64, i32*) #2

declare dso_local i64 @EnumClipboardFormats(i64) #2

declare dso_local i64 @IsClipboardFormatSupported(i64) #2

declare dso_local i32 @RetrieveClipboardFormatName(i32, i64, i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @CloseClipboard(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
