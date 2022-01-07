; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_add_array_elem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_add_array_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ct_eval_add_array_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_add_array_elem(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @SEPARATE_ARRAY(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @Z_ARR_P(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @zend_hash_next_index_insert(i32 %14, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @Z_TRY_ADDREF_P(i32* %19)
  %21 = load i32, i32* @SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %83

22:                                               ; preds = %10
  %23 = load i32, i32* @FAILURE, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @Z_TYPE_P(i32* %25)
  switch i32 %26, label %77 [
    i32 130, label %27
    i32 132, label %35
    i32 128, label %42
    i32 131, label %49
    i32 133, label %58
    i32 129, label %68
  ]

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @SEPARATE_ARRAY(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @Z_ARR_P(i32* %30)
  %32 = call i32 (...) @ZSTR_EMPTY_ALLOC()
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @zend_hash_update(i32 %31, i32 %32, i32* %33)
  store i32* %34, i32** %6, align 8
  br label %79

35:                                               ; preds = %24
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @SEPARATE_ARRAY(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @Z_ARR_P(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @zend_hash_index_update(i32 %39, i32 0, i32* %40)
  store i32* %41, i32** %6, align 8
  br label %79

42:                                               ; preds = %24
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @SEPARATE_ARRAY(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @Z_ARR_P(i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @zend_hash_index_update(i32 %46, i32 1, i32* %47)
  store i32* %48, i32** %6, align 8
  br label %79

49:                                               ; preds = %24
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @SEPARATE_ARRAY(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @Z_ARR_P(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @Z_LVAL_P(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @zend_hash_index_update(i32 %53, i32 %55, i32* %56)
  store i32* %57, i32** %6, align 8
  br label %79

58:                                               ; preds = %24
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @SEPARATE_ARRAY(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @Z_ARR_P(i32* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @Z_DVAL_P(i32* %63)
  %65 = call i32 @zend_dval_to_lval(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @zend_hash_index_update(i32 %62, i32 %65, i32* %66)
  store i32* %67, i32** %6, align 8
  br label %79

68:                                               ; preds = %24
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @SEPARATE_ARRAY(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @Z_ARR_P(i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @Z_STR_P(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @zend_symtable_update(i32 %72, i32 %74, i32* %75)
  store i32* %76, i32** %6, align 8
  br label %79

77:                                               ; preds = %24
  %78 = load i32, i32* @FAILURE, align 4
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %68, %58, %49, %42, %35, %27
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @Z_TRY_ADDREF_P(i32* %80)
  %82 = load i32, i32* @SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %77, %22, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @SEPARATE_ARRAY(i32*) #1

declare dso_local i32* @zend_hash_next_index_insert(i32, i32*) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local i32 @Z_TRY_ADDREF_P(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_hash_update(i32, i32, i32*) #1

declare dso_local i32 @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32* @zend_hash_index_update(i32, i32, i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @zend_dval_to_lval(i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32* @zend_symtable_update(i32, i32, i32*) #1

declare dso_local i32 @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
