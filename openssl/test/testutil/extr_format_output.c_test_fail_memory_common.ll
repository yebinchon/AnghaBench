; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_memory_common.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_memory_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%04x: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%04x:-%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%04x:+%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%4s  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64)* @test_fail_memory_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fail_memory_common(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  store i64 %10, i64* %22, align 8
  %35 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %36 = sub nsw i32 %35, 9
  %37 = sdiv i32 %36, 17
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %23, align 8
  %40 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %24, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %25, align 8
  %45 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %26, align 8
  %49 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %50 = add nsw i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %28, align 8
  store i32 0, i32* %32, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = call i32 @test_fail_message_prefix(i8* %53, i8* %54, i32 %55, i8* %56, i8* %57, i8* %58, i8* %59)
  %61 = load i8*, i8** %19, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %11
  store i64 0, i64* %20, align 8
  br label %64

64:                                               ; preds = %63, %11
  %65 = load i8*, i8** %21, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64 0, i64* %22, align 8
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i64, i64* %20, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = load i64, i64* %22, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i8*, i8** %19, align 8
  %76 = icmp eq i8* %75, null
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %21, align 8
  %79 = icmp eq i8* %78, null
  %80 = zext i1 %79 to i32
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %19, align 8
  %84 = call i32 @test_memory_null_empty(i8* %83, i8 signext 32)
  br label %93

85:                                               ; preds = %74
  %86 = load i8*, i8** %16, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = call i32 @test_diff_header(i8* %86, i8* %87)
  %89 = load i8*, i8** %19, align 8
  %90 = call i32 @test_memory_null_empty(i8* %89, i8 signext 45)
  %91 = load i8*, i8** %21, align 8
  %92 = call i32 @test_memory_null_empty(i8* %91, i8 signext 43)
  br label %93

93:                                               ; preds = %85, %82
  br label %290

94:                                               ; preds = %71, %68
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %22, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %19, align 8
  %100 = load i8*, i8** %21, align 8
  %101 = icmp ne i8* %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = load i64, i64* %20, align 8
  %106 = call i64 @memcmp(i8* %103, i8* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %94
  %109 = load i8*, i8** %16, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @test_diff_header(i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %108, %102, %98
  br label %113

113:                                              ; preds = %271, %112
  %114 = load i64, i64* %20, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %22, align 8
  %118 = icmp ugt i64 %117, 0
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ true, %113 ], [ %118, %116 ]
  br i1 %120, label %121, label %289

121:                                              ; preds = %119
  store i64 0, i64* %30, align 8
  store i64 0, i64* %29, align 8
  %122 = load i64, i64* %20, align 8
  %123 = icmp ugt i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %23, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i64, i64* %23, align 8
  br label %132

130:                                              ; preds = %124
  %131 = load i64, i64* %20, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i64 [ %129, %128 ], [ %131, %130 ]
  store i64 %133, i64* %29, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = load i64, i64* %29, align 8
  %136 = call i32 @hex_convert_memory(i8* %134, i64 %135, i8* %44, i32 8)
  br label %137

137:                                              ; preds = %132, %121
  %138 = load i64, i64* %22, align 8
  %139 = icmp ugt i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %23, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i64, i64* %23, align 8
  br label %148

146:                                              ; preds = %140
  %147 = load i64, i64* %22, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  store i64 %149, i64* %30, align 8
  %150 = load i8*, i8** %21, align 8
  %151 = load i64, i64* %30, align 8
  %152 = call i32 @hex_convert_memory(i8* %150, i64 %151, i8* %48, i32 8)
  br label %153

153:                                              ; preds = %148, %137
  store i32 0, i32* %33, align 4
  store i64 0, i64* %31, align 8
  store i8* %52, i8** %27, align 8
  %154 = load i64, i64* %29, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %214

156:                                              ; preds = %153
  %157 = load i64, i64* %30, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %214

159:                                              ; preds = %156
  %160 = load i64, i64* %29, align 8
  %161 = load i64, i64* %30, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i64, i64* %29, align 8
  br label %167

165:                                              ; preds = %159
  %166 = load i64, i64* %30, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i64 [ %164, %163 ], [ %166, %165 ]
  store i64 %168, i64* %34, align 8
  br label %169

169:                                              ; preds = %208, %167
  %170 = load i64, i64* %31, align 8
  %171 = load i64, i64* %34, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %211

173:                                              ; preds = %169
  %174 = load i8*, i8** %19, align 8
  %175 = load i64, i64* %31, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8*, i8** %21, align 8
  %180 = load i64, i64* %31, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %178, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %173
  %186 = load i8*, i8** %27, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %27, align 8
  store i8 32, i8* %186, align 1
  %188 = load i8*, i8** %27, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %27, align 8
  store i8 32, i8* %188, align 1
  br label %195

190:                                              ; preds = %173
  %191 = load i8*, i8** %27, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %27, align 8
  store i8 94, i8* %191, align 1
  %193 = load i8*, i8** %27, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %27, align 8
  store i8 94, i8* %193, align 1
  store i32 1, i32* %33, align 4
  br label %195

195:                                              ; preds = %190, %185
  %196 = load i64, i64* %31, align 8
  %197 = urem i64 %196, 8
  %198 = icmp eq i64 %197, 7
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i64, i64* %31, align 8
  %201 = load i64, i64* %34, align 8
  %202 = sub i64 %201, 1
  %203 = icmp ne i64 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %27, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %27, align 8
  store i8 32, i8* %205, align 1
  br label %207

207:                                              ; preds = %204, %199, %195
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %31, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %31, align 8
  br label %169

211:                                              ; preds = %169
  %212 = load i8*, i8** %27, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %27, align 8
  store i8 0, i8* %212, align 1
  br label %214

214:                                              ; preds = %211, %156, %153
  %215 = load i64, i64* %29, align 8
  %216 = load i64, i64* %30, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load i32, i32* %33, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %32, align 4
  %223 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %222, i8* %44)
  br label %271

224:                                              ; preds = %218, %214
  %225 = load i32, i32* %32, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i8*, i8** %19, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i64, i64* %20, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230, %227
  %234 = load i8*, i8** %19, align 8
  %235 = call i32 @test_memory_null_empty(i8* %234, i8 signext 45)
  br label %243

236:                                              ; preds = %230, %224
  %237 = load i64, i64* %29, align 8
  %238 = icmp ugt i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* %32, align 4
  %241 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %240, i8* %44)
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242, %233
  %244 = load i32, i32* %32, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load i8*, i8** %21, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = load i64, i64* %22, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249, %246
  %253 = load i8*, i8** %21, align 8
  %254 = call i32 @test_memory_null_empty(i8* %253, i8 signext 43)
  br label %262

255:                                              ; preds = %249, %243
  %256 = load i64, i64* %30, align 8
  %257 = icmp ugt i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %32, align 4
  %260 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %259, i8* %48)
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %252
  %263 = load i32, i32* %33, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i64, i64* %31, align 8
  %267 = icmp ugt i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  br label %270

270:                                              ; preds = %268, %265, %262
  br label %271

271:                                              ; preds = %270, %221
  %272 = load i64, i64* %29, align 8
  %273 = load i8*, i8** %19, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 %272
  store i8* %274, i8** %19, align 8
  %275 = load i64, i64* %30, align 8
  %276 = load i8*, i8** %21, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 %275
  store i8* %277, i8** %21, align 8
  %278 = load i64, i64* %29, align 8
  %279 = load i64, i64* %20, align 8
  %280 = sub i64 %279, %278
  store i64 %280, i64* %20, align 8
  %281 = load i64, i64* %30, align 8
  %282 = load i64, i64* %22, align 8
  %283 = sub i64 %282, %281
  store i64 %283, i64* %22, align 8
  %284 = load i64, i64* %23, align 8
  %285 = load i32, i32* %32, align 4
  %286 = zext i32 %285 to i64
  %287 = add i64 %286, %284
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %32, align 4
  br label %113

289:                                              ; preds = %119
  br label %290

290:                                              ; preds = %289, %93
  %291 = call i32 (...) @test_flush_stderr()
  %292 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %292)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_fail_message_prefix(i8*, i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @test_memory_null_empty(i8*, i8 signext) #2

declare dso_local i32 @test_diff_header(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @hex_convert_memory(i8*, i64, i8*, i32) #2

declare dso_local i32 @test_printf_stderr(i8*, ...) #2

declare dso_local i32 @test_flush_stderr(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
