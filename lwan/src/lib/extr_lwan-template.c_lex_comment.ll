; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_comment.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@left_meta = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unexpected EOF while scanning comment end\00", align 1
@lex_text = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_comment(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %6 = load i32, i32* @left_meta, align 4
  %7 = call i64 @strlen(i32 %6)
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load %struct.lexer*, %struct.lexer** %3, align 8
  %10 = call i32 @next(%struct.lexer* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 123
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %4, align 8
  br label %31

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 125
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %4, align 8
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.lexer*, %struct.lexer** %3, align 8
  %28 = call i8* @lex_error(%struct.lexer* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %2, align 8
  br label %39

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %8, label %35

35:                                               ; preds = %32
  %36 = load %struct.lexer*, %struct.lexer** %3, align 8
  %37 = call i32 @ignore(%struct.lexer* %36)
  %38 = load i8*, i8** @lex_text, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*) #1

declare dso_local i32 @ignore(%struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
