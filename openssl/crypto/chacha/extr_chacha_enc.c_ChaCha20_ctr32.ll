; ModuleID = '/home/carl/AnghaBench/openssl/crypto/chacha/extr_chacha_enc.c_ChaCha20_ctr32.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/chacha/extr_chacha_enc.c_ChaCha20_ctr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChaCha20_ctr32(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = call i64 @ossl_toascii(i8 signext 101)
  %16 = trunc i64 %15 to i32
  %17 = call i64 @ossl_toascii(i8 signext 120)
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = call i64 @ossl_toascii(i8 signext 112)
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 16
  %24 = or i32 %20, %23
  %25 = call i64 @ossl_toascii(i8 signext 97)
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 24
  %28 = or i32 %24, %27
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = call i64 @ossl_toascii(i8 signext 110)
  %31 = trunc i64 %30 to i32
  %32 = call i64 @ossl_toascii(i8 signext 100)
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 8
  %35 = or i32 %31, %34
  %36 = call i64 @ossl_toascii(i8 signext 32)
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 16
  %39 = or i32 %35, %38
  %40 = call i64 @ossl_toascii(i8 signext 51)
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 24
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = call i64 @ossl_toascii(i8 signext 50)
  %46 = trunc i64 %45 to i32
  %47 = call i64 @ossl_toascii(i8 signext 45)
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 8
  %50 = or i32 %46, %49
  %51 = call i64 @ossl_toascii(i8 signext 98)
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 16
  %54 = or i32 %50, %53
  %55 = call i64 @ossl_toascii(i8 signext 121)
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 24
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 2
  store i32 %58, i32* %59, align 8
  %60 = call i64 @ossl_toascii(i8 signext 116)
  %61 = trunc i64 %60 to i32
  %62 = call i64 @ossl_toascii(i8 signext 101)
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 8
  %65 = or i32 %61, %64
  %66 = call i64 @ossl_toascii(i8 signext 32)
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 16
  %69 = or i32 %65, %68
  %70 = call i64 @ossl_toascii(i8 signext 107)
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 24
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 3
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  store i32 %77, i32* %78, align 16
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 5
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 6
  store i32 %85, i32* %86, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 7
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 8
  store i32 %93, i32* %94, align 16
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 9
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 10
  store i32 %101, i32* %102, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 11
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 12
  store i32 %109, i32* %110, align 16
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 13
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 14
  store i32 %117, i32* %118, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 15
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %159, %5
  %124 = load i64, i64* %8, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %172

126:                                              ; preds = %123
  store i64 8, i64* %13, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %130, %126
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %134 = call i32 @chacha20_core(%struct.TYPE_3__* %12, i32* %133)
  store i64 0, i64* %14, align 8
  br label %135

135:                                              ; preds = %156, %132
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %13, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = xor i32 %144, %150
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %6, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8 %152, i8* %155, align 1
  br label %156

156:                                              ; preds = %139
  %157 = load i64, i64* %14, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %14, align 8
  br label %135

159:                                              ; preds = %135
  %160 = load i64, i64* %13, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  store i8* %162, i8** %6, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %7, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %8, align 8
  %168 = sub i64 %167, %166
  store i64 %168, i64* %8, align 8
  %169 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 12
  %170 = load i32, i32* %169, align 16
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 16
  br label %123

172:                                              ; preds = %123
  ret void
}

declare dso_local i64 @ossl_toascii(i8 signext) #1

declare dso_local i32 @chacha20_core(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
