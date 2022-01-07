; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_partial.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lex_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unexpected EOF while scanning action\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"actions cannot span multiple lines\00", align 1
@lex_identifier = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected character: %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lexer*)* @lex_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lex_partial(%struct.lexer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  br label %5

5:                                                ; preds = %1, %24
  %6 = load %struct.lexer*, %struct.lexer** %3, align 8
  %7 = call i32 @next(%struct.lexer* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load %struct.lexer*, %struct.lexer** %3, align 8
  %13 = call i8* (%struct.lexer*, i8*, ...) @lex_error(%struct.lexer* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %39

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.lexer*, %struct.lexer** %3, align 8
  %19 = call i8* (%struct.lexer*, i8*, ...) @lex_error(%struct.lexer* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  br label %39

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @isspace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.lexer*, %struct.lexer** %3, align 8
  %26 = call i32 @ignore(%struct.lexer* %25)
  br label %5

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @isident(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.lexer*, %struct.lexer** %3, align 8
  %33 = call i32 @backup(%struct.lexer* %32)
  %34 = load i8*, i8** @lex_identifier, align 8
  store i8* %34, i8** %2, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.lexer*, %struct.lexer** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i8* (%struct.lexer*, i8*, ...) @lex_error(%struct.lexer* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %35, %31, %17, %11
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @next(%struct.lexer*) #1

declare dso_local i8* @lex_error(%struct.lexer*, i8*, ...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @ignore(%struct.lexer*) #1

declare dso_local i64 @isident(i32) #1

declare dso_local i32 @backup(%struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
