; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_can_exe.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_can_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@p_sh = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PATHEXT\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c".com;.exe;.bat;.cmd\00", align 1
@NUL = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_can_exe(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @_MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @STRLEN(i8* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @_MAX_PATH, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @gettail(i8* %24)
  %26 = call i32* @vim_strchr(i64 %25, i8 signext 46)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** @p_sh, align 8
  %30 = call i64 @gettail(i8* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32* @strstr(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28, %23
  %35 = load i8*, i8** %4, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = call i64 @executable_exists(i8* %35, i8** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @_MAX_PATH, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @vim_strncpy(i8* %14, i8* %43, i32 %45)
  %47 = call i8* @mch_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %104, %51
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @NUL, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 59
  br i1 %75, label %76, label %90

76:                                               ; preds = %70, %62
  %77 = load i8, i8* @NUL, align 1
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %14, i64 %79
  store i8 %77, i8* %80, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  br label %89

89:                                               ; preds = %86, %76
  br label %98

90:                                               ; preds = %70, %56
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %14, i64 %92
  %94 = load i32, i32* @_MAX_PATH, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @copy_option_part(i8** %9, i8* %93, i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %90, %89
  %99 = load i8**, i8*** %5, align 8
  %100 = call i64 @executable_exists(i8* %14, i8** %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

104:                                              ; preds = %98
  br label %52

105:                                              ; preds = %52
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %105, %102, %39, %21
  %108 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @STRLEN(i8*) #2

declare dso_local i32* @vim_strchr(i64, i8 signext) #2

declare dso_local i64 @gettail(i8*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i64 @executable_exists(i8*, i8**) #2

declare dso_local i32 @vim_strncpy(i8*, i8*, i32) #2

declare dso_local i8* @mch_getenv(i8*) #2

declare dso_local i32 @copy_option_part(i8**, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
