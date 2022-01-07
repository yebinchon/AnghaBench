; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_save.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_reg_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 121, i32 0], align 4
@STRING_OVERWRITE_FILE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@STRING_INVALID_KEY = common dso_local global i32 0, align 4
@SE_BACKUP_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@REG_LATEST_FORMAT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@STRING_INVALID_SYNTAX = common dso_local global i32 0, align 4
@STRING_FUNC_HELP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @reg_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_save(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %90

17:                                               ; preds = %13
  %18 = load i32**, i32*** %5, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @parse_registry_key(i32* %20, i32* %6, i32** %9, i32** %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %99

24:                                               ; preds = %17
  %25 = load i32**, i32*** %5, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @GetFileAttributes(i32* %27)
  %29 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32**, i32*** %5, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 4
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @strcmpiW(i32* %37, i8* bitcast ([3 x i32]* @.str to i8*))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32**, i32*** %5, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @DeleteFile(i32* %43)
  br label %58

45:                                               ; preds = %34, %31
  %46 = load i32, i32* @STRING_OVERWRITE_FILE, align 4
  %47 = load i32**, i32*** %5, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @ask_confirm(i32 %46, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @DeleteFile(i32* %55)
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @KEY_READ, align 4
  %63 = call i64 @RegOpenKeyExW(i32 %60, i32* %61, i32 0, i32 %62, i32* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @STRING_INVALID_KEY, align 4
  %67 = call i32 (i32, ...) @output_message(i32 %66)
  store i32 1, i32* %3, align 4
  br label %99

68:                                               ; preds = %59
  %69 = load i32, i32* @SE_BACKUP_NAME, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @set_privilege(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %99

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32**, i32*** %5, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @REG_LATEST_FORMAT, align 4
  %80 = call i64 @RegSaveKeyExW(i32 %75, i32* %78, i32* null, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @RegCloseKey(i32 %81)
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @output_error(i64 %87)
  store i32 1, i32* %3, align 4
  br label %99

89:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %99

90:                                               ; preds = %16
  %91 = load i32, i32* @STRING_INVALID_SYNTAX, align 4
  %92 = call i32 (i32, ...) @output_message(i32 %91)
  %93 = load i32, i32* @STRING_FUNC_HELP, align 4
  %94 = load i32**, i32*** %5, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @struprW(i32* %96)
  %98 = call i32 (i32, ...) @output_message(i32 %93, i32 %97)
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %90, %89, %86, %73, %65, %23
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @parse_registry_key(i32*, i32*, i32**, i32**) #1

declare dso_local i64 @GetFileAttributes(i32*) #1

declare dso_local i32 @strcmpiW(i32*, i8*) #1

declare dso_local i32 @DeleteFile(i32*) #1

declare dso_local i64 @ask_confirm(i32, i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @output_message(i32, ...) #1

declare dso_local i32 @set_privilege(i32, i32) #1

declare dso_local i64 @RegSaveKeyExW(i32, i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @output_error(i64) #1

declare dso_local i32 @struprW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
