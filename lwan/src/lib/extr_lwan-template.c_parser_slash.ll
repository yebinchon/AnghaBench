; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_slash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_parser_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.lexeme = type { i64 }

@LEXEME_IDENTIFIER = common dso_local global i64 0, align 8
@LEXEME_RIGHT_META = common dso_local global i64 0, align 8
@LEXEME_QUESTION_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, %struct.lexeme*)* @parser_slash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_slash(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca %struct.lexeme*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %7 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %8 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LEXEME_IDENTIFIER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = getelementptr inbounds %struct.parser, %struct.parser* %13, i32 0, i32 0
  %15 = call %struct.lexeme* @lex_next(i32* %14)
  store %struct.lexeme* %15, %struct.lexeme** %6, align 8
  %16 = icmp ne %struct.lexeme* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %19 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LEXEME_RIGHT_META, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.parser*, %struct.parser** %4, align 8
  %25 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %26 = call i8* @parser_end_iter(%struct.parser* %24, %struct.lexeme* %25)
  store i8* %26, i8** %3, align 8
  br label %44

27:                                               ; preds = %17
  %28 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %29 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LEXEME_QUESTION_MARK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.parser*, %struct.parser** %4, align 8
  %35 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %36 = call i8* @parser_end_var_not_empty(%struct.parser* %34, %struct.lexeme* %35)
  store i8* %36, i8** %3, align 8
  br label %44

37:                                               ; preds = %27
  %38 = load %struct.lexeme*, %struct.lexeme** %6, align 8
  %39 = call i8* @unexpected_lexeme(%struct.lexeme* %38)
  store i8* %39, i8** %3, align 8
  br label %44

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %43 = call i8* @unexpected_lexeme(%struct.lexeme* %42)
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %41, %37, %33, %23
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local %struct.lexeme* @lex_next(i32*) #1

declare dso_local i8* @parser_end_iter(%struct.parser*, %struct.lexeme*) #1

declare dso_local i8* @parser_end_var_not_empty(%struct.parser*, %struct.lexeme*) #1

declare dso_local i8* @unexpected_lexeme(%struct.lexeme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
