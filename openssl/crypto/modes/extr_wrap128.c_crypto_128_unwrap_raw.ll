; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_crypto_128_unwrap_raw.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_crypto_128_unwrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO128_WRAP_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8*, i8*, i64, i32 (i8*, i8*, i8*)*)* @crypto_128_unwrap_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crypto_128_unwrap_raw(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [16 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %20 = load i64, i64* %12, align 8
  %21 = sub i64 %20, 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = and i64 %22, 7
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @CRYPTO128_WRAP_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25, %6
  store i64 0, i64* %7, align 8
  br label %135

33:                                               ; preds = %28
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8* %34, i8** %14, align 8
  %35 = load i64, i64* %12, align 8
  %36 = lshr i64 %35, 3
  %37 = mul i64 6, %36
  store i64 %37, i64* %19, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @memcpy(i8* %38, i8* %39, i32 8)
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @memmove(i8* %41, i8* %43, i64 %44)
  store i64 0, i64* %18, align 8
  br label %46

46:                                               ; preds = %127, %33
  %47 = load i64, i64* %18, align 8
  %48 = icmp ult i64 %47, 6
  br i1 %48, label %49, label %130

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 -8
  store i8* %53, i8** %16, align 8
  store i64 0, i64* %17, align 8
  br label %54

54:                                               ; preds = %119, %49
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %126

58:                                               ; preds = %54
  %59 = load i64, i64* %19, align 8
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i8
  %62 = zext i8 %61 to i32
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %66, %62
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  %69 = load i64, i64* %19, align 8
  %70 = icmp ugt i64 %69, 255
  br i1 %70, label %71, label %105

71:                                               ; preds = %58
  %72 = load i64, i64* %19, align 8
  %73 = lshr i64 %72, 8
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i8
  %76 = zext i8 %75 to i32
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = xor i32 %80, %76
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  %83 = load i64, i64* %19, align 8
  %84 = lshr i64 %83, 16
  %85 = and i64 %84, 255
  %86 = trunc i64 %85 to i8
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = xor i32 %91, %87
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %89, align 1
  %94 = load i64, i64* %19, align 8
  %95 = lshr i64 %94, 24
  %96 = and i64 %95, 255
  %97 = trunc i64 %96 to i8
  %98 = zext i8 %97 to i32
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = xor i32 %102, %98
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 1
  br label %105

105:                                              ; preds = %71, %58
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @memcpy(i8* %107, i8* %108, i32 8)
  %110 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 %110(i8* %111, i8* %112, i8* %113)
  %115 = load i8*, i8** %16, align 8
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = call i32 @memcpy(i8* %115, i8* %117, i32 8)
  br label %119

119:                                              ; preds = %105
  %120 = load i64, i64* %17, align 8
  %121 = add i64 %120, 8
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %19, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %19, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 -8
  store i8* %125, i8** %16, align 8
  br label %54

126:                                              ; preds = %54
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %18, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %18, align 8
  br label %46

130:                                              ; preds = %46
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @memcpy(i8* %131, i8* %132, i32 8)
  %134 = load i64, i64* %12, align 8
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %130, %32
  %136 = load i64, i64* %7, align 8
  ret i64 %136
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
