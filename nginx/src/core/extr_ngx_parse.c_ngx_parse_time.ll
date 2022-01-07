; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse.c_ngx_parse_time.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_parse.c_ngx_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@NGX_MAX_INT_T_VALUE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_parse_time(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %14, align 4
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %16 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %17 = sdiv i32 %16, 10
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %12, align 1
  %19 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %20 = srem i32 %19, 10
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %13, align 1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 2
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %241, %71, %2
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %242

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %82

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 57
  br i1 %48, label %49, label %82

49:                                               ; preds = %44
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %51, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %55
  %70 = load i8, i8* @NGX_ERROR, align 1
  store i8 %70, i8* %3, align 1
  br label %280

71:                                               ; preds = %61, %49
  %72 = load i8, i8* %8, align 1
  %73 = sext i8 %72 to i32
  %74 = mul nsw i32 %73, 10
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  %80 = add nsw i32 %74, %79
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  store i32 1, i32* %14, align 4
  br label %35

82:                                               ; preds = %44, %39
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %179 [
    i32 121, label %87
    i32 77, label %96
    i32 119, label %105
    i32 100, label %114
    i32 104, label %123
    i32 109, label %132
    i32 115, label %163
    i32 32, label %171
  ]

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8, i8* @NGX_ERROR, align 1
  store i8 %91, i8* %3, align 1
  br label %280

92:                                               ; preds = %87
  store i32 1, i32* %15, align 4
  %93 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %94 = sdiv i32 %93, 31536000
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %11, align 1
  store i8 -128, i8* %10, align 1
  br label %181

96:                                               ; preds = %82
  %97 = load i32, i32* %15, align 4
  %98 = icmp uge i32 %97, 2
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i8, i8* @NGX_ERROR, align 1
  store i8 %100, i8* %3, align 1
  br label %280

101:                                              ; preds = %96
  store i32 2, i32* %15, align 4
  %102 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %103 = sdiv i32 %102, 2592000
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %11, align 1
  store i8 0, i8* %10, align 1
  br label %181

105:                                              ; preds = %82
  %106 = load i32, i32* %15, align 4
  %107 = icmp uge i32 %106, 3
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i8, i8* @NGX_ERROR, align 1
  store i8 %109, i8* %3, align 1
  br label %280

110:                                              ; preds = %105
  store i32 3, i32* %15, align 4
  %111 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %112 = sdiv i32 %111, 604800
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %11, align 1
  store i8 -128, i8* %10, align 1
  br label %181

114:                                              ; preds = %82
  %115 = load i32, i32* %15, align 4
  %116 = icmp uge i32 %115, 4
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i8, i8* @NGX_ERROR, align 1
  store i8 %118, i8* %3, align 1
  br label %280

119:                                              ; preds = %114
  store i32 4, i32* %15, align 4
  %120 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %121 = sdiv i32 %120, 86400
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %11, align 1
  store i8 -128, i8* %10, align 1
  br label %181

123:                                              ; preds = %82
  %124 = load i32, i32* %15, align 4
  %125 = icmp uge i32 %124, 5
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i8, i8* @NGX_ERROR, align 1
  store i8 %127, i8* %3, align 1
  br label %280

128:                                              ; preds = %123
  store i32 5, i32* %15, align 4
  %129 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %130 = sdiv i32 %129, 3600
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %11, align 1
  store i8 16, i8* %10, align 1
  br label %181

132:                                              ; preds = %82
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = icmp ult i8* %133, %134
  br i1 %135, label %136, label %154

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 115
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = icmp uge i32 %145, 8
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %141
  %148 = load i8, i8* @NGX_ERROR, align 1
  store i8 %148, i8* %3, align 1
  br label %280

149:                                              ; preds = %144
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %6, align 8
  store i32 8, i32* %15, align 4
  %152 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %11, align 1
  store i8 1, i8* %10, align 1
  br label %181

154:                                              ; preds = %136, %132
  %155 = load i32, i32* %15, align 4
  %156 = icmp uge i32 %155, 6
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i8, i8* @NGX_ERROR, align 1
  store i8 %158, i8* %3, align 1
  br label %280

159:                                              ; preds = %154
  store i32 6, i32* %15, align 4
  %160 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %161 = sdiv i32 %160, 60
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %11, align 1
  store i8 60, i8* %10, align 1
  br label %181

163:                                              ; preds = %82
  %164 = load i32, i32* %15, align 4
  %165 = icmp uge i32 %164, 7
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i8, i8* @NGX_ERROR, align 1
  store i8 %167, i8* %3, align 1
  br label %280

168:                                              ; preds = %163
  store i32 7, i32* %15, align 4
  %169 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %11, align 1
  store i8 1, i8* %10, align 1
  br label %181

171:                                              ; preds = %82
  %172 = load i32, i32* %15, align 4
  %173 = icmp uge i32 %172, 7
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8, i8* @NGX_ERROR, align 1
  store i8 %175, i8* %3, align 1
  br label %280

176:                                              ; preds = %171
  store i32 9, i32* %15, align 4
  %177 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %11, align 1
  store i8 1, i8* %10, align 1
  br label %181

179:                                              ; preds = %82
  %180 = load i8, i8* @NGX_ERROR, align 1
  store i8 %180, i8* %3, align 1
  br label %280

181:                                              ; preds = %176, %168, %159, %149, %128, %119, %110, %101, %92
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 8
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load i8, i8* %10, align 1
  %189 = sext i8 %188 to i32
  %190 = mul nsw i32 %189, 1000
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %10, align 1
  %192 = load i8, i8* %11, align 1
  %193 = sext i8 %192 to i32
  %194 = sdiv i32 %193, 1000
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %11, align 1
  br label %196

196:                                              ; preds = %187, %184, %181
  %197 = load i8, i8* %8, align 1
  %198 = sext i8 %197 to i32
  %199 = load i8, i8* %11, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i8, i8* @NGX_ERROR, align 1
  store i8 %203, i8* %3, align 1
  br label %280

204:                                              ; preds = %196
  %205 = load i8, i8* %10, align 1
  %206 = sext i8 %205 to i32
  %207 = load i8, i8* %8, align 1
  %208 = sext i8 %207 to i32
  %209 = mul nsw i32 %208, %206
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %8, align 1
  %211 = load i8, i8* %9, align 1
  %212 = sext i8 %211 to i32
  %213 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %214 = load i8, i8* %8, align 1
  %215 = sext i8 %214 to i32
  %216 = sub nsw i32 %213, %215
  %217 = icmp sgt i32 %212, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %204
  %219 = load i8, i8* @NGX_ERROR, align 1
  store i8 %219, i8* %3, align 1
  br label %280

220:                                              ; preds = %204
  %221 = load i8, i8* %8, align 1
  %222 = sext i8 %221 to i32
  %223 = load i8, i8* %9, align 1
  %224 = sext i8 %223 to i32
  %225 = add nsw i32 %224, %222
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %9, align 1
  store i8 0, i8* %8, align 1
  br label %227

227:                                              ; preds = %238, %220
  %228 = load i8*, i8** %6, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = icmp ult i8* %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 32
  br label %236

236:                                              ; preds = %231, %227
  %237 = phi i1 [ false, %227 ], [ %235, %231 ]
  br i1 %237, label %238, label %241

238:                                              ; preds = %236
  %239 = load i8*, i8** %6, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %6, align 8
  br label %227

241:                                              ; preds = %236
  br label %35

242:                                              ; preds = %35
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load i8, i8* @NGX_ERROR, align 1
  store i8 %246, i8* %3, align 1
  br label %280

247:                                              ; preds = %242
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %247
  %251 = load i8, i8* %8, align 1
  %252 = sext i8 %251 to i32
  %253 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %254 = sdiv i32 %253, 1000
  %255 = icmp sgt i32 %252, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load i8, i8* @NGX_ERROR, align 1
  store i8 %257, i8* %3, align 1
  br label %280

258:                                              ; preds = %250
  %259 = load i8, i8* %8, align 1
  %260 = sext i8 %259 to i32
  %261 = mul nsw i32 %260, 1000
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %8, align 1
  br label %263

263:                                              ; preds = %258, %247
  %264 = load i8, i8* %9, align 1
  %265 = sext i8 %264 to i32
  %266 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %267 = load i8, i8* %8, align 1
  %268 = sext i8 %267 to i32
  %269 = sub nsw i32 %266, %268
  %270 = icmp sgt i32 %265, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %263
  %272 = load i8, i8* @NGX_ERROR, align 1
  store i8 %272, i8* %3, align 1
  br label %280

273:                                              ; preds = %263
  %274 = load i8, i8* %9, align 1
  %275 = sext i8 %274 to i32
  %276 = load i8, i8* %8, align 1
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %275, %277
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %3, align 1
  br label %280

280:                                              ; preds = %273, %271, %256, %245, %218, %202, %179, %174, %166, %157, %147, %126, %117, %108, %99, %90, %69
  %281 = load i8, i8* %3, align 1
  ret i8 %281
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
