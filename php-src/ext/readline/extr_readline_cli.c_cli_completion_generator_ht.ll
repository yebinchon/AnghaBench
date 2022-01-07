; ModuleID = '/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator_ht.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32*, i32*, i8**)* @cli_completion_generator_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cli_completion_generator_ht(i8* %0, i64 %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @zend_hash_internal_pointer_reset(i32* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %5
  br label %25

25:                                               ; preds = %60, %24
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @zend_hash_has_more_elements(i32* %26)
  %28 = load i64, i64* @SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @zend_hash_get_current_key(i32* %31, i32** %12, i32* %13)
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32*, i32** %12, align 8
  %37 = call i8* @ZSTR_VAL(i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @strncmp(i8* %37, i8* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %35, %30
  %43 = load i8**, i8*** %11, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %10, align 8
  %47 = call i8* @zend_hash_get_current_data_ptr(i32* %46)
  %48 = load i8**, i8*** %11, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @zend_hash_move_forward(i32* %50)
  %52 = load i32*, i32** %12, align 8
  %53 = call i8* @ZSTR_VAL(i32* %52)
  store i8* %53, i8** %6, align 8
  br label %65

54:                                               ; preds = %35
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @zend_hash_move_forward(i32* %55)
  %57 = load i64, i64* @FAILURE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  br label %25

61:                                               ; preds = %59, %25
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  store i8* null, i8** %6, align 8
  br label %65

65:                                               ; preds = %61, %49
  %66 = load i8*, i8** %6, align 8
  ret i8* %66
}

declare dso_local i32 @zend_hash_internal_pointer_reset(i32*) #1

declare dso_local i64 @zend_hash_has_more_elements(i32*) #1

declare dso_local i32 @zend_hash_get_current_key(i32*, i32**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i8* @zend_hash_get_current_data_ptr(i32*) #1

declare dso_local i64 @zend_hash_move_forward(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
