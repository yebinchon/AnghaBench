; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_hashline_number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_hashline_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0A#line %d \22%s\22\0A\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A#line %d \22\00", align 1
@base_yylineno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@EMPTY = common dso_local global i8* null, align 8
@base_yydebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hashline_number() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i8*, i8** @input_filename, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %60

7:                                                ; preds = %0
  %8 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @CHAR_BIT, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = mul i64 %12, 10
  %14 = udiv i64 %13, 3
  %15 = add i64 %9, %14
  %16 = load i8*, i8** @input_filename, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add i64 %15, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @mm_alloc(i32 %21)
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @base_yylineno, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** @input_filename, align 8
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %49, %7
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 92, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = load i8, i8* %50, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 %52, i8* %53, align 1
  br label %32

55:                                               ; preds = %32
  %56 = load i8*, i8** %4, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strcat(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %2, align 8
  store i8* %59, i8** %1, align 8
  br label %62

60:                                               ; preds = %0
  %61 = load i8*, i8** @EMPTY, align 8
  store i8* %61, i8** %1, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i8*, i8** %1, align 8
  ret i8* %63
}

declare dso_local i8* @mm_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
