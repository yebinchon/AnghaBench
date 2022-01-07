; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_string.c_php_bin2hex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_string.c_php_bin2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexconvtab = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @php_bin2hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_bin2hex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32* @zend_string_safe_alloc(i64 %8, i32 2, i32 0, i32 0)
  store i32* %9, i32** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load i8*, i8** @hexconvtab, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %15, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @ZSTR_VAL(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %24, i8* %29, align 1
  %30 = load i8*, i8** @hexconvtab, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %30, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @ZSTR_VAL(i32* %40)
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %14
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %10

48:                                               ; preds = %10
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @ZSTR_VAL(i32* %49)
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

declare dso_local i32* @zend_string_safe_alloc(i64, i32, i32, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
