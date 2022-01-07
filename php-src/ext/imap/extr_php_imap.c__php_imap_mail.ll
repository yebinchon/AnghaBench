; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_imap_mail.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_imap_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"sendmail_path\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Cc: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Bcc: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Subject: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"Could not execute mail delivery program\00", align 1
@ERRHOST = common dso_local global i32 0, align 4
@PHP_IMAP_BAD_DEST = common dso_local global i32 0, align 4
@PHP_IMAP_CLEAN = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_php_imap_mail(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = call i32 @INI_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %90

21:                                               ; preds = %7
  %22 = call i32 @INI_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @popen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %21
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8*, i8** %15, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %16, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %29, %26
  %40 = load i32*, i32** %16, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32*, i32** %16, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @fprintf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %45, %39
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** %16, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %58, %55
  %69 = load i32*, i32** %16, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @fprintf(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %16, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @fprintf(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32*, i32** %16, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @fprintf(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @pclose(i32* %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, -1
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %90

87:                                               ; preds = %21
  %88 = load i32, i32* @E_WARNING, align 4
  %89 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %78, %20
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @INI_STR(i8*) #1

declare dso_local i32* @popen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
