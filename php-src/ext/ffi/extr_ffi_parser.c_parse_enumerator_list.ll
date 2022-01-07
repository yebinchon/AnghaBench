; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_enumerator_list.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_enumerator_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_pos = common dso_local global i8* null, align 8
@yy_text = common dso_local global i8* null, align 8
@yy_line = common dso_local global i32 0, align 4
@YY__COMMA = common dso_local global i32 0, align 4
@YY__RBRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@YY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_enumerator_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_enumerator_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @parse_enumerator(i32 %13, i32* %14, i32* %10, i32* %11, i32* %12)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %2, %58
  %17 = load i8*, i8** @yy_pos, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** @yy_text, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* @yy_line, align 4
  store i32 %19, i32* %8, align 4
  store i32 -2, i32* %9, align 4
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @YY__COMMA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 (...) @get_sym()
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @YY__RBRACE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %9, align 4
  br label %51

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @YY_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 251, i32* %9, align 4
  br label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @YY__RBRACE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 253, i32* %9, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %45, %40, %30
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** @yy_pos, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** @yy_text, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* @yy_line, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 251
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %63

58:                                               ; preds = %51
  %59 = call i32 (...) @get_sym()
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @parse_enumerator(i32 %60, i32* %61, i32* %10, i32* %11, i32* %12)
  store i32 %62, i32* %3, align 4
  br label %16

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 253
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @get_sym()
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @parse_enumerator(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
