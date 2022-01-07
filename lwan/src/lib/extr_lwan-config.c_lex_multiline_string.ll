; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_multiline_string.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_multiline_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"\22\22\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"'''\00", align 1
@LEXEME_STRING = common dso_local global i32 0, align 4
@lex_config = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"EOF while scanning multiline string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_multiline_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_multiline_string(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i8*, align 8
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %5 = load %struct.lexer*, %struct.lexer** %3, align 8
  %6 = call signext i8 @peek(%struct.lexer* %5)
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 34
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.lexer*, %struct.lexer** %3, align 8
  %12 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @advance_n(%struct.lexer* %11, i64 %13)
  br label %15

15:                                               ; preds = %30, %1
  %16 = load %struct.lexer*, %struct.lexer** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @lex_streq(%struct.lexer* %16, i8* %17, i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.lexer*, %struct.lexer** %3, align 8
  %22 = load i32, i32* @LEXEME_STRING, align 4
  %23 = call i32 @emit(%struct.lexer* %21, i32 %22)
  %24 = load %struct.lexer*, %struct.lexer** %3, align 8
  %25 = getelementptr inbounds %struct.lexer, %struct.lexer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 3
  store i32 %27, i32* %25, align 4
  %28 = load i8*, i8** @lex_config, align 8
  store i8* %28, i8** %2, align 8
  br label %38

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.lexer*, %struct.lexer** %3, align 8
  %32 = call signext i8 @next(%struct.lexer* %31)
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %15, label %35

35:                                               ; preds = %30
  %36 = load %struct.lexer*, %struct.lexer** %3, align 8
  %37 = call i8* @lex_error(%struct.lexer* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local signext i8 @peek(%struct.lexer*) #1

declare dso_local i32 @advance_n(%struct.lexer*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @lex_streq(%struct.lexer*, i8*, i32) #1

declare dso_local i32 @emit(%struct.lexer*, i32) #1

declare dso_local signext i8 @next(%struct.lexer*) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
