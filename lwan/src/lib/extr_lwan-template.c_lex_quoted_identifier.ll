; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_quoted_identifier.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_quoted_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@LEXEME_OPEN_CURLY_BRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"expecting `}', found `%c'\00", align 1
@LEXEME_CLOSE_CURLY_BRACE = common dso_local global i32 0, align 4
@lex_inside_action = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_quoted_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_quoted_identifier(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %5 = load %struct.lexer*, %struct.lexer** %3, align 8
  %6 = load i32, i32* @LEXEME_OPEN_CURLY_BRACE, align 4
  %7 = call i32 @emit(%struct.lexer* %5, i32 %6)
  %8 = load %struct.lexer*, %struct.lexer** %3, align 8
  %9 = call i32 @lex_identifier(%struct.lexer* %8)
  %10 = load %struct.lexer*, %struct.lexer** %3, align 8
  %11 = call i32 @next(%struct.lexer* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 125
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.lexer*, %struct.lexer** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @lex_error(%struct.lexer* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %2, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.lexer*, %struct.lexer** %3, align 8
  %20 = load i32, i32* @LEXEME_CLOSE_CURLY_BRACE, align 4
  %21 = call i32 @emit(%struct.lexer* %19, i32 %20)
  %22 = load i8*, i8** @lex_inside_action, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i32 @emit(%struct.lexer*, i32) #1

declare dso_local i32 @lex_identifier(%struct.lexer*) #1

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
