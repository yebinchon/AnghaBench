; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_get_decomposed_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_get_decomposed_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBASE = common dso_local global i64 0, align 8
@SCOUNT = common dso_local global i64 0, align 8
@TCOUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_decomposed_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_decomposed_size(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SBASE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SBASE, align 8
  %18 = load i64, i64* @SCOUNT, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @SBASE, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @TCOUNT, align 8
  %27 = srem i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 3, i32* %2, align 4
  br label %64

31:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %64

32:                                               ; preds = %15, %1
  %33 = load i64, i64* %3, align 8
  %34 = call i32* @get_code_entry(i64 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @DECOMPOSITION_SIZE(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %32
  store i32 1, i32* %2, align 4
  br label %64

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = call i64* @get_code_decomposition(i32* %43, i32* %8)
  store i64* %44, i64** %7, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %59, %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i64*, i64** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @get_decomposed_size(i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %41, %31, %30
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @get_code_entry(i64) #1

declare dso_local i64 @DECOMPOSITION_SIZE(i32*) #1

declare dso_local i64* @get_code_decomposition(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
