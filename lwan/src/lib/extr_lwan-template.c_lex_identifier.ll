; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_identifier.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@LEXEME_IDENTIFIER = common dso_local global i32 0, align 4
@lex_inside_action = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_identifier(%struct.lexer* %0) #0 {
  %2 = alloca %struct.lexer*, align 8
  store %struct.lexer* %0, %struct.lexer** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.lexer*, %struct.lexer** %2, align 8
  %5 = call i32 @next(%struct.lexer* %4)
  %6 = call i64 @isident(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %3

9:                                                ; preds = %3
  %10 = load %struct.lexer*, %struct.lexer** %2, align 8
  %11 = call i32 @backup(%struct.lexer* %10)
  %12 = load %struct.lexer*, %struct.lexer** %2, align 8
  %13 = load i32, i32* @LEXEME_IDENTIFIER, align 4
  %14 = call i32 @emit(%struct.lexer* %12, i32 %13)
  %15 = load i8*, i8** @lex_inside_action, align 8
  ret i8* %15
}

declare dso_local i64 @isident(i32) #1

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i32 @backup(%struct.lexer*) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
