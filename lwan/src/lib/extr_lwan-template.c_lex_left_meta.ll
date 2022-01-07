; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_left_meta.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_left_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@left_meta = common dso_local global i32 0, align 4
@lex_comment = common dso_local global i8* null, align 8
@LEXEME_LEFT_META = common dso_local global i32 0, align 4
@lex_inside_action = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_left_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_left_meta(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %5 = load i32, i32* @left_meta, align 4
  %6 = call i64 @strlen(i32 %5)
  %7 = load %struct.lexer*, %struct.lexer** %3, align 8
  %8 = getelementptr inbounds %struct.lexer, %struct.lexer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lexer*, %struct.lexer** %3, align 8
  %14 = call i32 @next(%struct.lexer* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 33
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** @lex_comment, align 8
  store i8* %18, i8** %2, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.lexer*, %struct.lexer** %3, align 8
  %21 = call i32 @backup(%struct.lexer* %20)
  %22 = load %struct.lexer*, %struct.lexer** %3, align 8
  %23 = load i32, i32* @LEXEME_LEFT_META, align 4
  %24 = call i32 @emit(%struct.lexer* %22, i32 %23)
  %25 = load i8*, i8** @lex_inside_action, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i32 @backup(%struct.lexer*) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
