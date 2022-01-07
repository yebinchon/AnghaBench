; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_decode_cinepak.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_decode_cinepak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32** }
%struct.frame_header = type { i8, i64, i16, i16, i16 }

@in_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"CVID: corruption %d (QT/AVI) != %ld (CV)\0A\00", align 1
@MAX_STRIPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"CVID: strip overflow (more than %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"CVID: codebook v4 alloc err\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CVID: codebook v1 alloc err\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"CVID: %ux%u, strips %u, length %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"CVID: Warning x1 (%ld) != width (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"   %d) %04lx %04ld <%ld,%ld> <%ld,%ld> yt %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"        %04lx %04ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"CVID: unknown chunk_id %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"CVID: END INFO chunk size %d cvid size1 %ld cvid size2 %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i8*, i32, i32, i32, i32)* @decode_cinepak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_cinepak(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32 (i8*, i8*, i32, i32, i32*)*, align 8
  %46 = alloca i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)*, align 8
  %47 = alloca %struct.frame_header, align 8
  %48 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32* null, i32** %19, align 8
  store i32 3, i32* %44, align 4
  store i32 (i8*, i8*, i32, i32, i32*)* @cvid_v1_24, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  store i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)* @cvid_v4_24, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** @in_buffer, align 8
  %50 = call i64 (...) @get_byte()
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 0
  store i8 %51, i8* %52, align 8
  %53 = call i64 (...) @get_byte()
  %54 = shl i64 %53, 16
  %55 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = call i64 (...) @get_byte()
  %57 = shl i64 %56, 8
  %58 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %57
  store i64 %60, i64* %58, align 8
  %61 = call i64 (...) @get_byte()
  %62 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %61
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %15, align 4
  switch i32 %65, label %70 [
    i32 15, label %66
    i32 16, label %67
    i32 24, label %68
    i32 32, label %69
  ]

66:                                               ; preds = %8
  store i32 2, i32* %44, align 4
  store i32 (i8*, i8*, i32, i32, i32*)* @cvid_v1_15, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  store i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)* @cvid_v4_15, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  br label %70

67:                                               ; preds = %8
  store i32 2, i32* %44, align 4
  store i32 (i8*, i8*, i32, i32, i32*)* @cvid_v1_16, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  store i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)* @cvid_v4_16, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  br label %70

68:                                               ; preds = %8
  store i32 3, i32* %44, align 4
  store i32 (i8*, i8*, i32, i32, i32*)* @cvid_v1_24, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  store i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)* @cvid_v4_24, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  br label %70

69:                                               ; preds = %8
  store i32 4, i32* %44, align 4
  store i32 (i8*, i8*, i32, i32, i32*)* @cvid_v1_32, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  store i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)* @cvid_v4_32, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  br label %70

70:                                               ; preds = %8, %69, %68, %67, %66
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %44, align 4
  %73 = mul nsw i32 %72, 8
  %74 = call i32 @get_stride(i32 %71, i32 %73)
  store i32 %74, i32* %43, align 4
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %35, align 8
  %76 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, 1
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %99)
  br label %101

101:                                              ; preds = %96, %90
  br label %102

102:                                              ; preds = %101, %70
  %103 = call i8* (...) @get_word()
  %104 = ptrtoint i8* %103 to i16
  %105 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 2
  store i16 %104, i16* %105, align 8
  %106 = call i8* (...) @get_word()
  %107 = ptrtoint i8* %106 to i16
  %108 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 3
  store i16 %107, i16* %108, align 2
  %109 = call i8* (...) @get_word()
  %110 = ptrtoint i8* %109 to i16
  %111 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  store i16 %110, i16* %111, align 4
  %112 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %113 = load i16, i16* %112, align 4
  %114 = zext i16 %113 to i32
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %167

119:                                              ; preds = %102
  %120 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %121 = load i16, i16* %120, align 4
  %122 = zext i16 %121 to i64
  %123 = load i64, i64* @MAX_STRIPS, align 8
  %124 = icmp uge i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* @MAX_STRIPS, align 8
  %127 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  br label %809

128:                                              ; preds = %119
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %36, align 4
  br label %132

132:                                              ; preds = %163, %128
  %133 = load i32, i32* %36, align 4
  %134 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %135 = load i16, i16* %134, align 4
  %136 = zext i16 %135 to i32
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %132
  %139 = call i8* @heap_alloc(i32 1040)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %36, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  store i32* %140, i32** %146, align 8
  %147 = icmp eq i32* %140, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %809

150:                                              ; preds = %138
  %151 = call i8* @heap_alloc(i32 1040)
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %36, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  store i32* %152, i32** %158, align 8
  %159 = icmp eq i32* %152, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %809

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %36, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %36, align 4
  br label %132

166:                                              ; preds = %132
  br label %167

167:                                              ; preds = %166, %102
  %168 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %169 = load i16, i16* %168, align 4
  %170 = zext i16 %169 to i32
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 2
  %174 = load i16, i16* %173, align 8
  %175 = zext i16 %174 to i64
  %176 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 3
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i64
  %179 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %180 = load i16, i16* %179, align 4
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %175, i64 %178, i32 %181, i64 %183)
  store i32 0, i32* %37, align 4
  br label %185

185:                                              ; preds = %767, %167
  %186 = load i32, i32* %37, align 4
  %187 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 4
  %188 = load i16, i16* %187, align 4
  %189 = zext i16 %188 to i32
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %770

191:                                              ; preds = %185
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %37, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  store i32* %198, i32** %17, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %37, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %18, align 8
  %206 = load i32, i32* %37, align 4
  %207 = icmp ugt i32 %206, 0
  br i1 %207, label %208, label %247

208:                                              ; preds = %191
  %209 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %247, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 2
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %37, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %37, align 4
  %226 = sub i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %224, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @memcpy(i32* %221, i32* %229, i32 1040)
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %37, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %37, align 4
  %242 = sub i32 %241, 1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %240, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @memcpy(i32* %237, i32* %245, i32 1040)
  br label %247

247:                                              ; preds = %214, %208, %191
  %248 = call i8* (...) @get_word()
  %249 = ptrtoint i8* %248 to i64
  store i64 %249, i64* %24, align 8
  %250 = call i8* (...) @get_word()
  %251 = ptrtoint i8* %250 to i64
  store i64 %251, i64* %33, align 8
  %252 = call i8* (...) @get_word()
  %253 = ptrtoint i8* %252 to i64
  store i64 %253, i64* %27, align 8
  %254 = call i8* (...) @get_word()
  %255 = ptrtoint i8* %254 to i64
  store i64 %255, i64* %26, align 8
  %256 = call i8* (...) @get_word()
  %257 = ptrtoint i8* %256 to i64
  store i64 %257, i64* %29, align 8
  %258 = call i8* (...) @get_word()
  %259 = ptrtoint i8* %258 to i64
  store i64 %259, i64* %28, align 8
  %260 = load i64, i64* %29, align 8
  %261 = load i64, i64* %22, align 8
  %262 = add i64 %261, %260
  store i64 %262, i64* %22, align 8
  %263 = load i64, i64* %33, align 8
  %264 = sub nsw i64 %263, 12
  store i64 %264, i64* %33, align 8
  store i64 0, i64* %20, align 8
  %265 = load i64, i64* %28, align 8
  %266 = load i32, i32* %13, align 4
  %267 = zext i32 %266 to i64
  %268 = icmp ne i64 %265, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %247
  %270 = load i64, i64* %28, align 8
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* %13, align 4
  %273 = call i32 (i8*, i32, i32, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %269, %247
  %275 = load i32, i32* %37, align 4
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %24, align 8
  %278 = load i64, i64* %33, align 8
  %279 = load i64, i64* %26, align 8
  %280 = load i64, i64* %27, align 8
  %281 = load i64, i64* %28, align 8
  %282 = load i64, i64* %29, align 8
  %283 = load i64, i64* %22, align 8
  %284 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283)
  br label %285

285:                                              ; preds = %765, %274
  %286 = load i64, i64* %33, align 8
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %766

288:                                              ; preds = %285
  %289 = call i8* (...) @get_word()
  %290 = ptrtoint i8* %289 to i64
  store i64 %290, i64* %25, align 8
  %291 = call i8* (...) @get_word()
  %292 = ptrtoint i8* %291 to i64
  store i64 %292, i64* %34, align 8
  %293 = load i64, i64* %25, align 8
  %294 = load i64, i64* %34, align 8
  %295 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %293, i64 %294)
  %296 = load i64, i64* %34, align 8
  %297 = load i64, i64* %33, align 8
  %298 = sub nsw i64 %297, %296
  store i64 %298, i64* %33, align 8
  %299 = load i64, i64* %34, align 8
  %300 = sub nsw i64 %299, 4
  store i64 %300, i64* %34, align 8
  %301 = load i64, i64* %25, align 8
  switch i64 %301, label %754 [
    i64 8192, label %302
    i64 8704, label %302
    i64 9216, label %328
    i64 9728, label %328
    i64 8448, label %354
    i64 8960, label %354
    i64 9472, label %402
    i64 9984, label %402
    i64 12288, label %450
    i64 12544, label %567
    i64 12800, label %703
  ]

302:                                              ; preds = %288, %288
  %303 = load i64, i64* %25, align 8
  %304 = icmp eq i64 %303, 8704
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = load i32*, i32** %18, align 8
  br label %309

307:                                              ; preds = %302
  %308 = load i32*, i32** %17, align 8
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i32* [ %306, %305 ], [ %308, %307 ]
  store i32* %310, i32** %19, align 8
  %311 = load i64, i64* %34, align 8
  %312 = sdiv i64 %311, 6
  store i64 %312, i64* %23, align 8
  store i32 0, i32* %36, align 4
  br label %313

313:                                              ; preds = %324, %309
  %314 = load i32, i32* %36, align 4
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %23, align 8
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %327

318:                                              ; preds = %313
  %319 = load i32*, i32** %19, align 8
  %320 = load i32, i32* %36, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = call i32 @read_codebook(i32* %322, i32 0)
  br label %324

324:                                              ; preds = %318
  %325 = load i32, i32* %36, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %36, align 4
  br label %313

327:                                              ; preds = %313
  br label %765

328:                                              ; preds = %288, %288
  %329 = load i64, i64* %25, align 8
  %330 = icmp eq i64 %329, 9728
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  %332 = load i32*, i32** %18, align 8
  br label %335

333:                                              ; preds = %328
  %334 = load i32*, i32** %17, align 8
  br label %335

335:                                              ; preds = %333, %331
  %336 = phi i32* [ %332, %331 ], [ %334, %333 ]
  store i32* %336, i32** %19, align 8
  %337 = load i64, i64* %34, align 8
  %338 = sdiv i64 %337, 4
  store i64 %338, i64* %23, align 8
  store i32 0, i32* %36, align 4
  br label %339

339:                                              ; preds = %350, %335
  %340 = load i32, i32* %36, align 4
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %23, align 8
  %343 = icmp ult i64 %341, %342
  br i1 %343, label %344, label %353

344:                                              ; preds = %339
  %345 = load i32*, i32** %19, align 8
  %346 = load i32, i32* %36, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = call i32 @read_codebook(i32* %348, i32 1)
  br label %350

350:                                              ; preds = %344
  %351 = load i32, i32* %36, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %36, align 4
  br label %339

353:                                              ; preds = %339
  br label %765

354:                                              ; preds = %288, %288
  %355 = load i64, i64* %25, align 8
  %356 = icmp eq i64 %355, 8960
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i32*, i32** %18, align 8
  br label %361

359:                                              ; preds = %354
  %360 = load i32*, i32** %17, align 8
  br label %361

361:                                              ; preds = %359, %357
  %362 = phi i32* [ %358, %357 ], [ %360, %359 ]
  store i32* %362, i32** %19, align 8
  store i64 0, i64* %30, align 8
  br label %363

363:                                              ; preds = %392, %361
  %364 = load i64, i64* %34, align 8
  %365 = icmp sgt i64 %364, 0
  br i1 %365, label %366, label %393

366:                                              ; preds = %363
  %367 = call i64 (...) @get_long()
  store i64 %367, i64* %31, align 8
  %368 = load i64, i64* %34, align 8
  %369 = sub nsw i64 %368, 4
  store i64 %369, i64* %34, align 8
  store i32 0, i32* %36, align 4
  br label %370

370:                                              ; preds = %389, %366
  %371 = load i32, i32* %36, align 4
  %372 = icmp ult i32 %371, 32
  br i1 %372, label %373, label %392

373:                                              ; preds = %370
  %374 = load i64, i64* %31, align 8
  %375 = and i64 %374, 2147483648
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %373
  %378 = load i64, i64* %34, align 8
  %379 = sub nsw i64 %378, 6
  store i64 %379, i64* %34, align 8
  %380 = load i32*, i32** %19, align 8
  %381 = load i64, i64* %30, align 8
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  %383 = call i32 @read_codebook(i32* %382, i32 0)
  br label %384

384:                                              ; preds = %377, %373
  %385 = load i64, i64* %30, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %30, align 8
  %387 = load i64, i64* %31, align 8
  %388 = shl i64 %387, 1
  store i64 %388, i64* %31, align 8
  br label %389

389:                                              ; preds = %384
  %390 = load i32, i32* %36, align 4
  %391 = add i32 %390, 1
  store i32 %391, i32* %36, align 4
  br label %370

392:                                              ; preds = %370
  br label %363

393:                                              ; preds = %363
  br label %394

394:                                              ; preds = %397, %393
  %395 = load i64, i64* %34, align 8
  %396 = icmp sgt i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = call i32 (...) @skip_byte()
  %399 = load i64, i64* %34, align 8
  %400 = add nsw i64 %399, -1
  store i64 %400, i64* %34, align 8
  br label %394

401:                                              ; preds = %394
  br label %765

402:                                              ; preds = %288, %288
  %403 = load i64, i64* %25, align 8
  %404 = icmp eq i64 %403, 9984
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = load i32*, i32** %18, align 8
  br label %409

407:                                              ; preds = %402
  %408 = load i32*, i32** %17, align 8
  br label %409

409:                                              ; preds = %407, %405
  %410 = phi i32* [ %406, %405 ], [ %408, %407 ]
  store i32* %410, i32** %19, align 8
  store i64 0, i64* %30, align 8
  br label %411

411:                                              ; preds = %440, %409
  %412 = load i64, i64* %34, align 8
  %413 = icmp sgt i64 %412, 0
  br i1 %413, label %414, label %441

414:                                              ; preds = %411
  %415 = call i64 (...) @get_long()
  store i64 %415, i64* %31, align 8
  %416 = load i64, i64* %34, align 8
  %417 = sub nsw i64 %416, 4
  store i64 %417, i64* %34, align 8
  store i32 0, i32* %36, align 4
  br label %418

418:                                              ; preds = %437, %414
  %419 = load i32, i32* %36, align 4
  %420 = icmp ult i32 %419, 32
  br i1 %420, label %421, label %440

421:                                              ; preds = %418
  %422 = load i64, i64* %31, align 8
  %423 = and i64 %422, 2147483648
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %421
  %426 = load i64, i64* %34, align 8
  %427 = sub nsw i64 %426, 4
  store i64 %427, i64* %34, align 8
  %428 = load i32*, i32** %19, align 8
  %429 = load i64, i64* %30, align 8
  %430 = getelementptr inbounds i32, i32* %428, i64 %429
  %431 = call i32 @read_codebook(i32* %430, i32 1)
  br label %432

432:                                              ; preds = %425, %421
  %433 = load i64, i64* %30, align 8
  %434 = add i64 %433, 1
  store i64 %434, i64* %30, align 8
  %435 = load i64, i64* %31, align 8
  %436 = shl i64 %435, 1
  store i64 %436, i64* %31, align 8
  br label %437

437:                                              ; preds = %432
  %438 = load i32, i32* %36, align 4
  %439 = add i32 %438, 1
  store i32 %439, i32* %36, align 4
  br label %418

440:                                              ; preds = %418
  br label %411

441:                                              ; preds = %411
  br label %442

442:                                              ; preds = %445, %441
  %443 = load i64, i64* %34, align 8
  %444 = icmp sgt i64 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %442
  %446 = call i32 (...) @skip_byte()
  %447 = load i64, i64* %34, align 8
  %448 = add nsw i64 %447, -1
  store i64 %448, i64* %34, align 8
  br label %442

449:                                              ; preds = %442
  br label %765

450:                                              ; preds = %288
  br label %451

451:                                              ; preds = %557, %450
  %452 = load i64, i64* %34, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  %455 = load i64, i64* %21, align 8
  %456 = load i64, i64* %22, align 8
  %457 = icmp ult i64 %455, %456
  br label %458

458:                                              ; preds = %454, %451
  %459 = phi i1 [ false, %451 ], [ %457, %454 ]
  br i1 %459, label %460, label %558

460:                                              ; preds = %458
  %461 = call i64 (...) @get_long()
  store i64 %461, i64* %31, align 8
  %462 = load i64, i64* %34, align 8
  %463 = sub nsw i64 %462, 4
  store i64 %463, i64* %34, align 8
  store i32 0, i32* %36, align 4
  br label %464

464:                                              ; preds = %554, %460
  %465 = load i32, i32* %36, align 4
  %466 = icmp ult i32 %465, 32
  br i1 %466, label %467, label %557

467:                                              ; preds = %464
  %468 = load i64, i64* %21, align 8
  %469 = load i64, i64* %22, align 8
  %470 = icmp uge i64 %468, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %467
  br label %557

472:                                              ; preds = %467
  %473 = load i64, i64* %31, align 8
  %474 = and i64 %473, 2147483648
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %519

476:                                              ; preds = %472
  %477 = call i64 (...) @get_byte()
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %39, align 4
  %479 = call i64 (...) @get_byte()
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %40, align 4
  %481 = call i64 (...) @get_byte()
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %41, align 4
  %483 = call i64 (...) @get_byte()
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %42, align 4
  %485 = load i64, i64* %34, align 8
  %486 = sub nsw i64 %485, 4
  store i64 %486, i64* %34, align 8
  %487 = load i32, i32* %16, align 4
  %488 = load i64, i64* %20, align 8
  %489 = load i64, i64* %21, align 8
  %490 = load i32, i32* %43, align 4
  %491 = load i32, i32* %44, align 4
  %492 = load i32, i32* %14, align 4
  %493 = call i32 @get_addr(i32 %487, i64 %488, i64 %489, i32 %490, i32 %491, i32 %492)
  store i32 %493, i32* %38, align 4
  %494 = load i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  %495 = load i8*, i8** %35, align 8
  %496 = load i32, i32* %38, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds i8, i8* %495, i64 %497
  %499 = load i8*, i8** %12, align 8
  %500 = load i32, i32* %43, align 4
  %501 = load i32, i32* %16, align 4
  %502 = load i32*, i32** %17, align 8
  %503 = load i32, i32* %39, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32*, i32** %17, align 8
  %507 = load i32, i32* %40, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32*, i32** %17, align 8
  %511 = load i32, i32* %41, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  %514 = load i32*, i32** %17, align 8
  %515 = load i32, i32* %42, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  %518 = call i32 %494(i8* %498, i8* %499, i32 %500, i32 %501, i32* %505, i32* %509, i32* %513, i32* %517)
  br label %541

519:                                              ; preds = %472
  %520 = load i32, i32* %16, align 4
  %521 = load i64, i64* %20, align 8
  %522 = load i64, i64* %21, align 8
  %523 = load i32, i32* %43, align 4
  %524 = load i32, i32* %44, align 4
  %525 = load i32, i32* %14, align 4
  %526 = call i32 @get_addr(i32 %520, i64 %521, i64 %522, i32 %523, i32 %524, i32 %525)
  store i32 %526, i32* %38, align 4
  %527 = load i32 (i8*, i8*, i32, i32, i32*)*, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  %528 = load i8*, i8** %35, align 8
  %529 = load i32, i32* %38, align 4
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* %528, i64 %530
  %532 = load i8*, i8** %12, align 8
  %533 = load i32, i32* %43, align 4
  %534 = load i32, i32* %16, align 4
  %535 = load i32*, i32** %18, align 8
  %536 = call i64 (...) @get_byte()
  %537 = getelementptr inbounds i32, i32* %535, i64 %536
  %538 = call i32 %527(i8* %531, i8* %532, i32 %533, i32 %534, i32* %537)
  %539 = load i64, i64* %34, align 8
  %540 = add nsw i64 %539, -1
  store i64 %540, i64* %34, align 8
  br label %541

541:                                              ; preds = %519, %476
  %542 = load i64, i64* %20, align 8
  %543 = add i64 %542, 4
  store i64 %543, i64* %20, align 8
  %544 = load i64, i64* %20, align 8
  %545 = load i32, i32* %13, align 4
  %546 = zext i32 %545 to i64
  %547 = icmp uge i64 %544, %546
  br i1 %547, label %548, label %551

548:                                              ; preds = %541
  store i64 0, i64* %20, align 8
  %549 = load i64, i64* %21, align 8
  %550 = add i64 %549, 4
  store i64 %550, i64* %21, align 8
  br label %551

551:                                              ; preds = %548, %541
  %552 = load i64, i64* %31, align 8
  %553 = shl i64 %552, 1
  store i64 %553, i64* %31, align 8
  br label %554

554:                                              ; preds = %551
  %555 = load i32, i32* %36, align 4
  %556 = add i32 %555, 1
  store i32 %556, i32* %36, align 4
  br label %464

557:                                              ; preds = %471, %464
  br label %451

558:                                              ; preds = %458
  br label %559

559:                                              ; preds = %562, %558
  %560 = load i64, i64* %34, align 8
  %561 = icmp sgt i64 %560, 0
  br i1 %561, label %562, label %566

562:                                              ; preds = %559
  %563 = call i32 (...) @skip_byte()
  %564 = load i64, i64* %34, align 8
  %565 = add nsw i64 %564, -1
  store i64 %565, i64* %34, align 8
  br label %559

566:                                              ; preds = %559
  br label %765

567:                                              ; preds = %288
  br label %568

568:                                              ; preds = %693, %567
  %569 = load i64, i64* %34, align 8
  %570 = icmp sgt i64 %569, 0
  br i1 %570, label %571, label %575

571:                                              ; preds = %568
  %572 = load i64, i64* %21, align 8
  %573 = load i64, i64* %22, align 8
  %574 = icmp ult i64 %572, %573
  br label %575

575:                                              ; preds = %571, %568
  %576 = phi i1 [ false, %568 ], [ %574, %571 ]
  br i1 %576, label %577, label %694

577:                                              ; preds = %575
  %578 = call i64 (...) @get_long()
  store i64 %578, i64* %31, align 8
  %579 = load i64, i64* %34, align 8
  %580 = sub nsw i64 %579, 4
  store i64 %580, i64* %34, align 8
  store i64 2147483648, i64* %32, align 8
  br label %581

581:                                              ; preds = %692, %577
  %582 = load i64, i64* %32, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %581
  %585 = load i64, i64* %21, align 8
  %586 = load i64, i64* %22, align 8
  %587 = icmp ult i64 %585, %586
  br label %588

588:                                              ; preds = %584, %581
  %589 = phi i1 [ false, %581 ], [ %587, %584 ]
  br i1 %589, label %590, label %693

590:                                              ; preds = %588
  %591 = load i64, i64* %31, align 8
  %592 = load i64, i64* %32, align 8
  %593 = and i64 %591, %592
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %680

595:                                              ; preds = %590
  %596 = load i64, i64* %32, align 8
  %597 = icmp eq i64 %596, 1
  br i1 %597, label %598, label %606

598:                                              ; preds = %595
  %599 = load i64, i64* %34, align 8
  %600 = icmp slt i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %598
  br label %693

602:                                              ; preds = %598
  %603 = call i64 (...) @get_long()
  store i64 %603, i64* %31, align 8
  %604 = load i64, i64* %34, align 8
  %605 = sub nsw i64 %604, 4
  store i64 %605, i64* %34, align 8
  store i64 2147483648, i64* %32, align 8
  br label %609

606:                                              ; preds = %595
  %607 = load i64, i64* %32, align 8
  %608 = lshr i64 %607, 1
  store i64 %608, i64* %32, align 8
  br label %609

609:                                              ; preds = %606, %602
  %610 = load i64, i64* %31, align 8
  %611 = load i64, i64* %32, align 8
  %612 = and i64 %610, %611
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %657

614:                                              ; preds = %609
  %615 = call i64 (...) @get_byte()
  %616 = trunc i64 %615 to i32
  store i32 %616, i32* %39, align 4
  %617 = call i64 (...) @get_byte()
  %618 = trunc i64 %617 to i32
  store i32 %618, i32* %40, align 4
  %619 = call i64 (...) @get_byte()
  %620 = trunc i64 %619 to i32
  store i32 %620, i32* %41, align 4
  %621 = call i64 (...) @get_byte()
  %622 = trunc i64 %621 to i32
  store i32 %622, i32* %42, align 4
  %623 = load i64, i64* %34, align 8
  %624 = sub nsw i64 %623, 4
  store i64 %624, i64* %34, align 8
  %625 = load i32, i32* %16, align 4
  %626 = load i64, i64* %20, align 8
  %627 = load i64, i64* %21, align 8
  %628 = load i32, i32* %43, align 4
  %629 = load i32, i32* %44, align 4
  %630 = load i32, i32* %14, align 4
  %631 = call i32 @get_addr(i32 %625, i64 %626, i64 %627, i32 %628, i32 %629, i32 %630)
  store i32 %631, i32* %38, align 4
  %632 = load i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32*, i32*, i32*, i32*)** %46, align 8
  %633 = load i8*, i8** %35, align 8
  %634 = load i32, i32* %38, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i8, i8* %633, i64 %635
  %637 = load i8*, i8** %12, align 8
  %638 = load i32, i32* %43, align 4
  %639 = load i32, i32* %16, align 4
  %640 = load i32*, i32** %17, align 8
  %641 = load i32, i32* %39, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, i32* %640, i64 %642
  %644 = load i32*, i32** %17, align 8
  %645 = load i32, i32* %40, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i32, i32* %644, i64 %646
  %648 = load i32*, i32** %17, align 8
  %649 = load i32, i32* %41, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  %652 = load i32*, i32** %17, align 8
  %653 = load i32, i32* %42, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  %656 = call i32 %632(i8* %636, i8* %637, i32 %638, i32 %639, i32* %643, i32* %647, i32* %651, i32* %655)
  br label %679

657:                                              ; preds = %609
  %658 = load i64, i64* %34, align 8
  %659 = add nsw i64 %658, -1
  store i64 %659, i64* %34, align 8
  %660 = load i32, i32* %16, align 4
  %661 = load i64, i64* %20, align 8
  %662 = load i64, i64* %21, align 8
  %663 = load i32, i32* %43, align 4
  %664 = load i32, i32* %44, align 4
  %665 = load i32, i32* %14, align 4
  %666 = call i32 @get_addr(i32 %660, i64 %661, i64 %662, i32 %663, i32 %664, i32 %665)
  store i32 %666, i32* %38, align 4
  %667 = load i32 (i8*, i8*, i32, i32, i32*)*, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  %668 = load i8*, i8** %35, align 8
  %669 = load i32, i32* %38, align 4
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds i8, i8* %668, i64 %670
  %672 = load i8*, i8** %12, align 8
  %673 = load i32, i32* %43, align 4
  %674 = load i32, i32* %16, align 4
  %675 = load i32*, i32** %18, align 8
  %676 = call i64 (...) @get_byte()
  %677 = getelementptr inbounds i32, i32* %675, i64 %676
  %678 = call i32 %667(i8* %671, i8* %672, i32 %673, i32 %674, i32* %677)
  br label %679

679:                                              ; preds = %657, %614
  br label %680

680:                                              ; preds = %679, %590
  %681 = load i64, i64* %32, align 8
  %682 = lshr i64 %681, 1
  store i64 %682, i64* %32, align 8
  %683 = load i64, i64* %20, align 8
  %684 = add i64 %683, 4
  store i64 %684, i64* %20, align 8
  %685 = load i64, i64* %20, align 8
  %686 = load i32, i32* %13, align 4
  %687 = zext i32 %686 to i64
  %688 = icmp uge i64 %685, %687
  br i1 %688, label %689, label %692

689:                                              ; preds = %680
  store i64 0, i64* %20, align 8
  %690 = load i64, i64* %21, align 8
  %691 = add i64 %690, 4
  store i64 %691, i64* %21, align 8
  br label %692

692:                                              ; preds = %689, %680
  br label %581

693:                                              ; preds = %601, %588
  br label %568

694:                                              ; preds = %575
  br label %695

695:                                              ; preds = %698, %694
  %696 = load i64, i64* %34, align 8
  %697 = icmp sgt i64 %696, 0
  br i1 %697, label %698, label %702

698:                                              ; preds = %695
  %699 = call i32 (...) @skip_byte()
  %700 = load i64, i64* %34, align 8
  %701 = add nsw i64 %700, -1
  store i64 %701, i64* %34, align 8
  br label %695

702:                                              ; preds = %695
  br label %765

703:                                              ; preds = %288
  br label %704

704:                                              ; preds = %744, %703
  %705 = load i64, i64* %34, align 8
  %706 = icmp sgt i64 %705, 0
  br i1 %706, label %707, label %711

707:                                              ; preds = %704
  %708 = load i64, i64* %21, align 8
  %709 = load i64, i64* %22, align 8
  %710 = icmp ult i64 %708, %709
  br label %711

711:                                              ; preds = %707, %704
  %712 = phi i1 [ false, %704 ], [ %710, %707 ]
  br i1 %712, label %713, label %745

713:                                              ; preds = %711
  %714 = load i32, i32* %16, align 4
  %715 = load i64, i64* %20, align 8
  %716 = load i64, i64* %21, align 8
  %717 = load i32, i32* %43, align 4
  %718 = load i32, i32* %44, align 4
  %719 = load i32, i32* %14, align 4
  %720 = call i32 @get_addr(i32 %714, i64 %715, i64 %716, i32 %717, i32 %718, i32 %719)
  store i32 %720, i32* %38, align 4
  %721 = load i32 (i8*, i8*, i32, i32, i32*)*, i32 (i8*, i8*, i32, i32, i32*)** %45, align 8
  %722 = load i8*, i8** %35, align 8
  %723 = load i32, i32* %38, align 4
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds i8, i8* %722, i64 %724
  %726 = load i8*, i8** %12, align 8
  %727 = load i32, i32* %43, align 4
  %728 = load i32, i32* %16, align 4
  %729 = load i32*, i32** %18, align 8
  %730 = call i64 (...) @get_byte()
  %731 = getelementptr inbounds i32, i32* %729, i64 %730
  %732 = call i32 %721(i8* %725, i8* %726, i32 %727, i32 %728, i32* %731)
  %733 = load i64, i64* %34, align 8
  %734 = add nsw i64 %733, -1
  store i64 %734, i64* %34, align 8
  %735 = load i64, i64* %20, align 8
  %736 = add i64 %735, 4
  store i64 %736, i64* %20, align 8
  %737 = load i64, i64* %20, align 8
  %738 = load i32, i32* %13, align 4
  %739 = zext i32 %738 to i64
  %740 = icmp uge i64 %737, %739
  br i1 %740, label %741, label %744

741:                                              ; preds = %713
  store i64 0, i64* %20, align 8
  %742 = load i64, i64* %21, align 8
  %743 = add i64 %742, 4
  store i64 %743, i64* %21, align 8
  br label %744

744:                                              ; preds = %741, %713
  br label %704

745:                                              ; preds = %711
  br label %746

746:                                              ; preds = %749, %745
  %747 = load i64, i64* %34, align 8
  %748 = icmp sgt i64 %747, 0
  br i1 %748, label %749, label %753

749:                                              ; preds = %746
  %750 = call i32 (...) @skip_byte()
  %751 = load i64, i64* %34, align 8
  %752 = add nsw i64 %751, -1
  store i64 %752, i64* %34, align 8
  br label %746

753:                                              ; preds = %746
  br label %765

754:                                              ; preds = %288
  %755 = load i64, i64* %25, align 8
  %756 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %755)
  br label %757

757:                                              ; preds = %760, %754
  %758 = load i64, i64* %34, align 8
  %759 = icmp sgt i64 %758, 0
  br i1 %759, label %760, label %764

760:                                              ; preds = %757
  %761 = call i32 (...) @skip_byte()
  %762 = load i64, i64* %34, align 8
  %763 = add nsw i64 %762, -1
  store i64 %763, i64* %34, align 8
  br label %757

764:                                              ; preds = %757
  br label %765

765:                                              ; preds = %764, %753, %702, %566, %449, %401, %353, %327
  br label %285

766:                                              ; preds = %285
  br label %767

767:                                              ; preds = %766
  %768 = load i32, i32* %37, align 4
  %769 = add i32 %768, 1
  store i32 %769, i32* %37, align 4
  br label %185

770:                                              ; preds = %185
  %771 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %772 = load i64, i64* %771, align 8
  %773 = load i32, i32* %11, align 4
  %774 = sext i32 %773 to i64
  %775 = icmp ne i64 %772, %774
  br i1 %775, label %776, label %809

776:                                              ; preds = %770
  %777 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %778 = load i64, i64* %777, align 8
  %779 = and i64 %778, 1
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %781, label %785

781:                                              ; preds = %776
  %782 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %783 = load i64, i64* %782, align 8
  %784 = add i64 %783, 1
  store i64 %784, i64* %782, align 8
  br label %785

785:                                              ; preds = %781, %776
  %786 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %787 = load i64, i64* %786, align 8
  %788 = load i32, i32* %11, align 4
  %789 = sext i32 %788 to i64
  %790 = icmp ne i64 %787, %789
  br i1 %790, label %791, label %808

791:                                              ; preds = %785
  %792 = call i32 (...) @skip_byte()
  %793 = call i64 (...) @get_byte()
  %794 = shl i64 %793, 16
  store i64 %794, i64* %48, align 8
  %795 = call i64 (...) @get_byte()
  %796 = shl i64 %795, 8
  %797 = load i64, i64* %48, align 8
  %798 = or i64 %797, %796
  store i64 %798, i64* %48, align 8
  %799 = call i64 (...) @get_byte()
  %800 = load i64, i64* %48, align 8
  %801 = or i64 %800, %799
  store i64 %801, i64* %48, align 8
  %802 = load i32, i32* %11, align 4
  %803 = getelementptr inbounds %struct.frame_header, %struct.frame_header* %47, i32 0, i32 1
  %804 = load i64, i64* %803, align 8
  %805 = trunc i64 %804 to i32
  %806 = load i64, i64* %48, align 8
  %807 = call i32 (i8*, i32, i32, ...) @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 %802, i32 %805, i64 %806)
  br label %808

808:                                              ; preds = %791, %785
  br label %809

809:                                              ; preds = %125, %148, %160, %808, %770
  ret void
}

declare dso_local i32 @cvid_v1_24(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cvid_v4_24(i8*, i8*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @get_byte(...) #1

declare dso_local i32 @cvid_v1_15(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cvid_v4_15(i8*, i8*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cvid_v1_16(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cvid_v4_16(i8*, i8*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cvid_v1_32(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cvid_v4_32(i8*, i8*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_stride(i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @get_word(...) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32, ...) #1

declare dso_local i32 @read_codebook(i32*, i32) #1

declare dso_local i64 @get_long(...) #1

declare dso_local i32 @skip_byte(...) #1

declare dso_local i32 @get_addr(i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
