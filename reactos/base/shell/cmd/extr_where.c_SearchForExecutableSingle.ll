; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_where.c_SearchForExecutableSingle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_where.c_SearchForExecutableSingle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"SearchForExecutableSingle: '%s' in dir: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Found: '%s'\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SearchForExecutableSingle(i8** %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i32, i32* @CMDLINE_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = call i8* @_T(i8 signext 0)
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = call i32 @debugstr_aw(i8** %22)
  %24 = load i8**, i8*** %9, align 8
  %25 = call i32 @debugstr_aw(i8** %24)
  %26 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  store i8** %19, i8*** %12, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i8**, i8*** %9, align 8
  %31 = call i32 @_tcscpy(i8** %19, i8** %30)
  %32 = load i8**, i8*** %12, align 8
  %33 = call i32 @_tcslen(i8** %32)
  %34 = load i8**, i8*** %12, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8** %36, i8*** %12, align 8
  %37 = call i8* @_T(i8 signext 92)
  %38 = load i8**, i8*** %12, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %12, align 8
  store i8* %37, i8** %38, align 8
  br label %40

40:                                               ; preds = %29, %4
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = call i32 @_tcscpy(i8** %41, i8** %42)
  %44 = load i8**, i8*** %12, align 8
  %45 = call i32 @_tcslen(i8** %44)
  %46 = load i8**, i8*** %12, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8** %48, i8*** %12, align 8
  %49 = call i64 @IsExistingFile(i8** %19)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = call i32 @debugstr_aw(i8** %19)
  %53 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i8**, i8*** %7, align 8
  %55 = call i32 @_tcscpy(i8** %54, i8** %19)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %111

57:                                               ; preds = %40
  %58 = load i8**, i8*** %8, align 8
  store i8** %58, i8*** %13, align 8
  br label %59

59:                                               ; preds = %108, %57
  %60 = load i8**, i8*** %13, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8**, i8*** %13, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %109

68:                                               ; preds = %66
  %69 = load i8**, i8*** %13, align 8
  %70 = call i8* @_T(i8 signext 59)
  %71 = call i8** @_tcschr(i8** %69, i8* %70)
  store i8** %71, i8*** %14, align 8
  %72 = load i8**, i8*** %14, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load i8**, i8*** %12, align 8
  %76 = load i8**, i8*** %13, align 8
  %77 = load i8**, i8*** %14, align 8
  %78 = load i8**, i8*** %13, align 8
  %79 = ptrtoint i8** %77 to i64
  %80 = ptrtoint i8** %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = call i32 @_tcsncpy(i8** %75, i8** %76, i64 %82)
  %84 = call i8* @_T(i8 signext 0)
  %85 = load i8**, i8*** %12, align 8
  %86 = load i8**, i8*** %14, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = ptrtoint i8** %86 to i64
  %89 = ptrtoint i8** %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = getelementptr inbounds i8*, i8** %85, i64 %91
  store i8* %84, i8** %92, align 8
  %93 = load i8**, i8*** %14, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  store i8** %94, i8*** %13, align 8
  br label %99

95:                                               ; preds = %68
  %96 = load i8**, i8*** %12, align 8
  %97 = load i8**, i8*** %13, align 8
  %98 = call i32 @_tcscpy(i8** %96, i8** %97)
  store i8** null, i8*** %13, align 8
  br label %99

99:                                               ; preds = %95, %74
  %100 = call i64 @IsExistingFile(i8** %19)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = call i32 @debugstr_aw(i8** %19)
  %104 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i8**, i8*** %7, align 8
  %106 = call i32 @_tcscpy(i8** %105, i8** %19)
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %111

108:                                              ; preds = %99
  br label %59

109:                                              ; preds = %66
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %109, %102, %51
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_T(i8 signext) #2

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @debugstr_aw(i8**) #2

declare dso_local i32 @_tcscpy(i8**, i8**) #2

declare dso_local i32 @_tcslen(i8**) #2

declare dso_local i64 @IsExistingFile(i8**) #2

declare dso_local i8** @_tcschr(i8**, i8*) #2

declare dso_local i32 @_tcsncpy(i8**, i8**, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
