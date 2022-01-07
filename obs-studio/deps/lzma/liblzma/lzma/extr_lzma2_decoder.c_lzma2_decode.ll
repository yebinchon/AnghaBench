; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma2_decoder.c_lzma2_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma2_decoder.c_lzma2_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 (i32, i32*, i32*, i64*, i64)*, i32 (i32, i32*)*, i32 (i32, i32)* }

@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i64*, i64)* @lzma2_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma2_decode(%struct.TYPE_5__* noalias %0, i32* noalias %1, i32* noalias %2, i64* noalias %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  br label %16

16:                                               ; preds = %299, %5
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 131
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %300

28:                                               ; preds = %26
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %296 [
    i32 133, label %32
    i32 129, label %131
    i32 128, label %145
    i32 135, label %171
    i32 134, label %183
    i32 130, label %200
    i32 131, label %227
    i32 132, label %278
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %44, i32* %6, align 4
  br label %302

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 224
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  br label %64

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %62, i32* %6, align 4
  br label %302

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %65, 128
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 31
  %70 = shl i32 %69, 16
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 129, i32* %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = icmp sge i32 %75, 192
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32 130, i32* %81, align 8
  br label %108

82:                                               ; preds = %67
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %88, i32* %6, align 4
  br label %302

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  store i32 131, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %92, 160
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32 (i32, i32*)*, i32 (i32, i32*)** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 7
  %105 = call i32 %98(i32 %102, i32* %104)
  br label %106

106:                                              ; preds = %94, %89
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %77
  br label %119

109:                                              ; preds = %64
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %113, i32* %6, align 4
  br label %302

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 135, i32* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  store i32 132, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %108
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @dict_reset(i32* %127)
  %129 = load i32, i32* @LZMA_OK, align 4
  store i32 %129, i32* %6, align 4
  br label %302

130:                                              ; preds = %119
  br label %299

131:                                              ; preds = %28
  %132 = load i32*, i32** %9, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %134
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 128, i32* %144, align 8
  br label %299

145:                                              ; preds = %28
  %146 = load i32*, i32** %9, align 8
  %147 = load i64*, i64** %10, align 8
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %148
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 135, i32* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32 (i32, i32)*, i32 (i32, i32)** %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 %162(i32 %166, i32 %169)
  br label %299

171:                                              ; preds = %28
  %172 = load i32*, i32** %9, align 8
  %173 = load i64*, i64** %10, align 8
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %174
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i32 134, i32* %182, align 8
  br label %299

183:                                              ; preds = %28
  %184 = load i32*, i32** %9, align 8
  %185 = load i64*, i64** %10, align 8
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = getelementptr inbounds i32, i32* %184, i64 %186
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %299

200:                                              ; preds = %28
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 7
  %203 = load i32*, i32** %9, align 8
  %204 = load i64*, i64** %10, align 8
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i32, i32* %203, i64 %205
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @lzma_lzma_lclppb_decode(i32* %202, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %212, i32* %6, align 4
  br label %302

213:                                              ; preds = %200
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32 (i32, i32*)*, i32 (i32, i32*)** %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 7
  %224 = call i32 %217(i32 %221, i32* %223)
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i32 131, i32* %226, align 8
  br label %299

227:                                              ; preds = %28
  %228 = load i64*, i64** %10, align 8
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %13, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32 (i32, i32*, i32*, i64*, i64)*, i32 (i32, i32*, i32*, i64*, i64)** %232, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = load i64*, i64** %10, align 8
  %241 = load i64, i64* %11, align 8
  %242 = call i32 %233(i32 %237, i32* %238, i32* %239, i64* %240, i64 %241)
  store i32 %242, i32* %14, align 4
  %243 = load i64*, i64** %10, align 8
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %13, align 8
  %246 = sub i64 %244, %245
  store i64 %246, i64* %15, align 8
  %247 = load i64, i64* %15, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp ugt i64 %247, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %227
  %254 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %254, i32* %6, align 4
  br label %302

255:                                              ; preds = %227
  %256 = load i64, i64* %15, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = sub i64 %260, %256
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @LZMA_STREAM_END, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %255
  %267 = load i32, i32* %14, align 4
  store i32 %267, i32* %6, align 4
  br label %302

268:                                              ; preds = %255
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %274, i32* %6, align 4
  br label %302

275:                                              ; preds = %268
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  store i32 133, i32* %277, align 8
  br label %299

278:                                              ; preds = %28
  %279 = load i32*, i32** %8, align 8
  %280 = load i32*, i32** %9, align 8
  %281 = load i64*, i64** %10, align 8
  %282 = load i64, i64* %11, align 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 5
  %285 = bitcast i32* %284 to i64*
  %286 = call i32 @dict_write(i32* %279, i32* %280, i64* %281, i64 %282, i64* %285)
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %278
  %292 = load i32, i32* @LZMA_OK, align 4
  store i32 %292, i32* %6, align 4
  br label %302

293:                                              ; preds = %278
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  store i32 133, i32* %295, align 8
  br label %299

296:                                              ; preds = %28
  %297 = call i32 @assert(i32 0)
  %298 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %298, i32* %6, align 4
  br label %302

299:                                              ; preds = %293, %275, %213, %183, %171, %145, %131, %130
  br label %16

300:                                              ; preds = %26
  %301 = load i32, i32* @LZMA_OK, align 4
  store i32 %301, i32* %6, align 4
  br label %302

302:                                              ; preds = %300, %296, %291, %273, %266, %253, %211, %124, %112, %87, %61, %43
  %303 = load i32, i32* %6, align 4
  ret i32 %303
}

declare dso_local i32 @dict_reset(i32*) #1

declare dso_local i32 @lzma_lzma_lclppb_decode(i32*, i32) #1

declare dso_local i32 @dict_write(i32*, i32*, i64*, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
