; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_get_data.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_pdo_stmt_iter_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_pdo_iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @pdo_stmt_iter_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdo_stmt_iter_get_data(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.php_pdo_iterator*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = bitcast i32* %5 to %struct.php_pdo_iterator*
  store %struct.php_pdo_iterator* %6, %struct.php_pdo_iterator** %4, align 8
  %7 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %4, align 8
  %8 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @Z_ISUNDEF(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.php_pdo_iterator*, %struct.php_pdo_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.php_pdo_iterator, %struct.php_pdo_iterator* %14, i32 0, i32 0
  store i32* %15, i32** %2, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i32*, i32** %2, align 8
  ret i32* %17
}

declare dso_local i64 @Z_ISUNDEF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
