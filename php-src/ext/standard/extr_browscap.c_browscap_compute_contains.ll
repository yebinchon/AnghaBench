; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_compute_contains.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_compute_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*, i64*)* @browscap_compute_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @browscap_compute_contains(i32* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ZSTR_LEN(i32* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @ZSTR_VAL(i32* %17)
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_placeholder(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @ZSTR_LEN(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @ZSTR_VAL(i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_placeholder(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %45

40:                                               ; preds = %30, %24
  br label %41

41:                                               ; preds = %40, %16
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %11

45:                                               ; preds = %39, %11
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %63, %45
  %49 = load i64, i64* %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @ZSTR_LEN(i32* %50)
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = call i32* @ZSTR_VAL(i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @is_placeholder(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %48

66:                                               ; preds = %61, %48
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %67, %69
  %71 = load i32, i32* @UINT8_MAX, align 4
  %72 = call i64 @MIN(i64 %70, i32 %71)
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %9, align 8
  ret i64 %74
}

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i64 @is_placeholder(i32) #1

declare dso_local i32* @ZSTR_VAL(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
