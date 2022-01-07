; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_string.c_php_hex2bin.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_string.c_php_hex2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @php_hex2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_hex2bin(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = lshr i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @zend_string_alloc(i64 %17, i32 0)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ZSTR_VAL(i32* %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %115, %2
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %118

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %28
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, -33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %37, 65
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 70
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %38, %42
  %44 = lshr i32 %43, 31
  store i32 %44, i32* %13, align 4
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, 48
  %48 = sub nsw i32 %47, 10
  %49 = ashr i32 %48, 31
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %49, %50
  %52 = trunc i32 %51 to i8
  %53 = call i64 @EXPECTED(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %26
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %57, 16
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 39, %59
  %61 = sub nsw i32 %58, %60
  %62 = shl i32 %61, 4
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %14, align 1
  br label %67

64:                                               ; preds = %26
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @zend_string_efree(i32* %65)
  store i32* null, i32** %3, align 8
  br label %123

67:                                               ; preds = %55
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %69
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %11, align 1
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, -33
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %12, align 1
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 %78, 65
  %80 = load i8, i8* %12, align 1
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 %81, 70
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %79, %83
  %85 = lshr i32 %84, 31
  store i32 %85, i32* %13, align 4
  %86 = load i8, i8* %11, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %87, 48
  %89 = sub nsw i32 %88, 10
  %90 = ashr i32 %89, 31
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %90, %91
  %93 = trunc i32 %92 to i8
  %94 = call i64 @EXPECTED(i8 zeroext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %67
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %98, 16
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 39, %100
  %102 = sub nsw i32 %99, %101
  %103 = load i8, i8* %14, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %14, align 1
  br label %110

107:                                              ; preds = %67
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @zend_string_efree(i32* %108)
  store i32* null, i32** %3, align 8
  br label %123

110:                                              ; preds = %96
  %111 = load i8, i8* %14, align 1
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 %111, i8* %114, align 1
  br label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %22

118:                                              ; preds = %22
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 0, i8* %121, align 1
  %122 = load i32*, i32** %7, align 8
  store i32* %122, i32** %3, align 8
  br label %123

123:                                              ; preds = %118, %107, %64
  %124 = load i32*, i32** %3, align 8
  ret i32* %124
}

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @ZSTR_VAL(i32*) #1

declare dso_local i64 @EXPECTED(i8 zeroext) #1

declare dso_local i32 @zend_string_efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
