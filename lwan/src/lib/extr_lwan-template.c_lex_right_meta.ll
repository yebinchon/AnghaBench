; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_right_meta.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_right_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@right_meta = common dso_local global i32 0, align 4
@LEXEME_RIGHT_META = common dso_local global i32 0, align 4
@lex_text = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_right_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_right_meta(%struct.lexer* %0) #0 {
  %2 = alloca %struct.lexer*, align 8
  store %struct.lexer* %0, %struct.lexer** %2, align 8
  %3 = load i32, i32* @right_meta, align 4
  %4 = call i64 @strlen(i32 %3)
  %5 = load %struct.lexer*, %struct.lexer** %2, align 8
  %6 = getelementptr inbounds %struct.lexer, %struct.lexer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lexer*, %struct.lexer** %2, align 8
  %12 = load i32, i32* @LEXEME_RIGHT_META, align 4
  %13 = call i32 @emit(%struct.lexer* %11, i32 %12)
  %14 = load i8*, i8** @lex_text, align 8
  ret i8* %14
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
