; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_FilePromptYNA.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_FilePromptYNA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RC_STRING_MAX_SIZE = common dso_local global i32 0, align 4
@CMD_ModuleHandle = common dso_local global i32 0, align 4
@STRING_COPY_OPTION = common dso_local global i32 0, align 4
@PROMPT_YES = common dso_local global i32 0, align 4
@PROMPT_NO = common dso_local global i32 0, align 4
@PROMPT_ALL = common dso_local global i32 0, align 4
@LEFT_CTRL_PRESSED = common dso_local global i32 0, align 4
@PROMPT_BREAK = common dso_local global i32 0, align 4
@RIGHT_CTRL_PRESSED = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i64 0, align 8
@VK_ESCAPE = common dso_local global i64 0, align 8
@VK_MENU = common dso_local global i64 0, align 8
@VK_SHIFT = common dso_local global i64 0, align 8
@cKey = common dso_local global i32* null, align 8
@ir = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@szKeys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilePromptYNA(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [10 x i64], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i32, i32* @RC_STRING_MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @ConOutResPrintf(i64 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %20 = call i32 @ConInString(i64* %19, i32 10)
  %21 = call i64 @_T(i8 signext 10)
  %22 = call i32 @ConOutChar(i64 %21)
  %23 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %24 = call i32 @_tcsupr(i64* %23)
  %25 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  store i64* %25, i64** %7, align 8
  br label %26

26:                                               ; preds = %32, %18
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @_istspace(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  br label %26

35:                                               ; preds = %26
  %36 = load i32, i32* @CMD_ModuleHandle, align 4
  %37 = load i32, i32* @STRING_COPY_OPTION, align 4
  %38 = call i32 @ARRAYSIZE(i64* %12)
  %39 = call i32 @LoadString(i32 %36, i32 %37, i64* %12, i32 %38)
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %12, i64 0
  %42 = call i64 @_tcsncmp(i64* %40, i64* %41, i32 1)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @PROMPT_YES, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %12, i64 1
  %49 = call i64 @_tcsncmp(i64* %47, i64* %48, i32 1)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @PROMPT_NO, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %12, i64 2
  %56 = call i64 @_tcsncmp(i64* %54, i64* %55, i32 1)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @PROMPT_ALL, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @PROMPT_NO, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %58, %51, %44
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConOutResPrintf(i64) #2

declare dso_local i32 @ConInString(i64*, i32) #2

declare dso_local i32 @ConOutChar(i64) #2

declare dso_local i64 @_T(i8 signext) #2

declare dso_local i32 @_tcsupr(i64*) #2

declare dso_local i64 @_istspace(i64) #2

declare dso_local i32 @LoadString(i32, i32, i64*, i32) #2

declare dso_local i32 @ARRAYSIZE(i64*) #2

declare dso_local i64 @_tcsncmp(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
