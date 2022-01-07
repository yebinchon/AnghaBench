; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_decoder.c_lzma_decoder_reset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_decoder.c_lzma_decoder_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64, i32*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@STATE_LIT_LIT = common dso_local global i32 0, align 4
@STATES = common dso_local global i64 0, align 8
@LEN_TO_POS_STATES = common dso_local global i64 0, align 8
@POS_SLOT_BITS = common dso_local global i32 0, align 4
@FULL_DISTANCES = common dso_local global i64 0, align 8
@END_POS_MODEL_INDEX = common dso_local global i64 0, align 8
@ALIGN_BITS = common dso_local global i32 0, align 4
@LEN_LOW_BITS = common dso_local global i32 0, align 4
@LEN_MID_BITS = common dso_local global i32 0, align 4
@LEN_HIGH_BITS = common dso_local global i32 0, align 4
@SEQ_IS_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @lzma_decoder_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_decoder_reset(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = sub i32 %17, 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 26
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @literal_init(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 25
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = sub i32 %39, 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @STATE_LIT_LIT, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 24
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 23
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 22
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 21
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = sub i32 %57, 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 19
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @rc_reset(i32 %63)
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %130, %2
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @STATES, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %98, %69
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = icmp ule i64 %71, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 18
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bit_reset(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 17
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bit_reset(i32 %96)
  br label %98

98:                                               ; preds = %77
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %70

101:                                              ; preds = %70
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 16
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bit_reset(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 15
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bit_reset(i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 14
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bit_reset(i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 13
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @bit_reset(i32 %128)
  br label %130

130:                                              ; preds = %101
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %6, align 8
  br label %65

133:                                              ; preds = %65
  store i64 0, i64* %8, align 8
  br label %134

134:                                              ; preds = %147, %133
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @LEN_TO_POS_STATES, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 12
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @POS_SLOT_BITS, align 4
  %146 = call i32 @bittree_reset(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %138
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %8, align 8
  br label %134

150:                                              ; preds = %134
  store i64 0, i64* %9, align 8
  br label %151

151:                                              ; preds = %165, %150
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* @FULL_DISTANCES, align 8
  %154 = load i64, i64* @END_POS_MODEL_INDEX, align 8
  %155 = sub i64 %153, %154
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 11
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @bit_reset(i32 %163)
  br label %165

165:                                              ; preds = %157
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %151

168:                                              ; preds = %151
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ALIGN_BITS, align 4
  %173 = call i32 @bittree_reset(i32 %171, i32 %172)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 1, %176
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %10, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @bit_reset(i32 %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 9
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @bit_reset(i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @bit_reset(i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @bit_reset(i32 %197)
  store i64 0, i64* %11, align 8
  br label %199

199:                                              ; preds = %240, %168
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* %10, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %243

203:                                              ; preds = %199
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* %11, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @LEN_LOW_BITS, align 4
  %212 = call i32 @bittree_reset(i32 %210, i32 %211)
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 9
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @LEN_MID_BITS, align 4
  %221 = call i32 @bittree_reset(i32 %219, i32 %220)
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %11, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @LEN_LOW_BITS, align 4
  %230 = call i32 @bittree_reset(i32 %228, i32 %229)
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* %11, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @LEN_MID_BITS, align 4
  %239 = call i32 @bittree_reset(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %203
  %241 = load i64, i64* %11, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %11, align 8
  br label %199

243:                                              ; preds = %199
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 9
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @LEN_HIGH_BITS, align 4
  %249 = call i32 @bittree_reset(i32 %247, i32 %248)
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @LEN_HIGH_BITS, align 4
  %255 = call i32 @bittree_reset(i32 %253, i32 %254)
  %256 = load i32, i32* @SEQ_IS_MATCH, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 7
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 6
  store i32* null, i32** %260, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 5
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 4
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 3
  store i64 0, i64* %266, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  ret void
}

declare dso_local i32 @literal_init(i32, i32, i32) #1

declare dso_local i32 @rc_reset(i32) #1

declare dso_local i32 @bit_reset(i32) #1

declare dso_local i32 @bittree_reset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
