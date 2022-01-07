; ModuleID = '/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite3_param_dtor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite3_param_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_sqlite3_bound_param = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sqlite3_param_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3_param_dtor(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.php_sqlite3_bound_param*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @Z_PTR_P(i32* %4)
  %6 = inttoptr i64 %5 to %struct.php_sqlite3_bound_param*
  store %struct.php_sqlite3_bound_param* %6, %struct.php_sqlite3_bound_param** %3, align 8
  %7 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %8 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %13 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @zend_string_release_ex(i64 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %18 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @Z_ISNULL(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %24 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %23, i32 0, i32 0
  %25 = call i32 @zval_ptr_dtor(i32* %24)
  %26 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %27 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %26, i32 0, i32 0
  %28 = call i32 @ZVAL_UNDEF(i32* %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %3, align 8
  %31 = call i32 @efree(%struct.php_sqlite3_bound_param* %30)
  ret void
}

declare dso_local i64 @Z_PTR_P(i32*) #1

declare dso_local i32 @zend_string_release_ex(i64, i32) #1

declare dso_local i32 @Z_ISNULL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @efree(%struct.php_sqlite3_bound_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
