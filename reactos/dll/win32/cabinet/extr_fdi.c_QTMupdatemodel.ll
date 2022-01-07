; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_QTMupdatemodel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_QTMupdatemodel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QTMmodel = type { i32, i32, i32*, %struct.QTMmodelsym* }
%struct.QTMmodelsym = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.QTMmodel*, i32)* @QTMupdatemodel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @QTMupdatemodel(%struct.QTMmodel* %0, i32 %1) #0 {
  %3 = alloca %struct.QTMmodel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.QTMmodelsym, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.QTMmodel* %0, %struct.QTMmodel** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %14 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %13, i32 0, i32 3
  %15 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %15, i64 %17
  %19 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %27 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %26, i32 0, i32 3
  %28 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %27, align 8
  %29 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %28, i64 0
  %30 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 3800
  br i1 %32, label %33, label %277

33:                                               ; preds = %25
  %34 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %35 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %33
  %40 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %41 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %94, %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %44
  %48 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %49 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %48, i32 0, i32 3
  %50 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %50, i64 %52
  %54 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %58 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %57, i32 0, i32 3
  %59 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %59, i64 %61
  %63 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %66 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %65, i32 0, i32 3
  %67 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %67, i64 %70
  %72 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %64, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %47
  %76 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %77 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %76, i32 0, i32 3
  %78 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %78, i64 %81
  %83 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %87 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %86, i32 0, i32 3
  %88 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %88, i64 %90
  %92 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  br label %93

93:                                               ; preds = %75, %47
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  br label %44

97:                                               ; preds = %44
  br label %276

98:                                               ; preds = %33
  %99 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %100 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %99, i32 0, i32 0
  store i32 50, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %144, %98
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %104 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %101
  %108 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %109 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %108, i32 0, i32 3
  %110 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %110, i64 %113
  %115 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %118 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %117, i32 0, i32 3
  %119 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %119, i64 %121
  %123 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, %116
  store i32 %125, i32* %123, align 8
  %126 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %127 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %126, i32 0, i32 3
  %128 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %128, i64 %130
  %132 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %136 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %135, i32 0, i32 3
  %137 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %137, i64 %139
  %141 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %107
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %101

147:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %218, %147
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %151 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %221

155:                                              ; preds = %148
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %214, %155
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %161 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %217

164:                                              ; preds = %158
  %165 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %166 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %165, i32 0, i32 3
  %167 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %167, i64 %169
  %171 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %174 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %173, i32 0, i32 3
  %175 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %175, i64 %177
  %179 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %172, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %164
  %183 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %184 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %183, i32 0, i32 3
  %185 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %185, i64 %187
  %189 = bitcast %struct.QTMmodelsym* %5 to i8*
  %190 = bitcast %struct.QTMmodelsym* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 16, i1 false)
  %191 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %192 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %191, i32 0, i32 3
  %193 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %193, i64 %195
  %197 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %198 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %197, i32 0, i32 3
  %199 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %199, i64 %201
  %203 = bitcast %struct.QTMmodelsym* %196 to i8*
  %204 = bitcast %struct.QTMmodelsym* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 %204, i64 16, i1 false)
  %205 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %206 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %205, i32 0, i32 3
  %207 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %207, i64 %209
  %211 = bitcast %struct.QTMmodelsym* %210 to i8*
  %212 = bitcast %struct.QTMmodelsym* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 16, i1 false)
  br label %213

213:                                              ; preds = %182, %164
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %158

217:                                              ; preds = %158
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %148

221:                                              ; preds = %148
  %222 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %223 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %248, %221
  %227 = load i32, i32* %6, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %226
  %230 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %231 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %230, i32 0, i32 3
  %232 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %232, i64 %235
  %237 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %240 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %239, i32 0, i32 3
  %241 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %241, i64 %243
  %245 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %238
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %229
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %6, align 4
  br label %226

251:                                              ; preds = %226
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %272, %251
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %255 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %252
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %261 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.QTMmodel*, %struct.QTMmodel** %3, align 8
  %264 = getelementptr inbounds %struct.QTMmodel, %struct.QTMmodel* %263, i32 0, i32 3
  %265 = load %struct.QTMmodelsym*, %struct.QTMmodelsym** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %265, i64 %267
  %269 = getelementptr inbounds %struct.QTMmodelsym, %struct.QTMmodelsym* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i32, i32* %262, i64 %270
  store i32 %259, i32* %271, align 4
  br label %272

272:                                              ; preds = %258
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %252

275:                                              ; preds = %252
  br label %276

276:                                              ; preds = %275, %97
  br label %277

277:                                              ; preds = %276, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
