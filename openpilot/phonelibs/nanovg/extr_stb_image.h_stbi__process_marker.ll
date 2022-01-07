; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__process_marker.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__process_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i8*** }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8** }

@.str = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@stbi__jpeg_dezigzag = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @stbi__process_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__process_marker(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %235 [
    i32 128, label %19
    i32 221, label %21
    i32 219, label %36
    i32 196, label %96
  ]

19:                                               ; preds = %2
  %20 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %255

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stbi__get16be(i32 %24)
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @stbi__err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %255

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @stbi__get16be(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 1, i32* %3, align 4
  br label %255

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @stbi__get16be(i32 %39)
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %89, %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @stbi__get8(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 15
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 @stbi__err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %3, align 4
  br label %255

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @stbi__err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  br label %255

64:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %86, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 64
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @stbi__get8(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  %75 = load i8***, i8**** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8**, i8*** %75, i64 %77
  %79 = load i8**, i8*** %78, align 8
  %80 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8*, i8** %79, i64 %84
  store i8* %72, i8** %85, align 8
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %65

89:                                               ; preds = %65
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 65
  store i32 %91, i32* %6, align 4
  br label %42

92:                                               ; preds = %42
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %255

96:                                               ; preds = %2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @stbi__get16be(i32 %99)
  %101 = sub nsw i32 %100, 2
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %227, %96
  %103 = load i32, i32* %6, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %231

105:                                              ; preds = %102
  store i32 0, i32* %14, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @stbi__get8(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = ashr i32 %111, 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %17, align 4
  %119 = icmp sgt i32 %118, 3
  br i1 %119, label %120, label %122

120:                                              ; preds = %117, %105
  %121 = call i32 @stbi__err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %121, i32* %3, align 4
  br label %255

122:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %141, %122
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %144

126:                                              ; preds = %123
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @stbi__get8(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %133
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %123

144:                                              ; preds = %123
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 17
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = ptrtoint %struct.TYPE_5__* %155 to i32
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %158 = call i32 @stbi__build_huffman(i32 %156, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %255

161:                                              ; preds = %149
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  store i8** %169, i8*** %11, align 8
  br label %191

170:                                              ; preds = %144
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = ptrtoint %struct.TYPE_6__* %176 to i32
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %179 = call i32 @stbi__build_huffman(i32 %177, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %255

182:                                              ; preds = %170
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i8**, i8*** %189, align 8
  store i8** %190, i8*** %11, align 8
  br label %191

191:                                              ; preds = %182, %161
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %205, %191
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @stbi__get8(i32 %199)
  %201 = load i8**, i8*** %11, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  store i8* %200, i8** %204, align 8
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %192

208:                                              ; preds = %192
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = ptrtoint %struct.TYPE_6__* %224 to i32
  %226 = call i32 @stbi__build_fast_ac(i32 %218, i32 %225)
  br label %227

227:                                              ; preds = %211, %208
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %6, align 4
  br label %102

231:                                              ; preds = %102
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %232, 0
  %234 = zext i1 %233 to i32
  store i32 %234, i32* %3, align 4
  br label %255

235:                                              ; preds = %2
  %236 = load i32, i32* %5, align 4
  %237 = icmp sge i32 %236, 224
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %5, align 4
  %240 = icmp sle i32 %239, 239
  br i1 %240, label %244, label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %5, align 4
  %243 = icmp eq i32 %242, 254
  br i1 %243, label %244, label %254

244:                                              ; preds = %241, %238
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @stbi__get16be(i32 %250)
  %252 = sub nsw i32 %251, 2
  %253 = call i32 @stbi__skip(i32 %247, i32 %252)
  store i32 1, i32* %3, align 4
  br label %255

254:                                              ; preds = %241
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %254, %244, %231, %181, %160, %120, %92, %62, %57, %29, %27, %19
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__get16be(i32) #1

declare dso_local i8* @stbi__get8(i32) #1

declare dso_local i32 @stbi__build_huffman(i32, i32*) #1

declare dso_local i32 @stbi__build_fast_ac(i32, i32) #1

declare dso_local i32 @stbi__skip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
