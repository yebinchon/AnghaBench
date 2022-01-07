; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_preprocess_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_preprocess_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CH_EOF = common dso_local global i32 0, align 4
@isidnum_table = common dso_local global i32* null, align 8
@table_ident = common dso_local global i32* null, align 8
@hash_ident = common dso_local global i32 0, align 4
@TOK_HASH_SIZE = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@tok_ident = common dso_local global i32 0, align 4
@tcc_keywords = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preprocess_new() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @CH_EOF, align 4
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @isid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @isnum(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = load i32*, i32** @isidnum_table, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @CH_EOF, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %6

29:                                               ; preds = %6
  store i32* null, i32** @table_ident, align 8
  %30 = load i32, i32* @hash_ident, align 4
  %31 = load i32, i32* @TOK_HASH_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32 %30, i32 0, i32 %34)
  %36 = load i32, i32* @TOK_IDENT, align 4
  store i32 %36, i32* @tok_ident, align 4
  %37 = load i8*, i8** @tcc_keywords, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %53, %29
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %52, %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %44
  br label %44

53:                                               ; preds = %51
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sub nsw i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = call i32 @tok_alloc(i8* %54, i32 %61)
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %3, align 8
  br label %38

64:                                               ; preds = %38
  ret void
}

declare dso_local i64 @isid(i32) #1

declare dso_local i64 @isnum(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @tok_alloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
