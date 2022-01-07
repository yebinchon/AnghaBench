; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_cmd_mkdir.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_cmd_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STRING_MKDIR_HELP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STRING_ERROR_REQ_PARAM_MISSING = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i64 0, align 8
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@STRING_MD_ERROR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"MD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cmd_mkdir(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @_tcsncmp(i32 %7, i32 %8, i32 2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @TRUE, align 4
  %13 = load i32, i32* @STRING_MKDIR_HELP, align 4
  %14 = call i32 @ConOutResPaging(i32 %12, i32 %13)
  store i64 0, i64* %2, align 8
  br label %59

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32* @split(i32 %16, i64* %5, i32 %17, i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @STRING_ERROR_REQ_PARAM_MISSING, align 4
  %24 = call i32 @ConErrResPuts(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @freep(i32* %25)
  store i64 1, i64* @nErrorLevel, align 8
  store i64 1, i64* %2, align 8
  br label %59

27:                                               ; preds = %15
  store i64 0, i64* @nErrorLevel, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MakeFullPath(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @STRING_MD_ERROR2, align 4
  %45 = call i32 @ConErrResPuts(i32 %44)
  br label %50

46:                                               ; preds = %39
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @ErrorMessage(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  store i64 1, i64* @nErrorLevel, align 8
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %28

55:                                               ; preds = %28
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @freep(i32* %56)
  %58 = load i64, i64* @nErrorLevel, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %55, %22, %11
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i32 @_tcsncmp(i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ConOutResPaging(i32, i32) #1

declare dso_local i32* @split(i32, i64*, i32, i32) #1

declare dso_local i32 @ConErrResPuts(i32) #1

declare dso_local i32 @freep(i32*) #1

declare dso_local i32 @MakeFullPath(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ErrorMessage(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
