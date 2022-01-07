; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_parse_ipv6.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_parse_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@prefix_length = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, %struct.TYPE_3__*)* @parse_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipv6(i8* %0, i32* %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %34, %4
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %24, %19
  %33 = phi i1 [ false, %19 ], [ %31, %24 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %19

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 91
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %68, %50
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %58, %53
  %67 = phi i1 [ false, %53 ], [ %65, %58 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %53

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %42, %37
  br label %73

73:                                               ; preds = %172, %93, %72
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %209

78:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp uge i32 %79, 16
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %209

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 58
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = icmp ult i32 %91, 16
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %73

97:                                               ; preds = %90, %82
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %8, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load i32, i32* %15, align 4
  %105 = icmp uge i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %139

107:                                              ; preds = %103
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %139

116:                                              ; preds = %107
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @isxdigit(i8 signext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %139

125:                                              ; preds = %116
  %126 = load i32, i32* %16, align 4
  %127 = shl i32 %126, 4
  store i32 %127, i32* %16, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @hexval(i8 signext %133)
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %98

139:                                              ; preds = %124, %115, %106, %98
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %209

143:                                              ; preds = %139
  %144 = load i32, i32* %16, align 4
  %145 = lshr i32 %144, 8
  %146 = trunc i32 %145 to i8
  %147 = load i32, i32* %13, align 4
  %148 = add i32 %147, 0
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %149
  store i8 %146, i8* %150, align 1
  %151 = load i32, i32* %16, align 4
  %152 = lshr i32 %151, 0
  %153 = trunc i32 %152 to i8
  %154 = load i32, i32* %13, align 4
  %155 = add i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %156
  store i8 %153, i8* %157, align 1
  %158 = load i32, i32* %13, align 4
  %159 = add i32 %158, 2
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %8, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %143
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 58
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %73

175:                                              ; preds = %164, %143
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %8, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 93
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load i32, i32* %10, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %209

194:                                              ; preds = %183, %180, %175
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %195, 16
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %209

202:                                              ; preds = %198
  %203 = load i32, i32* %10, align 4
  %204 = zext i32 %203 to i64
  %205 = load i64, i64* %8, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %209

208:                                              ; preds = %202
  store i32 -1, i32* %5, align 4
  br label %326

209:                                              ; preds = %207, %201, %197, %191, %142, %81, %73
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, -1
  br i1 %211, label %212, label %241

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 -1, i32* %5, align 4
  br label %326

216:                                              ; preds = %212
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %218 = load i32, i32* %12, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = getelementptr inbounds i8, i8* %220, i64 16
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  %226 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %227 = load i32, i32* %12, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %12, align 4
  %232 = sub i32 %230, %231
  %233 = call i32 @memmove(i8* %225, i8* %229, i32 %232)
  %234 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %235 = load i32, i32* %12, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i32, i32* %13, align 4
  %239 = sub i32 16, %238
  %240 = call i32 @memset(i8* %237, i32 0, i32 %239)
  br label %241

241:                                              ; preds = %216, %209
  %242 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %243 = load i8, i8* %242, align 16
  %244 = zext i8 %243 to i64
  %245 = shl i64 %244, 56
  %246 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i64
  %249 = shl i64 %248, 48
  %250 = or i64 %245, %249
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 2
  %252 = load i8, i8* %251, align 2
  %253 = zext i8 %252 to i64
  %254 = shl i64 %253, 40
  %255 = or i64 %250, %254
  %256 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 3
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i64
  %259 = shl i64 %258, 32
  %260 = or i64 %255, %259
  %261 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 4
  %262 = load i8, i8* %261, align 4
  %263 = zext i8 %262 to i64
  %264 = shl i64 %263, 24
  %265 = or i64 %260, %264
  %266 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 5
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i64
  %269 = shl i64 %268, 16
  %270 = or i64 %265, %269
  %271 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 6
  %272 = load i8, i8* %271, align 2
  %273 = zext i8 %272 to i64
  %274 = shl i64 %273, 8
  %275 = or i64 %270, %274
  %276 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 7
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i64
  %279 = shl i64 %278, 0
  %280 = or i64 %275, %279
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 8
  %284 = load i8, i8* %283, align 8
  %285 = zext i8 %284 to i64
  %286 = shl i64 %285, 56
  %287 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 9
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i64
  %290 = shl i64 %289, 48
  %291 = or i64 %286, %290
  %292 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 10
  %293 = load i8, i8* %292, align 2
  %294 = zext i8 %293 to i64
  %295 = shl i64 %294, 40
  %296 = or i64 %291, %295
  %297 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 11
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = shl i64 %299, 32
  %301 = or i64 %296, %300
  %302 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 12
  %303 = load i8, i8* %302, align 4
  %304 = zext i8 %303 to i64
  %305 = shl i64 %304, 24
  %306 = or i64 %301, %305
  %307 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 13
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i64
  %310 = shl i64 %309, 16
  %311 = or i64 %306, %310
  %312 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 14
  %313 = load i8, i8* %312, align 2
  %314 = zext i8 %313 to i64
  %315 = shl i64 %314, 8
  %316 = or i64 %311, %315
  %317 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 15
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i64
  %320 = shl i64 %319, 0
  %321 = or i64 %316, %320
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 1
  store i64 %321, i64* %323, align 8
  %324 = load i32, i32* %10, align 4
  %325 = load i32*, i32** %7, align 8
  store i32 %324, i32* %325, align 4
  store i32 1, i32* %5, align 4
  br label %326

326:                                              ; preds = %241, %215, %208
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @hexval(i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
