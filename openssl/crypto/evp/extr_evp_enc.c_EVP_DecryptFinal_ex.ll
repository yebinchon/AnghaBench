; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptFinal_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptFinal_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__*, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32 (i32, i8*, i64*, i32)*, i32, i32 (%struct.TYPE_7__*, i8*, i32*, i32)*, i32, i32* }

@EVP_F_EVP_DECRYPTFINAL_EX = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@EVP_R_FINAL_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4
@EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH = common dso_local global i32 0, align 4
@EVP_R_WRONG_FINAL_BLOCK_LENGTH = common dso_local global i32 0, align 4
@EVP_R_BAD_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DecryptFinal_ex(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %20 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %21 = call i32 @EVPerr(i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %237

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %29 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %30 = call i32 @EVPerr(i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %237

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %89

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = call i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (i32, i8*, i64*, i32)*, i32 (i32, i8*, i64*, i32)** %48, align 8
  %50 = icmp eq i32 (i32, i8*, i64*, i32)* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %53 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %54 = call i32 @EVPerr(i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %237

55:                                               ; preds = %44
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (i32, i8*, i64*, i32)*, i32 (i32, i8*, i64*, i32)** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  %72 = call i32 %60(i32 %63, i8* %64, i64* %11, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @INT_MAX, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %81 = load i32, i32* @EVP_R_FINAL_ERROR, align 4
  %82 = call i32 @EVPerr(i32 %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %237

83:                                               ; preds = %75
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %70
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %237

89:                                               ; preds = %38
  %90 = load i32*, i32** %7, align 8
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %89
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32 (%struct.TYPE_7__*, i8*, i32*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32*, i32)** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 %104(%struct.TYPE_7__* %105, i8* %106, i32* null, i32 0)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %237

111:                                              ; preds = %99
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %237

115:                                              ; preds = %89
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %10, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %115
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %134 = load i32, i32* @EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH, align 4
  %135 = call i32 @EVPerr(i32 %133, i32 %134)
  store i32 0, i32* %4, align 4
  br label %237

136:                                              ; preds = %127
  %137 = load i32*, i32** %7, align 8
  store i32 0, i32* %137, align 4
  store i32 1, i32* %4, align 4
  br label %237

138:                                              ; preds = %115
  %139 = load i32, i32* %10, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %234

141:                                              ; preds = %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %146, %141
  %152 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %153 = load i32, i32* @EVP_R_WRONG_FINAL_BLOCK_LENGTH, align 4
  %154 = call i32 @EVPerr(i32 %152, i32 %153)
  store i32 0, i32* %4, align 4
  br label %237

155:                                              ; preds = %146
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = icmp ule i64 %157, 8
  %159 = zext i1 %158 to i32
  %160 = call i32 @OPENSSL_assert(i32 %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sub i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %155
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171, %155
  %176 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %177 = load i32, i32* @EVP_R_BAD_DECRYPT, align 4
  %178 = call i32 @EVPerr(i32 %176, i32 %177)
  store i32 0, i32* %4, align 4
  br label %237

179:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %200, %179
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %188, -1
  store i32 %189, i32* %10, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %184
  %196 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %197 = load i32, i32* @EVP_R_BAD_DECRYPT, align 4
  %198 = call i32 @EVPerr(i32 %196, i32 %197)
  store i32 0, i32* %4, align 4
  br label %237

199:                                              ; preds = %184
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %180

203:                                              ; preds = %180
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sub i32 %208, %209
  store i32 %210, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %228, %203
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  store i8 %223, i8* %227, align 1
  br label %228

228:                                              ; preds = %215
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %211

231:                                              ; preds = %211
  %232 = load i32, i32* %9, align 4
  %233 = load i32*, i32** %7, align 8
  store i32 %232, i32* %233, align 4
  br label %236

234:                                              ; preds = %138
  %235 = load i32*, i32** %7, align 8
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %234, %231
  store i32 1, i32* %4, align 4
  br label %237

237:                                              ; preds = %236, %195, %175, %151, %136, %132, %114, %110, %87, %79, %51, %27, %18
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
