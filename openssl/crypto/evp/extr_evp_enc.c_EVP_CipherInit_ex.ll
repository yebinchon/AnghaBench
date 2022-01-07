; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CipherInit_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_CipherInit_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i8*, i8*, i32, %struct.TYPE_17__*, i64, i64, i32, i32, i32*, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 (i32*, i8*, i32, i8*, i32)*, i32 (i32*, i8*, i32, i8*, i32)*, i32, i32, i32 (%struct.TYPE_16__*, i8*, i8*, i32)*, i32, i64, i32*, i32* (i32)* }

@EVP_F_EVP_CIPHERINIT_EX = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_CIPHER_CTX_FLAG_WRAP_ALLOW = common dso_local global i32 0, align 4
@EVP_CIPH_CTRL_INIT = common dso_local global i32 0, align 4
@EVP_CTRL_INIT = common dso_local global i32 0, align 4
@EVP_CIPH_WRAP_MODE = common dso_local global i32 0, align 4
@EVP_R_WRAP_MODE_NOT_ALLOWED = common dso_local global i32 0, align 4
@EVP_CIPH_CUSTOM_IV = common dso_local global i32 0, align 4
@EVP_CIPH_ALWAYS_CALL_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CipherInit_ex(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  br label %34

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = icmp eq %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = icmp eq %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %44 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %45 = call i32 @EVPerr(i32 %43, i32 %44)
  store i32 0, i32* %7, align 4
  br label %598

46:                                               ; preds = %37, %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 11
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = icmp eq %struct.TYPE_17__* %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %56
  br label %456

70:                                               ; preds = %59, %51, %46
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32*, i32** %10, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32* @ENGINE_get_cipher_engine(i64 %79)
  store i32* %80, i32** %14, align 8
  br label %81

81:                                               ; preds = %76, %73, %70
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 11
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89, %86, %81
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 13
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = icmp eq %struct.TYPE_17__* %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %102, align 8
  br label %103

103:                                              ; preds = %100, %92
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 13
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = call i32 @EVP_CIPHER_free(%struct.TYPE_17__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 13
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %109, align 8
  br label %331

110:                                              ; preds = %89
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = icmp eq %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  br label %119

117:                                              ; preds = %110
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi %struct.TYPE_17__* [ %116, %113 ], [ %118, %117 ]
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %15, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 8
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  switch i64 %128, label %130 [
    i64 240, label %129
    i64 251, label %129
    i64 263, label %129
    i64 246, label %129
    i64 257, label %129
    i64 269, label %129
    i64 237, label %129
    i64 248, label %129
    i64 260, label %129
    i64 243, label %129
    i64 254, label %129
    i64 266, label %129
    i64 244, label %129
    i64 255, label %129
    i64 267, label %129
    i64 242, label %129
    i64 253, label %129
    i64 265, label %129
    i64 241, label %129
    i64 252, label %129
    i64 264, label %129
    i64 258, label %129
    i64 235, label %129
    i64 238, label %129
    i64 249, label %129
    i64 261, label %129
    i64 239, label %129
    i64 250, label %129
    i64 262, label %129
    i64 236, label %129
    i64 247, label %129
    i64 259, label %129
    i64 155, label %129
    i64 154, label %129
    i64 157, label %129
    i64 156, label %129
    i64 159, label %129
    i64 158, label %129
    i64 209, label %129
    i64 218, label %129
    i64 227, label %129
    i64 245, label %129
    i64 256, label %129
    i64 268, label %129
    i64 215, label %129
    i64 224, label %129
    i64 233, label %129
    i64 210, label %129
    i64 219, label %129
    i64 228, label %129
    i64 216, label %129
    i64 225, label %129
    i64 234, label %129
    i64 208, label %129
    i64 217, label %129
    i64 226, label %129
    i64 213, label %129
    i64 222, label %129
    i64 231, label %129
    i64 214, label %129
    i64 223, label %129
    i64 232, label %129
    i64 212, label %129
    i64 221, label %129
    i64 230, label %129
    i64 211, label %129
    i64 220, label %129
    i64 229, label %129
    i64 184, label %129
    i64 191, label %129
    i64 198, label %129
    i64 189, label %129
    i64 196, label %129
    i64 203, label %129
    i64 183, label %129
    i64 190, label %129
    i64 197, label %129
    i64 187, label %129
    i64 194, label %129
    i64 201, label %129
    i64 188, label %129
    i64 195, label %129
    i64 202, label %129
    i64 186, label %129
    i64 193, label %129
    i64 200, label %129
    i64 185, label %129
    i64 192, label %129
    i64 199, label %129
    i64 171, label %129
    i64 167, label %129
    i64 166, label %129
    i64 169, label %129
    i64 168, label %129
    i64 170, label %129
    i64 165, label %129
    i64 163, label %129
    i64 162, label %129
    i64 164, label %129
    i64 160, label %129
    i64 176, label %129
    i64 172, label %129
    i64 175, label %129
    i64 173, label %129
    i64 174, label %129
    i64 161, label %129
    i64 153, label %129
    i64 207, label %129
    i64 205, label %129
    i64 206, label %129
    i64 204, label %129
    i64 152, label %129
    i64 150, label %129
    i64 151, label %129
    i64 149, label %129
    i64 182, label %129
    i64 180, label %129
    i64 181, label %129
    i64 179, label %129
    i64 136, label %129
    i64 134, label %129
    i64 135, label %129
    i64 133, label %129
    i64 132, label %129
    i64 129, label %129
    i64 130, label %129
    i64 131, label %129
    i64 128, label %129
    i64 143, label %129
    i64 142, label %129
    i64 140, label %129
    i64 138, label %129
    i64 139, label %129
    i64 137, label %129
    i64 146, label %129
    i64 148, label %129
    i64 147, label %129
    i64 145, label %129
    i64 144, label %129
    i64 178, label %129
    i64 177, label %129
    i64 141, label %129
  ]

129:                                              ; preds = %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125, %125
  br label %131

130:                                              ; preds = %125
  br label %331

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131, %119
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %134 = icmp ne %struct.TYPE_17__* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = icmp ne %struct.TYPE_17__* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 10
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @OPENSSL_clear_free(i32* %143, i64 %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 10
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %140, %135, %132
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %154 = icmp ne %struct.TYPE_17__* %153, null
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = icmp ne %struct.TYPE_17__* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %16, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = call i32 @EVP_CIPHER_CTX_reset(%struct.TYPE_16__* %164)
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %160, %155, %152
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %174 = icmp eq %struct.TYPE_17__* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  store %struct.TYPE_17__* %178, %struct.TYPE_17__** %9, align 8
  br label %179

179:                                              ; preds = %175, %172
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 8
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @OBJ_nid2sn(i32 %188)
  %190 = call %struct.TYPE_17__* @EVP_CIPHER_fetch(i32* null, i32 %189, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %17, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %192 = icmp eq %struct.TYPE_17__* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %195 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %196 = call i32 @EVPerr(i32 %194, i32 %195)
  store i32 0, i32* %7, align 4
  br label %598

197:                                              ; preds = %184
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %9, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 13
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = call i32 @EVP_CIPHER_free(%struct.TYPE_17__* %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 13
  store %struct.TYPE_17__* %203, %struct.TYPE_17__** %205, align 8
  br label %206

206:                                              ; preds = %197, %179
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  store %struct.TYPE_17__* %207, %struct.TYPE_17__** %209, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 12
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %236

214:                                              ; preds = %206
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 9
  %219 = load i32* (i32)*, i32* (i32)** %218, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 8
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @ossl_provider_ctx(i32* %222)
  %224 = call i32* %219(i32 %223)
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 12
  store i32* %224, i32** %226, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 12
  %229 = load i32*, i32** %228, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %214
  %232 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %233 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %234 = call i32 @EVPerr(i32 %232, i32 %233)
  store i32 0, i32* %7, align 4
  br label %598

235:                                              ; preds = %214
  br label %236

236:                                              ; preds = %235, %206
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %241 = sext i32 %240 to i64
  %242 = and i64 %239, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %236
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %246 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.TYPE_16__* %245, i32 0)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  store i32 0, i32* %7, align 4
  br label %598

249:                                              ; preds = %244
  br label %250

250:                                              ; preds = %249, %236
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %292

253:                                              ; preds = %250
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 5
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load i32 (i32*, i8*, i32, i8*, i32)*, i32 (i32*, i8*, i32, i8*, i32)** %257, align 8
  %259 = icmp eq i32 (i32*, i8*, i32, i8*, i32)* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %262 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %263 = call i32 @EVPerr(i32 %261, i32 %262)
  store i32 0, i32* %7, align 4
  br label %598

264:                                              ; preds = %253
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load i32 (i32*, i8*, i32, i8*, i32)*, i32 (i32*, i8*, i32, i8*, i32)** %268, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 12
  %272 = load i32*, i32** %271, align 8
  %273 = load i8*, i8** %11, align 8
  %274 = load i8*, i8** %11, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %280

277:                                              ; preds = %264
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %279 = call i32 @EVP_CIPHER_CTX_key_length(%struct.TYPE_16__* %278)
  br label %280

280:                                              ; preds = %277, %276
  %281 = phi i32 [ 0, %276 ], [ %279, %277 ]
  %282 = load i8*, i8** %12, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %289

286:                                              ; preds = %280
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %288 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %287)
  br label %289

289:                                              ; preds = %286, %285
  %290 = phi i32 [ 0, %285 ], [ %288, %286 ]
  %291 = call i32 %269(i32* %272, i8* %273, i32 %281, i8* %282, i32 %290)
  store i32 %291, i32* %7, align 4
  br label %598

292:                                              ; preds = %250
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 5
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 2
  %297 = load i32 (i32*, i8*, i32, i8*, i32)*, i32 (i32*, i8*, i32, i8*, i32)** %296, align 8
  %298 = icmp eq i32 (i32*, i8*, i32, i8*, i32)* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %301 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %302 = call i32 @EVPerr(i32 %300, i32 %301)
  store i32 0, i32* %7, align 4
  br label %598

303:                                              ; preds = %292
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = load i32 (i32*, i8*, i32, i8*, i32)*, i32 (i32*, i8*, i32, i8*, i32)** %307, align 8
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 12
  %311 = load i32*, i32** %310, align 8
  %312 = load i8*, i8** %11, align 8
  %313 = load i8*, i8** %11, align 8
  %314 = icmp eq i8* %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %303
  br label %319

316:                                              ; preds = %303
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %318 = call i32 @EVP_CIPHER_CTX_key_length(%struct.TYPE_16__* %317)
  br label %319

319:                                              ; preds = %316, %315
  %320 = phi i32 [ 0, %315 ], [ %318, %316 ]
  %321 = load i8*, i8** %12, align 8
  %322 = load i8*, i8** %12, align 8
  %323 = icmp eq i8* %322, null
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  br label %328

325:                                              ; preds = %319
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %327 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %326)
  br label %328

328:                                              ; preds = %325, %324
  %329 = phi i32 [ 0, %324 ], [ %327, %325 ]
  %330 = call i32 %308(i32* %311, i8* %312, i32 %320, i8* %321, i32 %329)
  store i32 %330, i32* %7, align 4
  br label %598

331:                                              ; preds = %130, %103
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %333 = icmp ne %struct.TYPE_17__* %332, null
  br i1 %333, label %334, label %455

334:                                              ; preds = %331
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = icmp ne %struct.TYPE_17__* %337, null
  br i1 %338, label %339, label %351

339:                                              ; preds = %334
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %18, align 8
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %344 = call i32 @EVP_CIPHER_CTX_reset(%struct.TYPE_16__* %343)
  %345 = load i32, i32* %13, align 4
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 8
  %348 = load i64, i64* %18, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  store i64 %348, i64* %350, align 8
  br label %351

351:                                              ; preds = %339, %334
  %352 = load i32*, i32** %10, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %363

354:                                              ; preds = %351
  %355 = load i32*, i32** %10, align 8
  %356 = call i32 @ENGINE_init(i32* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %360 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %361 = call i32 @EVPerr(i32 %359, i32 %360)
  store i32 0, i32* %7, align 4
  br label %598

362:                                              ; preds = %354
  br label %365

363:                                              ; preds = %351
  %364 = load i32*, i32** %14, align 8
  store i32* %364, i32** %10, align 8
  br label %365

365:                                              ; preds = %363, %362
  %366 = load i32*, i32** %10, align 8
  %367 = icmp ne i32* %366, null
  br i1 %367, label %368, label %386

368:                                              ; preds = %365
  %369 = load i32*, i32** %10, align 8
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = trunc i64 %372 to i32
  %374 = call %struct.TYPE_17__* @ENGINE_get_cipher(i32* %369, i32 %373)
  store %struct.TYPE_17__* %374, %struct.TYPE_17__** %19, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %376 = icmp eq %struct.TYPE_17__* %375, null
  br i1 %376, label %377, label %381

377:                                              ; preds = %368
  %378 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %379 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %380 = call i32 @EVPerr(i32 %378, i32 %379)
  store i32 0, i32* %7, align 4
  br label %598

381:                                              ; preds = %368
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %382, %struct.TYPE_17__** %9, align 8
  %383 = load i32*, i32** %10, align 8
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 11
  store i32* %383, i32** %385, align 8
  br label %389

386:                                              ; preds = %365
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 11
  store i32* null, i32** %388, align 8
  br label %389

389:                                              ; preds = %386, %381
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 5
  store %struct.TYPE_17__* %390, %struct.TYPE_17__** %392, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 5
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 7
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %419

399:                                              ; preds = %389
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 7
  %404 = load i64, i64* %403, align 8
  %405 = call i32* @OPENSSL_zalloc(i64 %404)
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 10
  store i32* %405, i32** %407, align 8
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 10
  %410 = load i32*, i32** %409, align 8
  %411 = icmp eq i32* %410, null
  br i1 %411, label %412, label %418

412:                                              ; preds = %399
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %414, align 8
  %415 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %416 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %417 = call i32 @EVPerr(i32 %415, i32 %416)
  store i32 0, i32* %7, align 4
  br label %598

418:                                              ; preds = %399
  br label %422

419:                                              ; preds = %389
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 10
  store i32* null, i32** %421, align 8
  br label %422

422:                                              ; preds = %419, %418
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 9
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* @EVP_CIPHER_CTX_FLAG_WRAP_ALLOW, align 4
  %429 = sext i32 %428 to i64
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = and i64 %432, %429
  store i64 %433, i64* %431, align 8
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 5
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @EVP_CIPH_CTRL_INIT, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %454

442:                                              ; preds = %422
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %444 = load i32, i32* @EVP_CTRL_INIT, align 4
  %445 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_16__* %443, i32 %444, i32 0, i32* null)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %442
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %449, align 8
  %450 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %451 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %452 = call i32 @EVPerr(i32 %450, i32 %451)
  store i32 0, i32* %7, align 4
  br label %598

453:                                              ; preds = %442
  br label %454

454:                                              ; preds = %453, %422
  br label %455

455:                                              ; preds = %454, %331
  br label %456

456:                                              ; preds = %455, %69
  %457 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 5
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %458, align 8
  %460 = icmp eq %struct.TYPE_17__* %459, null
  br i1 %460, label %461, label %462

461:                                              ; preds = %456
  store i32 0, i32* %7, align 4
  br label %598

462:                                              ; preds = %456
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 5
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = icmp eq i32 %467, 1
  br i1 %468, label %483, label %469

469:                                              ; preds = %462
  %470 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 5
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 4
  %475 = icmp eq i32 %474, 8
  br i1 %475, label %483, label %476

476:                                              ; preds = %469
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 5
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 4
  %482 = icmp eq i32 %481, 16
  br label %483

483:                                              ; preds = %476, %469, %462
  %484 = phi i1 [ true, %469 ], [ true, %462 ], [ %482, %476 ]
  %485 = zext i1 %484 to i32
  %486 = call i32 @OPENSSL_assert(i32 %485)
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 1
  %489 = load i64, i64* %488, align 8
  %490 = load i32, i32* @EVP_CIPHER_CTX_FLAG_WRAP_ALLOW, align 4
  %491 = sext i32 %490 to i64
  %492 = and i64 %489, %491
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %503, label %494

494:                                              ; preds = %483
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %496 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_16__* %495)
  %497 = load i32, i32* @EVP_CIPH_WRAP_MODE, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %494
  %500 = load i32, i32* @EVP_F_EVP_CIPHERINIT_EX, align 4
  %501 = load i32, i32* @EVP_R_WRAP_MODE_NOT_ALLOWED, align 4
  %502 = call i32 @EVPerr(i32 %500, i32 %501)
  store i32 0, i32* %7, align 4
  br label %598

503:                                              ; preds = %494, %483
  %504 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %505 = call i32 @EVP_CIPHER_CTX_cipher(%struct.TYPE_16__* %504)
  %506 = call i32 @EVP_CIPHER_flags(i32 %505)
  %507 = load i32, i32* @EVP_CIPH_CUSTOM_IV, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %559, label %510

510:                                              ; preds = %503
  %511 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %512 = call i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_16__* %511)
  switch i32 %512, label %557 [
    i32 270, label %513
    i32 272, label %513
    i32 274, label %514
    i32 271, label %514
    i32 275, label %517
    i32 273, label %543
  ]

513:                                              ; preds = %510, %510
  br label %558

514:                                              ; preds = %510, %510
  %515 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %515, i32 0, i32 8
  store i32 0, i32* %516, align 8
  br label %517

517:                                              ; preds = %510, %514
  %518 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %519 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %518)
  %520 = icmp sle i32 %519, 8
  %521 = zext i1 %520 to i32
  %522 = call i32 @OPENSSL_assert(i32 %521)
  %523 = load i8*, i8** %12, align 8
  %524 = icmp ne i8* %523, null
  br i1 %524, label %525, label %533

525:                                              ; preds = %517
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 2
  %528 = load i8*, i8** %527, align 8
  %529 = load i8*, i8** %12, align 8
  %530 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %531 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %530)
  %532 = call i32 @memcpy(i8* %528, i8* %529, i32 %531)
  br label %533

533:                                              ; preds = %525, %517
  %534 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %534, i32 0, i32 3
  %536 = load i8*, i8** %535, align 8
  %537 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %538 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %537, i32 0, i32 2
  %539 = load i8*, i8** %538, align 8
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %541 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %540)
  %542 = call i32 @memcpy(i8* %536, i8* %539, i32 %541)
  br label %558

543:                                              ; preds = %510
  %544 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %545 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %544, i32 0, i32 8
  store i32 0, i32* %545, align 8
  %546 = load i8*, i8** %12, align 8
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %556

548:                                              ; preds = %543
  %549 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %550 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i32 0, i32 3
  %551 = load i8*, i8** %550, align 8
  %552 = load i8*, i8** %12, align 8
  %553 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %554 = call i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__* %553)
  %555 = call i32 @memcpy(i8* %551, i8* %552, i32 %554)
  br label %556

556:                                              ; preds = %548, %543
  br label %558

557:                                              ; preds = %510
  store i32 0, i32* %7, align 4
  br label %598

558:                                              ; preds = %556, %533, %513
  br label %559

559:                                              ; preds = %558, %503
  %560 = load i8*, i8** %11, align 8
  %561 = icmp ne i8* %560, null
  br i1 %561, label %571, label %562

562:                                              ; preds = %559
  %563 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %564 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %563, i32 0, i32 5
  %565 = load %struct.TYPE_17__*, %struct.TYPE_17__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @EVP_CIPH_ALWAYS_CALL_INIT, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %585

571:                                              ; preds = %562, %559
  %572 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %572, i32 0, i32 5
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 5
  %576 = load i32 (%struct.TYPE_16__*, i8*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i8*, i32)** %575, align 8
  %577 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %578 = load i8*, i8** %11, align 8
  %579 = load i8*, i8** %12, align 8
  %580 = load i32, i32* %13, align 4
  %581 = call i32 %576(%struct.TYPE_16__* %577, i8* %578, i8* %579, i32 %580)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %584, label %583

583:                                              ; preds = %571
  store i32 0, i32* %7, align 4
  br label %598

584:                                              ; preds = %571
  br label %585

585:                                              ; preds = %584, %562
  %586 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %587 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %586, i32 0, i32 7
  store i64 0, i64* %587, align 8
  %588 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %589 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %588, i32 0, i32 6
  store i64 0, i64* %589, align 8
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 5
  %592 = load %struct.TYPE_17__*, %struct.TYPE_17__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 4
  %595 = sub nsw i32 %594, 1
  %596 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %596, i32 0, i32 4
  store i32 %595, i32* %597, align 8
  store i32 1, i32* %7, align 4
  br label %598

598:                                              ; preds = %585, %583, %557, %499, %461, %447, %412, %377, %358, %328, %299, %289, %260, %248, %231, %193, %42
  %599 = load i32, i32* %7, align 4
  ret i32 %599
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @ENGINE_get_cipher_engine(i64) #1

declare dso_local i32 @EVP_CIPHER_free(%struct.TYPE_17__*) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @EVP_CIPHER_fetch(i32*, i32, i8*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @ossl_provider_ctx(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_key_length(%struct.TYPE_16__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(%struct.TYPE_16__*) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local %struct.TYPE_17__* @ENGINE_get_cipher(i32*, i32) #1

declare dso_local i32* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_mode(%struct.TYPE_16__*) #1

declare dso_local i32 @EVP_CIPHER_flags(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_cipher(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
