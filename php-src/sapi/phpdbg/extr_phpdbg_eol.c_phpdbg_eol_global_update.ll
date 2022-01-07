; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_eol.c_phpdbg_eol_global_update.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_eol.c_phpdbg_eol_global_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"CRLF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DOS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@PHPDBG_EOL_CRLF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"UNIX\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@PHPDBG_EOL_LF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@PHPDBG_EOL_CR = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phpdbg_eol_global_update(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 0, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 0, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 0, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %10, %1
  %23 = load i32, i32* @PHPDBG_EOL_CRLF, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 0, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp eq i64 0, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %35 = icmp eq i64 0, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32, %28, %24
  %41 = load i32, i32* @PHPDBG_EOL_LF, align 4
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %45 = icmp eq i64 0, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %49 = icmp eq i64 0, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %53 = icmp eq i64 0, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %57 = icmp eq i64 0, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50, %46, %42
  %59 = load i32, i32* @PHPDBG_EOL_CR, align 4
  store i32 %59, i32* %6, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FAILURE, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* @SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
