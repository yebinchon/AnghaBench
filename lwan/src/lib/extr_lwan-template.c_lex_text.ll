; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_text.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i64, i64 }

@left_meta = common dso_local global i32 0, align 4
@LEXEME_TEXT = common dso_local global i32 0, align 4
@lex_left_meta = common dso_local global i8* null, align 8
@right_meta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unexpected action close sequence\00", align 1
@EOF = common dso_local global i64 0, align 8
@LEXEME_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_text(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  br label %4

4:                                                ; preds = %36, %1
  %5 = load %struct.lexer*, %struct.lexer** %3, align 8
  %6 = load i32, i32* @left_meta, align 4
  %7 = load i32, i32* @left_meta, align 4
  %8 = call i32 @strlen(i32 %7)
  %9 = call i64 @lex_streq(%struct.lexer* %5, i32 %6, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = load %struct.lexer*, %struct.lexer** %3, align 8
  %13 = getelementptr inbounds %struct.lexer, %struct.lexer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.lexer*, %struct.lexer** %3, align 8
  %16 = getelementptr inbounds %struct.lexer, %struct.lexer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.lexer*, %struct.lexer** %3, align 8
  %21 = load i32, i32* @LEXEME_TEXT, align 4
  %22 = call i32 @emit(%struct.lexer* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %11
  %24 = load i8*, i8** @lex_left_meta, align 8
  store i8* %24, i8** %2, align 8
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.lexer*, %struct.lexer** %3, align 8
  %27 = load i32, i32* @right_meta, align 4
  %28 = load i32, i32* @right_meta, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = call i64 @lex_streq(%struct.lexer* %26, i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.lexer*, %struct.lexer** %3, align 8
  %34 = call i8* @lex_error(%struct.lexer* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %2, align 8
  br label %57

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.lexer*, %struct.lexer** %3, align 8
  %38 = call i64 @next(%struct.lexer* %37)
  %39 = load i64, i64* @EOF, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %4, label %41

41:                                               ; preds = %36
  %42 = load %struct.lexer*, %struct.lexer** %3, align 8
  %43 = getelementptr inbounds %struct.lexer, %struct.lexer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.lexer*, %struct.lexer** %3, align 8
  %46 = getelementptr inbounds %struct.lexer, %struct.lexer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.lexer*, %struct.lexer** %3, align 8
  %51 = load i32, i32* @LEXEME_TEXT, align 4
  %52 = call i32 @emit(%struct.lexer* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.lexer*, %struct.lexer** %3, align 8
  %55 = load i32, i32* @LEXEME_EOF, align 4
  %56 = call i32 @emit(%struct.lexer* %54, i32 %55)
  store i8* null, i8** %2, align 8
  br label %57

57:                                               ; preds = %53, %32, %23
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i64 @lex_streq(%struct.lexer*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*) #1

declare dso_local i64 @next(%struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
