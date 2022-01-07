; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_get_exe_name.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_get_exe_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exe_name = common dso_local global i32* null, align 8
@NUL = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@exe_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@MAX_ENV_PATH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_exe_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_exe_name() #0 {
  %1 = alloca [8192 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = load i32*, i32** @exe_name, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %7 = call i32 @GetModuleFileName(i32* null, i8* %6, i32 8191)
  %8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %9 = load i8, i8* %8, align 16
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @NUL, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32* @FullName_save(i8* %15, i32 %16)
  store i32* %17, i32** @exe_name, align 8
  br label %18

18:                                               ; preds = %14, %5
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i8*, i8** @exe_path, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %77

22:                                               ; preds = %19
  %23 = load i32*, i32** @exe_name, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %77

25:                                               ; preds = %22
  %26 = load i32*, i32** @exe_name, align 8
  %27 = load i32*, i32** @exe_name, align 8
  %28 = call i32* @gettail_sep(i32* %27)
  %29 = load i32*, i32** @exe_name, align 8
  %30 = ptrtoint i32* %28 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i8* @vim_strnsave(i32* %26, i32 %34)
  store i8* %35, i8** @exe_path, align 8
  %36 = load i8*, i8** @exe_path, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %76

38:                                               ; preds = %25
  %39 = call i8* @mch_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %2, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @STRLEN(i8* %43)
  %45 = load i8*, i8** @exe_path, align 8
  %46 = call i32 @STRLEN(i8* %45)
  %47 = add nsw i32 %44, %46
  %48 = add nsw i32 %47, 2
  %49 = icmp slt i32 %48, 8192
  br i1 %49, label %50, label %75

50:                                               ; preds = %42, %38
  %51 = load i8*, i8** %2, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %2, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @NUL, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %50
  %61 = load i8, i8* @NUL, align 1
  %62 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  store i8 %61, i8* %62, align 16
  br label %69

63:                                               ; preds = %53
  %64 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @STRCPY(i8* %64, i8* %65)
  %67 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %68 = call i32 @STRCAT(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %60
  %70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %71 = load i8*, i8** @exe_path, align 8
  %72 = call i32 @STRCAT(i8* %70, i8* %71)
  %73 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i64 0, i64 0
  %74 = call i32 @vim_setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %69, %42
  br label %76

76:                                               ; preds = %75, %25
  br label %77

77:                                               ; preds = %76, %22, %19
  ret void
}

declare dso_local i32 @GetModuleFileName(i32*, i8*, i32) #1

declare dso_local i32* @FullName_save(i8*, i32) #1

declare dso_local i8* @vim_strnsave(i32*, i32) #1

declare dso_local i32* @gettail_sep(i32*) #1

declare dso_local i8* @mch_getenv(i8*) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @STRCPY(i8*, i8*) #1

declare dso_local i32 @STRCAT(i8*, i8*) #1

declare dso_local i32 @vim_setenv(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
