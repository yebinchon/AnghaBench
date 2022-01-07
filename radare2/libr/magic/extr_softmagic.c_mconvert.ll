; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_mconvert.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_mconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %union.VALUETYPE }
%union.VALUETYPE = type { i8* }
%struct.r_magic = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid type %d in mconvert()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.r_magic*)* @mconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mconvert(%struct.TYPE_4__* %0, %struct.r_magic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.r_magic*, align 8
  %6 = alloca %union.VALUETYPE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.r_magic* %1, %struct.r_magic** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %union.VALUETYPE* %12, %union.VALUETYPE** %6, align 8
  %13 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %14 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %522 [
    i32 155, label %16
    i32 129, label %20
    i32 139, label %24
    i32 154, label %24
    i32 150, label %24
    i32 132, label %28
    i32 134, label %28
    i32 133, label %28
    i32 128, label %32
    i32 156, label %32
    i32 140, label %32
    i32 135, label %60
    i32 157, label %110
    i32 161, label %129
    i32 165, label %129
    i32 162, label %129
    i32 158, label %142
    i32 160, label %142
    i32 159, label %142
    i32 141, label %202
    i32 145, label %221
    i32 149, label %221
    i32 146, label %221
    i32 142, label %234
    i32 144, label %234
    i32 143, label %234
    i32 136, label %294
    i32 138, label %294
    i32 137, label %294
    i32 151, label %329
    i32 163, label %333
    i32 147, label %365
    i32 152, label %397
    i32 164, label %401
    i32 148, label %461
    i32 131, label %521
    i32 130, label %521
    i32 153, label %521
  ]

16:                                               ; preds = %2
  %17 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %18 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %19 = call i32 @cvt_8(%union.VALUETYPE* %17, %struct.r_magic* %18)
  store i32 1, i32* %3, align 4
  br label %528

20:                                               ; preds = %2
  %21 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %22 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %23 = call i32 @cvt_16(%union.VALUETYPE* %21, %struct.r_magic* %22)
  store i32 1, i32* %3, align 4
  br label %528

24:                                               ; preds = %2, %2, %2
  %25 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %26 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %27 = call i32 @cvt_32(%union.VALUETYPE* %25, %struct.r_magic* %26)
  store i32 1, i32* %3, align 4
  br label %528

28:                                               ; preds = %2, %2, %2
  %29 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %30 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %31 = call i32 @cvt_64(%union.VALUETYPE* %29, %struct.r_magic* %30)
  store i32 1, i32* %3, align 4
  br label %528

32:                                               ; preds = %2, %2, %2
  %33 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %34 = bitcast %union.VALUETYPE* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  store i8 0, i8* %36, align 1
  %37 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %38 = bitcast %union.VALUETYPE* %37 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %7, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %32
  %45 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %46 = bitcast %union.VALUETYPE* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %55 = bitcast %union.VALUETYPE* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %53, %44, %32
  store i32 1, i32* %3, align 4
  br label %528

60:                                               ; preds = %2
  %61 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %62 = bitcast %union.VALUETYPE* %61 to i8**
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %9, align 8
  %66 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %67 = bitcast %union.VALUETYPE* %66 to i8**
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i64
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp uge i64 %71, 8
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i64 7, i64* %10, align 8
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %10, align 8
  %78 = icmp ne i64 %76, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  store i8 %82, i8* %83, align 1
  br label %75

85:                                               ; preds = %75
  %86 = load i8*, i8** %8, align 8
  store i8 0, i8* %86, align 1
  %87 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %88 = bitcast %union.VALUETYPE* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strlen(i8* %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %10, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %96 = bitcast %union.VALUETYPE* %95 to i8**
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %105 = bitcast %union.VALUETYPE* %104 to i8**
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %103, %94, %85
  store i32 1, i32* %3, align 4
  br label %528

110:                                              ; preds = %2
  %111 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %112 = bitcast %union.VALUETYPE* %111 to i32**
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %118 = bitcast %union.VALUETYPE* %117 to i32**
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %116, %121
  %123 = trunc i32 %122 to i16
  %124 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %125 = bitcast %union.VALUETYPE* %124 to i16*
  store i16 %123, i16* %125, align 8
  %126 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %127 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %128 = call i32 @cvt_16(%union.VALUETYPE* %126, %struct.r_magic* %127)
  store i32 1, i32* %3, align 4
  br label %528

129:                                              ; preds = %2, %2, %2
  %130 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %131 = bitcast %union.VALUETYPE* %130 to i32**
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @r_read_be32(i32* %132)
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = ptrtoint i8* %135 to i32
  %137 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %138 = bitcast %union.VALUETYPE* %137 to i32*
  store i32 %136, i32* %138, align 8
  %139 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %140 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %141 = call i32 @cvt_32(%union.VALUETYPE* %139, %struct.r_magic* %140)
  store i32 1, i32* %3, align 4
  br label %528

142:                                              ; preds = %2, %2, %2
  %143 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %144 = bitcast %union.VALUETYPE* %143 to i32**
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 56
  %149 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %150 = bitcast %union.VALUETYPE* %149 to i32**
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 48
  %155 = or i32 %148, %154
  %156 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %157 = bitcast %union.VALUETYPE* %156 to i32**
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 40
  %162 = or i32 %155, %161
  %163 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %164 = bitcast %union.VALUETYPE* %163 to i32**
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 32
  %169 = or i32 %162, %168
  %170 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %171 = bitcast %union.VALUETYPE* %170 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 24
  %176 = or i32 %169, %175
  %177 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %178 = bitcast %union.VALUETYPE* %177 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 16
  %183 = or i32 %176, %182
  %184 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %185 = bitcast %union.VALUETYPE* %184 to i32**
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 6
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 %183, %189
  %191 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %192 = bitcast %union.VALUETYPE* %191 to i32**
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %190, %195
  %197 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %198 = bitcast %union.VALUETYPE* %197 to i32*
  store i32 %196, i32* %198, align 8
  %199 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %200 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %201 = call i32 @cvt_64(%union.VALUETYPE* %199, %struct.r_magic* %200)
  store i32 1, i32* %3, align 4
  br label %528

202:                                              ; preds = %2
  %203 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %204 = bitcast %union.VALUETYPE* %203 to i32**
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 8
  %209 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %210 = bitcast %union.VALUETYPE* %209 to i32**
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %208, %213
  %215 = trunc i32 %214 to i16
  %216 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %217 = bitcast %union.VALUETYPE* %216 to i16*
  store i16 %215, i16* %217, align 8
  %218 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %219 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %220 = call i32 @cvt_16(%union.VALUETYPE* %218, %struct.r_magic* %219)
  store i32 1, i32* %3, align 4
  br label %528

221:                                              ; preds = %2, %2, %2
  %222 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %223 = bitcast %union.VALUETYPE* %222 to i32**
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @r_read_le32(i32* %224)
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = ptrtoint i8* %227 to i32
  %229 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %230 = bitcast %union.VALUETYPE* %229 to i32*
  store i32 %228, i32* %230, align 8
  %231 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %232 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %233 = call i32 @cvt_32(%union.VALUETYPE* %231, %struct.r_magic* %232)
  store i32 1, i32* %3, align 4
  br label %528

234:                                              ; preds = %2, %2, %2
  %235 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %236 = bitcast %union.VALUETYPE* %235 to i32**
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 56
  %241 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %242 = bitcast %union.VALUETYPE* %241 to i32**
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 48
  %247 = or i32 %240, %246
  %248 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %249 = bitcast %union.VALUETYPE* %248 to i32**
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 40
  %254 = or i32 %247, %253
  %255 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %256 = bitcast %union.VALUETYPE* %255 to i32**
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 32
  %261 = or i32 %254, %260
  %262 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %263 = bitcast %union.VALUETYPE* %262 to i32**
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 24
  %268 = or i32 %261, %267
  %269 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %270 = bitcast %union.VALUETYPE* %269 to i32**
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 16
  %275 = or i32 %268, %274
  %276 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %277 = bitcast %union.VALUETYPE* %276 to i32**
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 8
  %282 = or i32 %275, %281
  %283 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %284 = bitcast %union.VALUETYPE* %283 to i32**
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %282, %287
  %289 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %290 = bitcast %union.VALUETYPE* %289 to i32*
  store i32 %288, i32* %290, align 8
  %291 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %292 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %293 = call i32 @cvt_64(%union.VALUETYPE* %291, %struct.r_magic* %292)
  store i32 1, i32* %3, align 4
  br label %528

294:                                              ; preds = %2, %2, %2
  %295 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %296 = bitcast %union.VALUETYPE* %295 to i32**
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, 24
  %301 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %302 = bitcast %union.VALUETYPE* %301 to i32**
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 16
  %307 = or i32 %300, %306
  %308 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %309 = bitcast %union.VALUETYPE* %308 to i32**
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 3
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 %312, 8
  %314 = or i32 %307, %313
  %315 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %316 = bitcast %union.VALUETYPE* %315 to i32**
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %314, %319
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i8*
  %323 = ptrtoint i8* %322 to i32
  %324 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %325 = bitcast %union.VALUETYPE* %324 to i32*
  store i32 %323, i32* %325, align 8
  %326 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %327 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %328 = call i32 @cvt_32(%union.VALUETYPE* %326, %struct.r_magic* %327)
  store i32 1, i32* %3, align 4
  br label %528

329:                                              ; preds = %2
  %330 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %331 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %332 = call i32 @cvt_float(%union.VALUETYPE* %330, %struct.r_magic* %331)
  store i32 1, i32* %3, align 4
  br label %528

333:                                              ; preds = %2
  %334 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %335 = bitcast %union.VALUETYPE* %334 to i32**
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = shl i32 %338, 24
  %340 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %341 = bitcast %union.VALUETYPE* %340 to i32**
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 16
  %346 = or i32 %339, %345
  %347 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %348 = bitcast %union.VALUETYPE* %347 to i32**
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 2
  %351 = load i32, i32* %350, align 4
  %352 = shl i32 %351, 8
  %353 = or i32 %346, %352
  %354 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %355 = bitcast %union.VALUETYPE* %354 to i32**
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %353, %358
  %360 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %361 = bitcast %union.VALUETYPE* %360 to i32*
  store i32 %359, i32* %361, align 8
  %362 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %363 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %364 = call i32 @cvt_float(%union.VALUETYPE* %362, %struct.r_magic* %363)
  store i32 1, i32* %3, align 4
  br label %528

365:                                              ; preds = %2
  %366 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %367 = bitcast %union.VALUETYPE* %366 to i32**
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 3
  %370 = load i32, i32* %369, align 4
  %371 = shl i32 %370, 24
  %372 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %373 = bitcast %union.VALUETYPE* %372 to i32**
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 2
  %376 = load i32, i32* %375, align 4
  %377 = shl i32 %376, 16
  %378 = or i32 %371, %377
  %379 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %380 = bitcast %union.VALUETYPE* %379 to i32**
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 %383, 8
  %385 = or i32 %378, %384
  %386 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %387 = bitcast %union.VALUETYPE* %386 to i32**
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 0
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %385, %390
  %392 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %393 = bitcast %union.VALUETYPE* %392 to i32*
  store i32 %391, i32* %393, align 8
  %394 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %395 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %396 = call i32 @cvt_float(%union.VALUETYPE* %394, %struct.r_magic* %395)
  store i32 1, i32* %3, align 4
  br label %528

397:                                              ; preds = %2
  %398 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %399 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %400 = call i32 @cvt_double(%union.VALUETYPE* %398, %struct.r_magic* %399)
  store i32 1, i32* %3, align 4
  br label %528

401:                                              ; preds = %2
  %402 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %403 = bitcast %union.VALUETYPE* %402 to i32**
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = shl i32 %406, 56
  %408 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %409 = bitcast %union.VALUETYPE* %408 to i32**
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  %412 = load i32, i32* %411, align 4
  %413 = shl i32 %412, 48
  %414 = or i32 %407, %413
  %415 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %416 = bitcast %union.VALUETYPE* %415 to i32**
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 2
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 40
  %421 = or i32 %414, %420
  %422 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %423 = bitcast %union.VALUETYPE* %422 to i32**
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 3
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 32
  %428 = or i32 %421, %427
  %429 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %430 = bitcast %union.VALUETYPE* %429 to i32**
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 4
  %433 = load i32, i32* %432, align 4
  %434 = shl i32 %433, 24
  %435 = or i32 %428, %434
  %436 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %437 = bitcast %union.VALUETYPE* %436 to i32**
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 5
  %440 = load i32, i32* %439, align 4
  %441 = shl i32 %440, 16
  %442 = or i32 %435, %441
  %443 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %444 = bitcast %union.VALUETYPE* %443 to i32**
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 6
  %447 = load i32, i32* %446, align 4
  %448 = shl i32 %447, 8
  %449 = or i32 %442, %448
  %450 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %451 = bitcast %union.VALUETYPE* %450 to i32**
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 7
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %449, %454
  %456 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %457 = bitcast %union.VALUETYPE* %456 to i32*
  store i32 %455, i32* %457, align 8
  %458 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %459 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %460 = call i32 @cvt_double(%union.VALUETYPE* %458, %struct.r_magic* %459)
  store i32 1, i32* %3, align 4
  br label %528

461:                                              ; preds = %2
  %462 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %463 = bitcast %union.VALUETYPE* %462 to i32**
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 7
  %466 = load i32, i32* %465, align 4
  %467 = shl i32 %466, 56
  %468 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %469 = bitcast %union.VALUETYPE* %468 to i32**
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 6
  %472 = load i32, i32* %471, align 4
  %473 = shl i32 %472, 48
  %474 = or i32 %467, %473
  %475 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %476 = bitcast %union.VALUETYPE* %475 to i32**
  %477 = load i32*, i32** %476, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 5
  %479 = load i32, i32* %478, align 4
  %480 = shl i32 %479, 40
  %481 = or i32 %474, %480
  %482 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %483 = bitcast %union.VALUETYPE* %482 to i32**
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 4
  %486 = load i32, i32* %485, align 4
  %487 = shl i32 %486, 32
  %488 = or i32 %481, %487
  %489 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %490 = bitcast %union.VALUETYPE* %489 to i32**
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 3
  %493 = load i32, i32* %492, align 4
  %494 = shl i32 %493, 24
  %495 = or i32 %488, %494
  %496 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %497 = bitcast %union.VALUETYPE* %496 to i32**
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 2
  %500 = load i32, i32* %499, align 4
  %501 = shl i32 %500, 16
  %502 = or i32 %495, %501
  %503 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %504 = bitcast %union.VALUETYPE* %503 to i32**
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  %507 = load i32, i32* %506, align 4
  %508 = shl i32 %507, 8
  %509 = or i32 %502, %508
  %510 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %511 = bitcast %union.VALUETYPE* %510 to i32**
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  %514 = load i32, i32* %513, align 4
  %515 = or i32 %509, %514
  %516 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %517 = bitcast %union.VALUETYPE* %516 to i32*
  store i32 %515, i32* %517, align 8
  %518 = load %union.VALUETYPE*, %union.VALUETYPE** %6, align 8
  %519 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %520 = call i32 @cvt_double(%union.VALUETYPE* %518, %struct.r_magic* %519)
  store i32 1, i32* %3, align 4
  br label %528

521:                                              ; preds = %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %528

522:                                              ; preds = %2
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %524 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %525 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @file_magerror(%struct.TYPE_4__* %523, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %526)
  store i32 0, i32* %3, align 4
  br label %528

528:                                              ; preds = %522, %521, %461, %401, %397, %365, %333, %329, %294, %234, %221, %202, %142, %129, %110, %109, %59, %28, %24, %20, %16
  %529 = load i32, i32* %3, align 4
  ret i32 %529
}

declare dso_local i32 @cvt_8(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i32 @cvt_16(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i32 @cvt_32(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i32 @cvt_64(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_read_be32(i32*) #1

declare dso_local i32 @r_read_le32(i32*) #1

declare dso_local i32 @cvt_float(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i32 @cvt_double(%union.VALUETYPE*, %struct.r_magic*) #1

declare dso_local i32 @file_magerror(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
