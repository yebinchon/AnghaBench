; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_variable_default.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_variable_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@LEXEME_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@lex_config = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"EOF while scanning for end of variable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_variable_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_variable_default(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.lexer*, %struct.lexer** %3, align 8
  %7 = call i32 @next(%struct.lexer* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 125
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.lexer*, %struct.lexer** %3, align 8
  %12 = call i32 @backup(%struct.lexer* %11)
  %13 = load %struct.lexer*, %struct.lexer** %3, align 8
  %14 = load i32, i32* @LEXEME_STRING, align 4
  %15 = call i32 @emit(%struct.lexer* %13, i32 %14)
  %16 = load %struct.lexer*, %struct.lexer** %3, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @advance_n(%struct.lexer* %16, i32 %17)
  %19 = load i8*, i8** @lex_config, align 8
  store i8* %19, i8** %2, align 8
  br label %27

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %5, label %24

24:                                               ; preds = %21
  %25 = load %struct.lexer*, %struct.lexer** %3, align 8
  %26 = call i8* @lex_error(%struct.lexer* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i32 @backup(%struct.lexer*) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

declare dso_local i32 @advance_n(%struct.lexer*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
