; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_expr_preprocess.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_expr_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@tok = common dso_local global i32 0, align 4
@TOK_LINEFEED = common dso_local global i32 0, align 4
@TOK_EOF = common dso_local global i32 0, align 4
@TOK_DEFINED = common dso_local global i32 0, align 4
@TOK_CINT = common dso_local global i32 0, align 4
@tokc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@macro_ptr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @expr_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_preprocess() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = call i32 @tok_str_new(%struct.TYPE_6__* %3)
  br label %5

5:                                                ; preds = %46, %0
  %6 = load i32, i32* @tok, align 4
  %7 = load i32, i32* @TOK_LINEFEED, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @tok, align 4
  %11 = load i32, i32* @TOK_EOF, align 4
  %12 = icmp ne i32 %10, %11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %48

15:                                               ; preds = %13
  %16 = call i32 (...) @next()
  %17 = load i32, i32* @tok, align 4
  %18 = load i32, i32* @TOK_DEFINED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = call i32 (...) @next_nomacro()
  %22 = load i32, i32* @tok, align 4
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 40
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @next_nomacro()
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @tok, align 4
  %29 = call i64 @define_find(i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 40
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @next_nomacro()
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* @TOK_CINT, align 4
  store i32 %37, i32* @tok, align 4
  %38 = load i32, i32* %1, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tokc, i32 0, i32 0), align 4
  br label %46

39:                                               ; preds = %15
  %40 = load i32, i32* @tok, align 4
  %41 = load i32, i32* @TOK_IDENT, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TOK_CINT, align 4
  store i32 %44, i32* @tok, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tokc, i32 0, i32 0), align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %36
  %47 = call i32 @tok_str_add_tok(%struct.TYPE_6__* %3)
  br label %5

48:                                               ; preds = %13
  %49 = call i32 @tok_str_add(%struct.TYPE_6__* %3, i32 -1)
  %50 = call i32 @tok_str_add(%struct.TYPE_6__* %3, i32 0)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** @macro_ptr, align 8
  %53 = call i32 (...) @next()
  %54 = call i32 (...) @expr_const()
  store i32 %54, i32* %1, align 4
  store i32* null, i32** @macro_ptr, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @tok_str_free(i32* %56)
  %58 = load i32, i32* %1, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  ret i32 %60
}

declare dso_local i32 @tok_str_new(%struct.TYPE_6__*) #1

declare dso_local i32 @next(...) #1

declare dso_local i32 @next_nomacro(...) #1

declare dso_local i64 @define_find(i32) #1

declare dso_local i32 @tok_str_add_tok(%struct.TYPE_6__*) #1

declare dso_local i32 @tok_str_add(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @expr_const(...) #1

declare dso_local i32 @tok_str_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
