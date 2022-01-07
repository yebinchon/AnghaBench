; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_modes_internal_test.c_test_gcm128.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_modes_internal_test.c_test_gcm128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@gcm128_vectors = common dso_local global %struct.TYPE_4__* null, align 8
@AES_encrypt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_gcm128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gcm128(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = bitcast %struct.TYPE_3__* %5 to i8*
  %19 = bitcast %struct.TYPE_3__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = bitcast %struct.TYPE_3__* %6 to i8*
  %26 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = bitcast %struct.TYPE_3__* %7 to i8*
  %33 = bitcast %struct.TYPE_3__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_3__* %8 to i8*
  %40 = bitcast %struct.TYPE_3__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_3__* %9 to i8*
  %47 = bitcast %struct.TYPE_3__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gcm128_vectors, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_3__* %10 to i8*
  %54 = bitcast %struct.TYPE_3__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %58, %1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 8
  %78 = call i32 @AES_set_encrypt_key(i32* %74, i32 %77, i32* %12)
  %79 = load i64, i64* @AES_encrypt, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @CRYPTO_gcm128_init(i32* %11, i32* %12, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @CRYPTO_gcm128_setiv(i32* %11, i32* %83, i32 %85)
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memset(i8* %87, i32 0, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %72
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CRYPTO_gcm128_aad(i32* %11, i32* %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %72
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @CRYPTO_gcm128_encrypt(i32* %11, i32* %106, i8* %107, i32 %109)
  br label %111

111:                                              ; preds = %104, %100
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @CRYPTO_gcm128_finish(i32* %11, i32* %113, i32 16)
  %115 = call i32 @TEST_false(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @TEST_mem_eq(i8* %122, i32 %124, i32* %126, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %121, %111
  store i32 0, i32* %2, align 4
  br label %184

132:                                              ; preds = %121, %117
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @CRYPTO_gcm128_setiv(i32* %11, i32* %134, i32 %136)
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @memset(i8* %138, i32 0, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @CRYPTO_gcm128_aad(i32* %11, i32* %147, i32 %149)
  br label %151

151:                                              ; preds = %145, %132
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @CRYPTO_gcm128_decrypt(i32* %11, i32* %157, i8* %158, i32 %160)
  br label %162

162:                                              ; preds = %155, %151
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @CRYPTO_gcm128_finish(i32* %11, i32* %164, i32 16)
  %166 = call i32 @TEST_false(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @TEST_mem_eq(i8* %173, i32 %175, i32* %177, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %172, %162
  store i32 0, i32* %2, align 4
  br label %184

183:                                              ; preds = %172, %168
  store i32 1, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %182, %131
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AES_set_encrypt_key(i32*, i32, i32*) #2

declare dso_local i32 @CRYPTO_gcm128_init(i32*, i32*, i32) #2

declare dso_local i32 @CRYPTO_gcm128_setiv(i32*, i32*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @CRYPTO_gcm128_aad(i32*, i32*, i32) #2

declare dso_local i32 @CRYPTO_gcm128_encrypt(i32*, i32*, i8*, i32) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @CRYPTO_gcm128_finish(i32*, i32*, i32) #2

declare dso_local i32 @TEST_mem_eq(i8*, i32, i32*, i32) #2

declare dso_local i32 @CRYPTO_gcm128_decrypt(i32*, i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
