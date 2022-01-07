; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_variable.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"${\00", align 1
@LEXEME_VARIABLE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@lex_variable_default = common dso_local global i8* null, align 8
@LEXEME_VARIABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@lex_config = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"EOF while scanning for end of variable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_variable(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %5 = load %struct.lexer*, %struct.lexer** %3, align 8
  %6 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = sub nsw i64 %6, 1
  %8 = call i32 @advance_n(%struct.lexer* %5, i64 %7)
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.lexer*, %struct.lexer** %3, align 8
  %11 = call i32 @next(%struct.lexer* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 58
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.lexer*, %struct.lexer** %3, align 8
  %16 = call i32 @backup(%struct.lexer* %15)
  %17 = load %struct.lexer*, %struct.lexer** %3, align 8
  %18 = load i32, i32* @LEXEME_VARIABLE_DEFAULT, align 4
  %19 = call i32 @emit(%struct.lexer* %17, i32 %18)
  %20 = load %struct.lexer*, %struct.lexer** %3, align 8
  %21 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @advance_n(%struct.lexer* %20, i64 %21)
  %23 = load i8*, i8** @lex_variable_default, align 8
  store i8* %23, i8** %2, align 8
  br label %45

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 125
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.lexer*, %struct.lexer** %3, align 8
  %29 = call i32 @backup(%struct.lexer* %28)
  %30 = load %struct.lexer*, %struct.lexer** %3, align 8
  %31 = load i32, i32* @LEXEME_VARIABLE, align 4
  %32 = call i32 @emit(%struct.lexer* %30, i32 %31)
  %33 = load %struct.lexer*, %struct.lexer** %3, align 8
  %34 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @advance_n(%struct.lexer* %33, i64 %34)
  %36 = load i8*, i8** @lex_config, align 8
  store i8* %36, i8** %2, align 8
  br label %45

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @isvariable(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %9, label %42

42:                                               ; preds = %38
  %43 = load %struct.lexer*, %struct.lexer** %3, align 8
  %44 = call i8* @lex_error(%struct.lexer* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %42, %27, %14
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @advance_n(%struct.lexer*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i32 @backup(%struct.lexer*) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

declare dso_local i64 @isvariable(i32) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
