; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_copy_it.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_copy_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PASS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i32)* @mysqlnd_stmt_copy_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stmt_copy_it(i32** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = call i32* @mnd_ecalloc(i32 %14, i32 4)
  %16 = load i32**, i32*** %6, align 8
  store i32* %15, i32** %16, align 8
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ZVAL_COPY(i32* %26, i32* %27)
  %29 = load i32, i32* @PASS, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @FAIL, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32* @mnd_ecalloc(i32, i32) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
