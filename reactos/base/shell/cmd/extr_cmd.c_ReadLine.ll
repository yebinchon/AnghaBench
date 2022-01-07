; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ReadLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_ReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@bc = common dso_local global i32* null, align 8
@STRING_MORE = common dso_local global i32 0, align 4
@bEcho = common dso_local global i64 0, align 8
@bIgnoreEcho = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bExit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BREAK_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ReadLine(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @CMDLINE_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** @bc, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @STRING_MORE, align 4
  %21 = call i32 @ConOutResPrintf(i32 %20)
  br label %34

22:                                               ; preds = %16
  %23 = load i64, i64* @bEcho, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @bIgnoreEcho, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i64 @_T(i8 signext 10)
  %30 = call i32 @ConOutChar(i64 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = call i32 (...) @PrintPrompt()
  br label %33

33:                                               ; preds = %31, %22
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* @CMDLINE_LENGTH, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @ReadCommand(i64* %13, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* @bExit, align 4
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %76

42:                                               ; preds = %34
  %43 = getelementptr inbounds i64, i64* %13, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = call i64 @_T(i8 signext 0)
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i64 @_T(i8 signext 10)
  %49 = call i32 @ConOutChar(i64 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @BREAK_INPUT, align 4
  %52 = call i64 @CheckCtrlBreak(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %76

56:                                               ; preds = %50
  %57 = getelementptr inbounds i64, i64* %13, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = call i64 @_T(i8 signext 0)
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %76

63:                                               ; preds = %56
  store i64* %13, i64** %8, align 8
  br label %71

64:                                               ; preds = %2
  %65 = call i64* (...) @ReadBatchLine()
  store i64* %65, i64** %8, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* @FALSE, align 8
  store i64 %69, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %76

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i64*, i64** %8, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = call i64 @_T(i8 signext 37)
  %75 = call i64 @SubstituteVars(i64* %72, i64* %73, i64 %74)
  store i64 %75, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %68, %61, %54, %39
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConOutResPrintf(i32) #2

declare dso_local i32 @ConOutChar(i64) #2

declare dso_local i64 @_T(i8 signext) #2

declare dso_local i32 @PrintPrompt(...) #2

declare dso_local i32 @ReadCommand(i64*, i32) #2

declare dso_local i64 @CheckCtrlBreak(i32) #2

declare dso_local i64* @ReadBatchLine(...) #2

declare dso_local i64 @SubstituteVars(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
