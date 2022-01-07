; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_normalize_vpath.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_normalize_vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i8*, i64, i32)* @normalize_vpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize_vpath(i8** %0, i64* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %17 = load i8**, i8*** %6, align 8
  store i8* null, i8** %17, align 8
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @pestrndup(i8* %19, i64 %20, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %283

26:                                               ; preds = %5
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @php_raw_url_decode(i8* %28, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %26
  %39 = load i8*, i8** %13, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  store i8* %44, i8** %14, align 8
  br label %45

45:                                               ; preds = %56, %43
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ false, %45 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  br label %45

59:                                               ; preds = %54
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memmove(i8* %61, i8* %62, i32 %68)
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i8*, i8** %12, align 8
  %76 = sub i64 0, %74
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %59, %38, %26
  br label %79

79:                                               ; preds = %272, %78
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %273

83:                                               ; preds = %79
  %84 = load i8*, i8** %13, align 8
  store i8* %84, i8** %15, align 8
  br label %85

85:                                               ; preds = %96, %83
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i8*, i8** %15, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 47
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i1 [ false, %85 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %15, align 8
  br label %85

99:                                               ; preds = %94
  %100 = load i8*, i8** %15, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = icmp eq i64 %104, 2
  br i1 %105, label %106, label %182

106:                                              ; preds = %99
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 46
  br i1 %111, label %112, label %182

112:                                              ; preds = %106
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %182

118:                                              ; preds = %112
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ugt i8* %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %118
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %147, %122
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i8*, i8** %13, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  br label %137

137:                                              ; preds = %134, %129
  br label %148

138:                                              ; preds = %125
  %139 = load i8*, i8** %13, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 -1
  store i8* %140, i8** %13, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %13, align 8
  br label %148

147:                                              ; preds = %138
  br label %125

148:                                              ; preds = %144, %137
  br label %149

149:                                              ; preds = %148, %118
  br label %150

150:                                              ; preds = %161, %149
  %151 = load i8*, i8** %15, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = icmp ult i8* %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8*, i8** %15, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 47
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi i1 [ false, %150 ], [ %158, %154 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i8*, i8** %15, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %15, align 8
  br label %150

164:                                              ; preds = %159
  %165 = load i8*, i8** %13, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memmove(i8* %165, i8* %166, i32 %172)
  %174 = load i8*, i8** %15, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = load i8*, i8** %12, align 8
  %180 = sub i64 0, %178
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %12, align 8
  br label %272

182:                                              ; preds = %112, %106, %99
  %183 = load i8*, i8** %15, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = icmp eq i64 %187, 1
  br i1 %188, label %189, label %228

189:                                              ; preds = %182
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 46
  br i1 %194, label %195, label %228

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %207, %195
  %197 = load i8*, i8** %15, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = icmp ult i8* %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i8*, i8** %15, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 47
  br label %205

205:                                              ; preds = %200, %196
  %206 = phi i1 [ false, %196 ], [ %204, %200 ]
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %15, align 8
  br label %196

210:                                              ; preds = %205
  %211 = load i8*, i8** %13, align 8
  %212 = load i8*, i8** %15, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memmove(i8* %211, i8* %212, i32 %218)
  %220 = load i8*, i8** %15, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = load i8*, i8** %12, align 8
  %226 = sub i64 0, %224
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %12, align 8
  br label %271

228:                                              ; preds = %189, %182
  %229 = load i8*, i8** %15, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ult i8* %229, %230
  br i1 %231, label %232, label %268

232:                                              ; preds = %228
  %233 = load i8*, i8** %15, align 8
  store i8* %233, i8** %16, align 8
  br label %234

234:                                              ; preds = %245, %232
  %235 = load i8*, i8** %16, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = icmp ult i8* %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i8*, i8** %16, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 47
  br label %243

243:                                              ; preds = %238, %234
  %244 = phi i1 [ false, %234 ], [ %242, %238 ]
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = load i8*, i8** %16, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %16, align 8
  br label %234

248:                                              ; preds = %243
  %249 = load i8*, i8** %15, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 1
  store i8* %250, i8** %13, align 8
  %251 = load i8*, i8** %13, align 8
  %252 = load i8*, i8** %16, align 8
  %253 = load i8*, i8** %12, align 8
  %254 = load i8*, i8** %16, align 8
  %255 = ptrtoint i8* %253 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  %258 = trunc i64 %257 to i32
  %259 = call i32 @memmove(i8* %251, i8* %252, i32 %258)
  %260 = load i8*, i8** %16, align 8
  %261 = load i8*, i8** %13, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load i8*, i8** %12, align 8
  %266 = sub i64 0, %264
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %267, i8** %12, align 8
  br label %270

268:                                              ; preds = %228
  %269 = load i8*, i8** %15, align 8
  store i8* %269, i8** %13, align 8
  br label %270

270:                                              ; preds = %268, %248
  br label %271

271:                                              ; preds = %270, %210
  br label %272

272:                                              ; preds = %271, %164
  br label %79

273:                                              ; preds = %79
  %274 = load i8*, i8** %12, align 8
  store i8 0, i8* %274, align 1
  %275 = load i8*, i8** %11, align 8
  %276 = load i8**, i8*** %6, align 8
  store i8* %275, i8** %276, align 8
  %277 = load i8*, i8** %12, align 8
  %278 = load i8*, i8** %11, align 8
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = load i64*, i64** %7, align 8
  store i64 %281, i64* %282, align 8
  br label %283

283:                                              ; preds = %273, %25
  ret void
}

declare dso_local i8* @pestrndup(i8*, i64, i32) #1

declare dso_local i32 @php_raw_url_decode(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
