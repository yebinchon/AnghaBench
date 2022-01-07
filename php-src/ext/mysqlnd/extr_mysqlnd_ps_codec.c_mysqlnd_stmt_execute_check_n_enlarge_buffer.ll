; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_check_n_enlarge_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_check_n_enlarge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAIL = common dso_local global i32 0, align 4
@PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i64*, i32*, i64)* @mysqlnd_stmt_execute_check_n_enlarge_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stmt_execute_check_n_enlarge_buffer(i32** %0, i32** %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 5, i64* %12, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %19 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = sub i64 %17, %25
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, 5
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %5
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %33 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 5
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @mnd_emalloc(i64 %46)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* @FAIL, align 4
  store i32 %51, i32* %6, align 4
  br label %76

52:                                               ; preds = %31
  %53 = load i32*, i32** %15, align 8
  %54 = load i32**, i32*** %7, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @memcpy(i32* %53, i32* %55, i64 %56)
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @mnd_efree(i32* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32*, i32** %15, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32**, i32*** %8, align 8
  store i32* %72, i32** %73, align 8
  br label %74

74:                                               ; preds = %66, %5
  %75 = load i32, i32* @PASS, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %50
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32* @mnd_emalloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @mnd_efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
