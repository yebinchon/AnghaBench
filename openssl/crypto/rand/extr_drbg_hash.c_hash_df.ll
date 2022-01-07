; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_hash_df.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hash.c_hash_df.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64, i32, i32* }

@INBYTE_IGNORE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8, i8*, i64, i8*, i64, i8*, i64)* @hash_df to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_df(%struct.TYPE_7__* %0, i8* %1, i8 zeroext %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [6 x i8], align 1
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8 %2, i8* %13, align 1
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %20, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %21, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %22, align 8
  store i32 0, i32* %24, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %25, align 8
  %39 = load i64, i64* %25, align 8
  %40 = mul i64 %39, 8
  store i64 %40, i64* %26, align 8
  %41 = load i32, i32* %24, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %24, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %43
  store i8 1, i8* %44, align 1
  %45 = load i64, i64* %26, align 8
  %46 = lshr i64 %45, 24
  %47 = and i64 %46, 255
  %48 = trunc i64 %47 to i8
  %49 = load i32, i32* %24, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %24, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i64, i64* %26, align 8
  %54 = lshr i64 %53, 16
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = load i32, i32* %24, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %24, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %59
  store i8 %56, i8* %60, align 1
  %61 = load i64, i64* %26, align 8
  %62 = lshr i64 %61, 8
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i8
  %65 = load i32, i32* %24, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %24, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %67
  store i8 %64, i8* %68, align 1
  %69 = load i64, i64* %26, align 8
  %70 = and i64 %69, 255
  %71 = trunc i64 %70 to i8
  %72 = load i32, i32* %24, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %24, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %74
  store i8 %71, i8* %75, align 1
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @INBYTE_IGNORE, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %9
  %82 = load i8, i8* %13, align 1
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %24, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

87:                                               ; preds = %81, %9
  br label %88

88:                                               ; preds = %165, %87
  %89 = load i32*, i32** %21, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @EVP_DigestInit_ex(i32* %89, i32 %92, i32* null)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %88
  %96 = load i32*, i32** %21, align 8
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = call i64 @EVP_DigestUpdate(i32* %96, i8* %97, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load i32*, i32** %21, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i64 @EVP_DigestUpdate(i32* %103, i8* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load i8*, i8** %16, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %21, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i64 @EVP_DigestUpdate(i32* %112, i8* %113, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111, %108
  %118 = load i8*, i8** %18, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load i32*, i32** %21, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = load i64, i64* %19, align 8
  %124 = call i64 @EVP_DigestUpdate(i32* %121, i8* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120, %111, %102, %95, %88
  store i32 0, i32* %10, align 4
  br label %175

127:                                              ; preds = %120, %117
  %128 = load i64, i64* %25, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load i32*, i32** %21, align 8
  %135 = load i8*, i8** %22, align 8
  %136 = call i32 @EVP_DigestFinal(i32* %134, i8* %135, i32* null)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %175

139:                                              ; preds = %133
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %22, align 8
  %142 = load i64, i64* %25, align 8
  %143 = call i32 @memcpy(i8* %140, i8* %141, i64 %142)
  %144 = load i8*, i8** %22, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @OPENSSL_cleanse(i8* %144, i64 %147)
  br label %174

149:                                              ; preds = %127
  %150 = load i32*, i32** %21, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 @EVP_DigestFinal(i32* %150, i8* %151, i32* null)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  store i32 0, i32* %10, align 4
  br label %175

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %25, align 8
  %161 = sub i64 %160, %159
  store i64 %161, i64* %25, align 8
  %162 = load i64, i64* %25, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %174

165:                                              ; preds = %156
  %166 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = add i8 %167, 1
  store i8 %168, i8* %166, align 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %12, align 8
  br label %88

174:                                              ; preds = %164, %139
  store i32 1, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %154, %138, %126
  %176 = load i32, i32* %10, align 4
  ret i32 %176
}

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
