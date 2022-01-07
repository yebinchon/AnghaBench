; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronerange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronerange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { %struct.colormap* }
%struct.colormap = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.state = type { i32 }

@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i64, i64, %struct.state*, %struct.state*, i32*)* @subcoloronerange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subcoloronerange(%struct.vars* %0, i64 %1, i64 %2, %struct.state* %3, %struct.state* %4, i32* %5) #0 {
  %7 = alloca %struct.vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.colormap*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.state* %3, %struct.state** %10, align 8
  store %struct.state* %4, %struct.state** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.vars*, %struct.vars** %7, align 8
  %20 = getelementptr inbounds %struct.vars, %struct.vars* %19, i32 0, i32 0
  %21 = load %struct.colormap*, %struct.colormap** %20, align 8
  store %struct.colormap* %21, %struct.colormap** %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %24 = icmp sgt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.colormap*, %struct.colormap** %13, align 8
  %33 = getelementptr inbounds %struct.colormap, %struct.colormap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 24
  %39 = trunc i64 %38 to i32
  %40 = call i64 @MALLOC(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %14, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %43 = icmp eq %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32, i32* @REG_ESPACE, align 4
  %46 = call i32 @CERR(i32 %45)
  br label %376

47:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  %48 = load %struct.colormap*, %struct.colormap** %13, align 8
  %49 = getelementptr inbounds %struct.colormap, %struct.colormap* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %73, %47
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.colormap*, %struct.colormap** %13, align 8
  %54 = getelementptr inbounds %struct.colormap, %struct.colormap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %78

64:                                               ; preds = %57
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %71 = bitcast %struct.TYPE_3__* %69 to i8*
  %72 = bitcast %struct.TYPE_3__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  br label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 1
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %16, align 8
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %51

78:                                               ; preds = %63, %51
  br label %79

79:                                               ; preds = %285, %78
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.colormap*, %struct.colormap** %13, align 8
  %82 = getelementptr inbounds %struct.colormap, %struct.colormap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp sle i64 %88, %89
  br label %91

91:                                               ; preds = %85, %79
  %92 = phi i1 [ false, %79 ], [ %90, %85 ]
  br i1 %92, label %93, label %296

93:                                               ; preds = %91
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = load %struct.colormap*, %struct.colormap** %13, align 8
  %116 = call i8* @newhicolorrow(%struct.colormap* %115, i32 0)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %18, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 8
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load %struct.vars*, %struct.vars** %7, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load %struct.state*, %struct.state** %10, align 8
  %128 = load %struct.state*, %struct.state** %11, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @subcoloronerow(%struct.vars* %125, i32 %126, %struct.state* %127, %struct.state* %128, i32* %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %99, %93
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sle i64 %135, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %134
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %141, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %153 = bitcast %struct.TYPE_3__* %151 to i8*
  %154 = bitcast %struct.TYPE_3__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 24, i1 false)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %18, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %285

162:                                              ; preds = %140, %134
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %163, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %162
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i64 %171, i64* %176, align 8
  %177 = load i64, i64* %8, align 8
  %178 = sub nsw i64 %177, 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i64 %178, i64* %183, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store i32 %186, i32* %191, align 8
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %168, %162
  %195 = load i64, i64* %8, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  store i64 %195, i64* %200, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = load i64, i64* %9, align 8
  br label %212

208:                                              ; preds = %194
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  br label %212

212:                                              ; preds = %208, %206
  %213 = phi i64 [ %207, %206 ], [ %211, %208 ]
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i64 %213, i64* %218, align 8
  %219 = load %struct.colormap*, %struct.colormap** %13, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @newhicolorrow(%struct.colormap* %219, i32 %222)
  %224 = ptrtoint i8* %223 to i32
  store i32 %224, i32* %18, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  store i32 %224, i32* %229, align 8
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %15, align 4
  %232 = load i64, i64* %9, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp slt i64 %232, %235
  br i1 %236, label %237, label %280

237:                                              ; preds = %212
  %238 = load i64, i64* %9, align 8
  %239 = add nsw i64 %238, 1
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  store i64 %239, i64* %244, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  store i64 %247, i64* %252, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %253, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %237
  %259 = load %struct.colormap*, %struct.colormap** %13, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i8* @newhicolorrow(%struct.colormap* %259, i32 %262)
  br label %270

264:                                              ; preds = %237
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i8*
  br label %270

270:                                              ; preds = %264, %258
  %271 = phi i8* [ %263, %258 ], [ %269, %264 ]
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 8
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %15, align 4
  br label %280

280:                                              ; preds = %270, %212
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, 1
  store i64 %284, i64* %8, align 8
  br label %285

285:                                              ; preds = %280, %146
  %286 = load %struct.vars*, %struct.vars** %7, align 8
  %287 = load i32, i32* %18, align 4
  %288 = load %struct.state*, %struct.state** %10, align 8
  %289 = load %struct.state*, %struct.state** %11, align 8
  %290 = load i32*, i32** %12, align 8
  %291 = call i32 @subcoloronerow(%struct.vars* %286, i32 %287, %struct.state* %288, %struct.state* %289, i32* %290)
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 1
  store %struct.TYPE_3__* %293, %struct.TYPE_3__** %16, align 8
  %294 = load i32, i32* %17, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %17, align 4
  br label %79

296:                                              ; preds = %91
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* %9, align 8
  %299 = icmp sle i64 %297, %298
  br i1 %299, label %300, label %329

300:                                              ; preds = %296
  %301 = load i64, i64* %8, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 1
  store i64 %301, i64* %306, align 8
  %307 = load i64, i64* %9, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  store i64 %307, i64* %312, align 8
  %313 = load %struct.colormap*, %struct.colormap** %13, align 8
  %314 = call i8* @newhicolorrow(%struct.colormap* %313, i32 0)
  %315 = ptrtoint i8* %314 to i32
  store i32 %315, i32* %18, align 4
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 2
  store i32 %315, i32* %320, align 8
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %15, align 4
  %323 = load %struct.vars*, %struct.vars** %7, align 8
  %324 = load i32, i32* %18, align 4
  %325 = load %struct.state*, %struct.state** %10, align 8
  %326 = load %struct.state*, %struct.state** %11, align 8
  %327 = load i32*, i32** %12, align 8
  %328 = call i32 @subcoloronerow(%struct.vars* %323, i32 %324, %struct.state* %325, %struct.state* %326, i32* %327)
  br label %329

329:                                              ; preds = %300, %296
  br label %330

330:                                              ; preds = %345, %329
  %331 = load i32, i32* %17, align 4
  %332 = load %struct.colormap*, %struct.colormap** %13, align 8
  %333 = getelementptr inbounds %struct.colormap, %struct.colormap* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %350

336:                                              ; preds = %330
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %15, align 4
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i64 %340
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %343 = bitcast %struct.TYPE_3__* %341 to i8*
  %344 = bitcast %struct.TYPE_3__* %342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %343, i8* align 8 %344, i64 24, i1 false)
  br label %345

345:                                              ; preds = %336
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 1
  store %struct.TYPE_3__* %347, %struct.TYPE_3__** %16, align 8
  %348 = load i32, i32* %17, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %17, align 4
  br label %330

350:                                              ; preds = %330
  %351 = load i32, i32* %15, align 4
  %352 = load %struct.colormap*, %struct.colormap** %13, align 8
  %353 = getelementptr inbounds %struct.colormap, %struct.colormap* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = mul nsw i32 %354, 2
  %356 = add nsw i32 %355, 1
  %357 = icmp sle i32 %351, %356
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  %360 = load %struct.colormap*, %struct.colormap** %13, align 8
  %361 = getelementptr inbounds %struct.colormap, %struct.colormap* %360, i32 0, i32 1
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %361, align 8
  %363 = icmp ne %struct.TYPE_3__* %362, null
  br i1 %363, label %364, label %369

364:                                              ; preds = %350
  %365 = load %struct.colormap*, %struct.colormap** %13, align 8
  %366 = getelementptr inbounds %struct.colormap, %struct.colormap* %365, i32 0, i32 1
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %366, align 8
  %368 = call i32 @FREE(%struct.TYPE_3__* %367)
  br label %369

369:                                              ; preds = %364, %350
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %371 = load %struct.colormap*, %struct.colormap** %13, align 8
  %372 = getelementptr inbounds %struct.colormap, %struct.colormap* %371, i32 0, i32 1
  store %struct.TYPE_3__* %370, %struct.TYPE_3__** %372, align 8
  %373 = load i32, i32* %15, align 4
  %374 = load %struct.colormap*, %struct.colormap** %13, align 8
  %375 = getelementptr inbounds %struct.colormap, %struct.colormap* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %369, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @CERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @newhicolorrow(%struct.colormap*, i32) #1

declare dso_local i32 @subcoloronerow(%struct.vars*, i32, %struct.state*, %struct.state*, i32*) #1

declare dso_local i32 @FREE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
