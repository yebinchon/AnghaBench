; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_php_sqlite3_func_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_php_sqlite3_func_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdo_sqlite_func = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @php_sqlite3_func_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_sqlite3_func_callback(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.pdo_sqlite_func*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @sqlite3_user_data(i32* %8)
  %10 = inttoptr i64 %9 to %struct.pdo_sqlite_func*
  store %struct.pdo_sqlite_func* %10, %struct.pdo_sqlite_func** %7, align 8
  %11 = load %struct.pdo_sqlite_func*, %struct.pdo_sqlite_func** %7, align 8
  %12 = getelementptr inbounds %struct.pdo_sqlite_func, %struct.pdo_sqlite_func* %11, i32 0, i32 1
  %13 = load %struct.pdo_sqlite_func*, %struct.pdo_sqlite_func** %7, align 8
  %14 = getelementptr inbounds %struct.pdo_sqlite_func, %struct.pdo_sqlite_func* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @do_callback(i32* %12, i32* %14, i32 %15, i32** %16, i32* %17, i32 0)
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @do_callback(i32*, i32*, i32, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
