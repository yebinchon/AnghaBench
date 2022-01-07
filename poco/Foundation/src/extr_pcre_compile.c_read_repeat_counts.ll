; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_read_repeat_counts.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_read_repeat_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_0 = common dso_local global i64 0, align 8
@ERR5 = common dso_local global i32 0, align 4
@CHAR_RIGHT_CURLY_BRACKET = common dso_local global i64 0, align 8
@ERR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32*, i32*, i32*)* @read_repeat_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @read_repeat_counts(i64* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  br label %12

12:                                               ; preds = %33, %4
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @IS_DIGIT(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %18, 10
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %20, align 8
  %23 = load i64, i64* @CHAR_0, align 8
  %24 = sub nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 %19, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 65535
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32, i32* @ERR5, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64*, i64** %6, align 8
  store i64* %32, i64** %5, align 8
  br label %86

33:                                               ; preds = %17
  br label %12

34:                                               ; preds = %12
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHAR_RIGHT_CURLY_BRACKET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  br label %80

41:                                               ; preds = %34
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHAR_RIGHT_CURLY_BRACKET, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @IS_DIGIT(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, 10
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %6, align 8
  %58 = load i64, i64* %56, align 8
  %59 = load i64, i64* @CHAR_0, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 65535
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @ERR5, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i64*, i64** %6, align 8
  store i64* %68, i64** %5, align 8
  br label %86

69:                                               ; preds = %53
  br label %48

70:                                               ; preds = %48
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @ERR4, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64*, i64** %6, align 8
  store i64* %77, i64** %5, align 8
  br label %86

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i64*, i64** %6, align 8
  store i64* %85, i64** %5, align 8
  br label %86

86:                                               ; preds = %80, %74, %65, %29
  %87 = load i64*, i64** %5, align 8
  ret i64* %87
}

declare dso_local i64 @IS_DIGIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
