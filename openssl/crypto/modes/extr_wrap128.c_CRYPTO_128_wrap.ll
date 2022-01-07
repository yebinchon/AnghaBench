; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_wrap.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO128_WRAP_MAX = common dso_local global i64 0, align 8
@default_iv = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_128_wrap(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 (i8*, i8*, i8*)* %5) #0 {
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
  %21 = and i64 %20, 7
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @CRYPTO128_WRAP_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %6
  store i64 0, i64* %7, align 8
  br label %134

31:                                               ; preds = %26
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8* %32, i8** %14, align 8
  store i64 1, i64* %19, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @memmove(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i8*, i8** @default_iv, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @memcpy(i8* %43, i8* %44, i32 8)
  store i64 0, i64* %18, align 8
  br label %46

46:                                               ; preds = %125, %42
  %47 = load i64, i64* %18, align 8
  %48 = icmp ult i64 %47, 6
  br i1 %48, label %49, label %128

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  store i8* %51, i8** %16, align 8
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %117, %49
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %124

56:                                               ; preds = %52
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @memcpy(i8* %58, i8* %59, i32 8)
  %61 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 %61(i8* %62, i8* %63, i8* %64)
  %66 = load i64, i64* %19, align 8
  %67 = and i64 %66, 255
  %68 = trunc i64 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = xor i32 %73, %69
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  %76 = load i64, i64* %19, align 8
  %77 = icmp ugt i64 %76, 255
  br i1 %77, label %78, label %112

78:                                               ; preds = %56
  %79 = load i64, i64* %19, align 8
  %80 = lshr i64 %79, 8
  %81 = and i64 %80, 255
  %82 = trunc i64 %81 to i8
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %87, %83
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load i64, i64* %19, align 8
  %91 = lshr i64 %90, 16
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 5
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %98, %94
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  %101 = load i64, i64* %19, align 8
  %102 = lshr i64 %101, 24
  %103 = and i64 %102, 255
  %104 = trunc i64 %103 to i8
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = xor i32 %109, %105
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %107, align 1
  br label %112

112:                                              ; preds = %78, %56
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %115 = getelementptr inbounds i8, i8* %114, i64 8
  %116 = call i32 @memcpy(i8* %113, i8* %115, i32 8)
  br label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %17, align 8
  %119 = add i64 %118, 8
  store i64 %119, i64* %17, align 8
  %120 = load i64, i64* %19, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %19, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 8
  store i8* %123, i8** %16, align 8
  br label %52

124:                                              ; preds = %52
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %46

128:                                              ; preds = %46
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @memcpy(i8* %129, i8* %130, i32 8)
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 8
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %128, %30
  %135 = load i64, i64* %7, align 8
  ret i64 %135
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
