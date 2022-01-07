; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_del_array_elem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_del_array_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ct_eval_del_array_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_del_array_elem(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @IS_PARTIAL_ARRAY(i32* %6)
  %8 = call i32 @ZEND_ASSERT(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @Z_TYPE_P(i32* %9)
  switch i32 %10, label %43 [
    i32 130, label %11
    i32 132, label %16
    i32 128, label %20
    i32 131, label %24
    i32 133, label %30
    i32 129, label %37
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @Z_ARR_P(i32* %12)
  %14 = call i32 (...) @ZSTR_EMPTY_ALLOC()
  %15 = call i32 @zend_hash_del(i32 %13, i32 %14)
  br label %45

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @Z_ARR_P(i32* %17)
  %19 = call i32 @zend_hash_index_del(i32 %18, i32 0)
  br label %45

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @Z_ARR_P(i32* %21)
  %23 = call i32 @zend_hash_index_del(i32 %22, i32 1)
  br label %45

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @Z_ARR_P(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @Z_LVAL_P(i32* %27)
  %29 = call i32 @zend_hash_index_del(i32 %26, i32 %28)
  br label %45

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @Z_ARR_P(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @Z_DVAL_P(i32* %33)
  %35 = call i32 @zend_dval_to_lval(i32 %34)
  %36 = call i32 @zend_hash_index_del(i32 %32, i32 %35)
  br label %45

37:                                               ; preds = %2
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @Z_ARR_P(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @Z_STR_P(i32* %40)
  %42 = call i32 @zend_symtable_del(i32 %39, i32 %41)
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %37, %30, %24, %20, %16, %11
  %46 = load i32, i32* @SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_hash_del(i32, i32) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local i32 @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32 @zend_hash_index_del(i32, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @zend_dval_to_lval(i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @zend_symtable_del(i32, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
