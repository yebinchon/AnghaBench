; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_get.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.php_pdo_iterator = type { %struct.TYPE_4__, i32, i64 }

@.str = private unnamed_addr constant [53 x i8] c"An iterator cannot be used with foreach by reference\00", align 1
@pdo_stmt_iter_funcs = common dso_local global i32 0, align 4
@PDO_FETCH_USE_DEFAULT = common dso_local global i32 0, align 4
@PDO_FETCH_ORI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @pdo_stmt_iter_get(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.php_pdo_iterator*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @Z_PDO_STMT_P(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @zend_throw_error(i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %49

16:                                               ; preds = %3
  %17 = call %struct.php_pdo_iterator* @ecalloc(i32 1, i32 32)
  store %struct.php_pdo_iterator* %17, %struct.php_pdo_iterator** %9, align 8
  %18 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %19 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %18, i32 0, i32 0
  %20 = call i32 @zend_iterator_init(%struct.TYPE_4__* %19)
  %21 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %22 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* @pdo_stmt_iter_funcs, i32** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @Z_ADDREF_P(i32* %24)
  %26 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %27 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @Z_OBJ_P(i32* %29)
  %31 = call i32 @ZVAL_OBJ(i32* %28, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %34 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %33, i32 0, i32 1
  %35 = load i32, i32* @PDO_FETCH_USE_DEFAULT, align 4
  %36 = load i32, i32* @PDO_FETCH_ORI_NEXT, align 4
  %37 = call i32 @do_fetch(i32* %32, i32 1, i32* %34, i32 %35, i32 %36, i32 0, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %16
  %40 = call i32 (...) @PDO_HANDLE_STMT_ERR()
  %41 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %42 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %41, i32 0, i32 2
  store i64 -1, i64* %42, align 8
  %43 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %44 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %43, i32 0, i32 1
  %45 = call i32 @ZVAL_UNDEF(i32* %44)
  br label %46

46:                                               ; preds = %39, %16
  %47 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %9, align 8
  %48 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %47, i32 0, i32 0
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %4, align 8
  br label %49

49:                                               ; preds = %46, %14
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %50
}

declare dso_local i32* @Z_PDO_STMT_P(i32*) #1

declare dso_local i32 @zend_throw_error(i32*, i8*) #1

declare dso_local %struct.php_pdo_iterator* @ecalloc(i32, i32) #1

declare dso_local i32 @zend_iterator_init(%struct.TYPE_4__*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @do_fetch(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PDO_HANDLE_STMT_ERR(...) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
