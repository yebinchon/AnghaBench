; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronechr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronechr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, %struct.colormap* }
%struct.colormap = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.state = type { i32 }

@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8
@PLAIN = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i64, %struct.state*, %struct.state*, i64*)* @subcoloronechr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subcoloronechr(%struct.vars* %0, i64 %1, %struct.state* %2, %struct.state* %3, i64* %4) #0 {
  %6 = alloca %struct.vars*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.colormap*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.state* %2, %struct.state** %8, align 8
  store %struct.state* %3, %struct.state** %9, align 8
  store i64* %4, i64** %10, align 8
  %18 = load %struct.vars*, %struct.vars** %6, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 1
  %20 = load %struct.colormap*, %struct.colormap** %19, align 8
  store %struct.colormap* %20, %struct.colormap** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %5
  %25 = load %struct.colormap*, %struct.colormap** %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @subcolor(%struct.colormap* %25, i64 %26)
  store i64 %27, i64* %17, align 8
  %28 = call i32 (...) @NOERR()
  %29 = load i64, i64* %17, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.vars*, %struct.vars** %6, align 8
  %35 = getelementptr inbounds %struct.vars, %struct.vars* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PLAIN, align 4
  %38 = load i64, i64* %17, align 8
  %39 = load %struct.state*, %struct.state** %8, align 8
  %40 = load %struct.state*, %struct.state** %9, align 8
  %41 = call i32 @newarc(i32 %36, i32 %37, i64 %38, %struct.state* %39, %struct.state* %40)
  %42 = load i64, i64* %17, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %24
  br label %314

45:                                               ; preds = %5
  %46 = load %struct.colormap*, %struct.colormap** %11, align 8
  %47 = getelementptr inbounds %struct.colormap, %struct.colormap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 24
  %52 = trunc i64 %51 to i32
  %53 = call i64 @MALLOC(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %12, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = icmp eq %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @REG_ESPACE, align 4
  %59 = call i32 @CERR(i32 %58)
  br label %314

60:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  %61 = load %struct.colormap*, %struct.colormap** %11, align 8
  %62 = getelementptr inbounds %struct.colormap, %struct.colormap* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %86, %60
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.colormap*, %struct.colormap** %11, align 8
  %67 = getelementptr inbounds %struct.colormap, %struct.colormap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %91

77:                                               ; preds = %70
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %84 = bitcast %struct.TYPE_3__* %82 to i8*
  %85 = bitcast %struct.TYPE_3__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 24, i1 false)
  br label %86

86:                                               ; preds = %77
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 1
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %64

91:                                               ; preds = %76, %64
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.colormap*, %struct.colormap** %11, align 8
  %94 = getelementptr inbounds %struct.colormap, %struct.colormap* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97, %91
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 %104, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i64 %110, i64* %115, align 8
  %116 = load %struct.colormap*, %struct.colormap** %11, align 8
  %117 = call i8* @newhicolorrow(%struct.colormap* %116, i32 0)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %16, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 %118, i32* %123, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %262

126:                                              ; preds = %97
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %138
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %141 = bitcast %struct.TYPE_3__* %139 to i8*
  %142 = bitcast %struct.TYPE_3__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 24, i1 false)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %16, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 1
  store %struct.TYPE_3__* %147, %struct.TYPE_3__** %14, align 8
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %261

150:                                              ; preds = %126
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %151, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %150
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i64 %159, i64* %164, align 8
  %165 = load i64, i64* %7, align 8
  %166 = sub nsw i64 %165, 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i64 %166, i64* %171, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  store i32 %174, i32* %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %156, %150
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i64 %183, i64* %188, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  store i64 %189, i64* %194, align 8
  %195 = load %struct.colormap*, %struct.colormap** %11, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @newhicolorrow(%struct.colormap* %195, i32 %198)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %16, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  store i32 %200, i32* %205, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = load i64, i64* %7, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %213, label %256

213:                                              ; preds = %182
  %214 = load i64, i64* %7, align 8
  %215 = add nsw i64 %214, 1
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i64 %215, i64* %220, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  store i64 %223, i64* %228, align 8
  %229 = load i64, i64* %7, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %213
  %235 = load %struct.colormap*, %struct.colormap** %11, align 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i8* @newhicolorrow(%struct.colormap* %235, i32 %238)
  br label %246

240:                                              ; preds = %213
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  br label %246

246:                                              ; preds = %240, %234
  %247 = phi i8* [ %239, %234 ], [ %245, %240 ]
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 2
  store i32 %248, i32* %253, align 8
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %13, align 4
  br label %256

256:                                              ; preds = %246, %182
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 1
  store %struct.TYPE_3__* %258, %struct.TYPE_3__** %14, align 8
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %15, align 4
  br label %261

261:                                              ; preds = %256, %134
  br label %262

262:                                              ; preds = %261, %103
  %263 = load %struct.vars*, %struct.vars** %6, align 8
  %264 = load i32, i32* %16, align 4
  %265 = load %struct.state*, %struct.state** %8, align 8
  %266 = load %struct.state*, %struct.state** %9, align 8
  %267 = load i64*, i64** %10, align 8
  %268 = call i32 @subcoloronerow(%struct.vars* %263, i32 %264, %struct.state* %265, %struct.state* %266, i64* %267)
  br label %269

269:                                              ; preds = %284, %262
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.colormap*, %struct.colormap** %11, align 8
  %272 = getelementptr inbounds %struct.colormap, %struct.colormap* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %269
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i64 %279
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %282 = bitcast %struct.TYPE_3__* %280 to i8*
  %283 = bitcast %struct.TYPE_3__* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 8 %283, i64 24, i1 false)
  br label %284

284:                                              ; preds = %275
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 1
  store %struct.TYPE_3__* %286, %struct.TYPE_3__** %14, align 8
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %269

289:                                              ; preds = %269
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.colormap*, %struct.colormap** %11, align 8
  %292 = getelementptr inbounds %struct.colormap, %struct.colormap* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 2
  %295 = icmp sle i32 %290, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load %struct.colormap*, %struct.colormap** %11, align 8
  %299 = getelementptr inbounds %struct.colormap, %struct.colormap* %298, i32 0, i32 1
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %299, align 8
  %301 = icmp ne %struct.TYPE_3__* %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %289
  %303 = load %struct.colormap*, %struct.colormap** %11, align 8
  %304 = getelementptr inbounds %struct.colormap, %struct.colormap* %303, i32 0, i32 1
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = call i32 @FREE(%struct.TYPE_3__* %305)
  br label %307

307:                                              ; preds = %302, %289
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %309 = load %struct.colormap*, %struct.colormap** %11, align 8
  %310 = getelementptr inbounds %struct.colormap, %struct.colormap* %309, i32 0, i32 1
  store %struct.TYPE_3__* %308, %struct.TYPE_3__** %310, align 8
  %311 = load i32, i32* %13, align 4
  %312 = load %struct.colormap*, %struct.colormap** %11, align 8
  %313 = getelementptr inbounds %struct.colormap, %struct.colormap* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %307, %57, %44
  ret void
}

declare dso_local i64 @subcolor(%struct.colormap*, i64) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @newarc(i32, i32, i64, %struct.state*, %struct.state*) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @CERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @newhicolorrow(%struct.colormap*, i32) #1

declare dso_local i32 @subcoloronerow(%struct.vars*, i32, %struct.state*, %struct.state*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FREE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
