; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_move_forwards.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_move_forwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_pdo_iterator = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@PDO_FETCH_USE_DEFAULT = common dso_local global i32 0, align 4
@PDO_FETCH_ORI_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pdo_stmt_iter_move_forwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdo_stmt_iter_move_forwards(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.php_pdo_iterator*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.php_pdo_iterator*
  store %struct.php_pdo_iterator* %6, %struct.php_pdo_iterator** %3, align 8
  %7 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32* @Z_PDO_STMT_P(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @Z_ISUNDEF(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %17, i32 0, i32 1
  %19 = call i32 @zval_ptr_dtor(i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %23, i32 0, i32 1
  %25 = load i32, i32* @PDO_FETCH_USE_DEFAULT, align 4
  %26 = load i32, i32* @PDO_FETCH_ORI_NEXT, align 4
  %27 = call i32 @do_fetch(i32* %21, i32 %22, i32* %24, i32 %25, i32 %26, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = call i32 (...) @PDO_HANDLE_STMT_ERR()
  %31 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %31, i32 0, i32 0
  store i64 -1, i64* %32, align 8
  %33 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %34 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %33, i32 0, i32 1
  %35 = call i32 @ZVAL_UNDEF(i32* %34)
  br label %41

36:                                               ; preds = %20
  %37 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %3, align 8
  %38 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32* @Z_PDO_STMT_P(i32*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @do_fetch(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PDO_HANDLE_STMT_ERR(...) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
