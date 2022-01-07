; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_fetch_array_elem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_fetch_array_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @fetch_array_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_array_elem(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @Z_TYPE_P(i32* %8)
  switch i32 %9, label %54 [
    i32 130, label %10
    i32 132, label %17
    i32 128, label %23
    i32 131, label %29
    i32 133, label %37
    i32 129, label %46
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @Z_ARR_P(i32* %11)
  %13 = call i32 (...) @ZSTR_EMPTY_ALLOC()
  %14 = call i32* @zend_hash_find(i32 %12, i32 %13)
  %15 = load i32**, i32*** %5, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32, i32* @SUCCESS, align 4
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @Z_ARR_P(i32* %18)
  %20 = call i32* @zend_hash_index_find(i32 %19, i32 0)
  %21 = load i32**, i32*** %5, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* @SUCCESS, align 4
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @Z_ARR_P(i32* %24)
  %26 = call i32* @zend_hash_index_find(i32 %25, i32 1)
  %27 = load i32**, i32*** %5, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @Z_ARR_P(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @Z_LVAL_P(i32* %32)
  %34 = call i32* @zend_hash_index_find(i32 %31, i32 %33)
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32, i32* @SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @Z_ARR_P(i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @Z_DVAL_P(i32* %40)
  %42 = call i32 @zend_dval_to_lval(i32 %41)
  %43 = call i32* @zend_hash_index_find(i32 %39, i32 %42)
  %44 = load i32**, i32*** %5, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %3
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @Z_ARR_P(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @Z_STR_P(i32* %49)
  %51 = call i32* @zend_symtable_find(i32 %48, i32 %50)
  %52 = load i32**, i32*** %5, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @FAILURE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %46, %37, %29, %23, %17, %10
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_hash_find(i32, i32) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local i32 @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32* @zend_hash_index_find(i32, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @zend_dval_to_lval(i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32* @zend_symtable_find(i32, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
