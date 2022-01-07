; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_check_file_excluded.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_check_file_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@excludeFiles = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"entry \22%s\22 excluded from source file list\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"entry \22%s\22 excluded from target file list\00", align 1
@excludeDirContents = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_file_excluded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_excluded(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %52, %2
  %16 = load i32**, i32*** @excludeFiles, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @last_dir_separator(i8* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %9, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i32**, i32*** @excludeFiles, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @strcmp(i8* %33, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @pg_log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @pg_log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %90

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %15

55:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %86, %55
  %57 = load i8**, i8*** @excludeDirContents, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = trunc i64 %12 to i32
  %65 = load i8**, i8*** @excludeDirContents, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @snprintf(i8* %14, i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @strstr(i8* %71, i8* %14)
  %73 = load i8*, i8** %4, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @pg_log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %79)
  br label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @pg_log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %90

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %56

89:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %84, %50
  %91 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @last_dir_separator(i8*) #2

declare dso_local i64 @strcmp(i8*, i32*) #2

declare dso_local i32 @pg_log_debug(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
