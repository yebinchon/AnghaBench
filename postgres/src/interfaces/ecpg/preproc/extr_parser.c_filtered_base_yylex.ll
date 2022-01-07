; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_parser.c_filtered_base_yylex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_parser.c_filtered_base_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_lookahead = common dso_local global i32 0, align 4
@lookahead_token = common dso_local global i32 0, align 4
@lookahead_yylval = common dso_local global i32 0, align 4
@base_yylval = common dso_local global i32 0, align 4
@lookahead_yylloc = common dso_local global i32 0, align 4
@base_yylloc = common dso_local global i32 0, align 4
@lookahead_yytext = common dso_local global i8* null, align 8
@base_yytext = common dso_local global i8* null, align 8
@lookahead_hold_char = common dso_local global i8 0, align 1
@lookahead_end = common dso_local global i8* null, align 8
@NOT_LA = common dso_local global i32 0, align 4
@NULLS_LA = common dso_local global i32 0, align 4
@WITH_LA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filtered_base_yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @have_lookahead, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load i32, i32* @lookahead_token, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @lookahead_yylval, align 4
  store i32 %12, i32* @base_yylval, align 4
  %13 = load i32, i32* @lookahead_yylloc, align 4
  store i32 %13, i32* @base_yylloc, align 4
  %14 = load i8*, i8** @lookahead_yytext, align 8
  store i8* %14, i8** @base_yytext, align 8
  %15 = load i8, i8* @lookahead_hold_char, align 1
  %16 = load i8*, i8** @lookahead_end, align 8
  store i8 %15, i8* %16, align 1
  store i32 0, i32* @have_lookahead, align 4
  br label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @base_yylex()
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %24 [
    i32 133, label %21
    i32 132, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %19
  store i32 3, i32* %4, align 4
  br label %26

22:                                               ; preds = %19
  store i32 5, i32* %4, align 4
  br label %26

23:                                               ; preds = %19
  store i32 4, i32* %4, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %69

26:                                               ; preds = %23, %22, %21
  %27 = load i8*, i8** @base_yytext, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** @lookahead_end, align 8
  %31 = load i8*, i8** @lookahead_end, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32, i32* @base_yylval, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @base_yylloc, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** @base_yytext, align 8
  store i8* %39, i8** %7, align 8
  %40 = call i32 (...) @base_yylex()
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* @lookahead_token, align 4
  %42 = load i32, i32* @base_yylval, align 4
  store i32 %42, i32* @lookahead_yylval, align 4
  %43 = load i32, i32* @base_yylloc, align 4
  store i32 %43, i32* @lookahead_yylloc, align 4
  %44 = load i8*, i8** @base_yytext, align 8
  store i8* %44, i8** @lookahead_yytext, align 8
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* @base_yylval, align 4
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* @base_yylloc, align 4
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** @base_yytext, align 8
  %48 = load i8*, i8** @lookahead_end, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* @lookahead_hold_char, align 1
  %50 = load i8*, i8** @lookahead_end, align 8
  store i8 0, i8* %50, align 1
  store i32 1, i32* @have_lookahead, align 4
  %51 = load i32, i32* %2, align 4
  switch i32 %51, label %67 [
    i32 133, label %52
    i32 132, label %57
    i32 128, label %62
  ]

52:                                               ; preds = %26
  %53 = load i32, i32* %3, align 4
  switch i32 %53, label %56 [
    i32 139, label %54
    i32 136, label %54
    i32 134, label %54
    i32 137, label %54
    i32 130, label %54
  ]

54:                                               ; preds = %52, %52, %52, %52, %52
  %55 = load i32, i32* @NOT_LA, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %54
  br label %67

57:                                               ; preds = %26
  %58 = load i32, i32* %3, align 4
  switch i32 %58, label %61 [
    i32 138, label %59
    i32 135, label %59
  ]

59:                                               ; preds = %57, %57
  %60 = load i32, i32* @NULLS_LA, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %59
  br label %67

62:                                               ; preds = %26
  %63 = load i32, i32* %3, align 4
  switch i32 %63, label %66 [
    i32 129, label %64
    i32 131, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = load i32, i32* @WITH_LA, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %64
  br label %67

67:                                               ; preds = %26, %66, %61, %56
  %68 = load i32, i32* %2, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %24
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @base_yylex(...) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
