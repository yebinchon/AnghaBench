; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c__decompTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c__decompTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Incorrect JPEG header\00", align 1
@tjPixelSize = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@doYUV = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"JPEG -> YUV %s \00", align 1
@subNameLong = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%d/%d ... \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"... \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Passed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"FAILED!\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"YUV %s -> %s %s ... \00", align 1
@pixFormatStr = common dso_local global i8** null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Bottom-Up\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Top-Down \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"JPEG -> %s %s \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Passed.\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"FAILED!\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_decompTest(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = bitcast %struct.TYPE_6__* %11 to i64*
  store i64 %9, i64* %31, align 4
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  %32 = load i32, i32* %15, align 4
  %33 = bitcast %struct.TYPE_6__* %11 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i32 @TJSCALED(i32 %32, i64 %34)
  store i32 %35, i32* %26, align 4
  %36 = load i32, i32* %16, align 4
  %37 = bitcast %struct.TYPE_6__* %11 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @TJSCALED(i32 %36, i64 %38)
  store i32 %39, i32* %27, align 4
  store i64 0, i64* %28, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @tjDecompressHeader2(i32 %40, i8* %41, i64 %42, i32* %23, i32* %24, i32* %25)
  %44 = call i32 @_tj(i32 %43)
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %10
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48, %10
  %57 = call i32 @_throw(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %26, align 4
  %60 = load i32, i32* %27, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32*, i32** @tjPixelSize, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %28, align 8
  %69 = load i64, i64* %28, align 8
  %70 = call i64 @malloc(i64 %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %21, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %58
  %76 = load i8*, i8** %21, align 8
  %77 = load i64, i64* %28, align 8
  %78 = call i32 @memset(i8* %76, i32 0, i64 %77)
  %79 = load i64, i64* @doYUV, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %178

81:                                               ; preds = %75
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* @pad, align 4
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i64 @tjBufSizeYUV2(i32 %82, i32 %83, i32 %84, i32 %85)
  store i64 %86, i64* %29, align 8
  %87 = call i32 (...) @tjInitDecompress()
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = call i32 (...) @_throwtj()
  br label %92

92:                                               ; preds = %90, %81
  %93 = load i64, i64* %29, align 8
  %94 = call i64 @malloc(i64 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %22, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i8*, i8** %22, align 8
  %101 = load i64, i64* %29, align 8
  %102 = call i32 @memset(i8* %100, i32 0, i64 %101)
  %103 = load i8**, i8*** @subNameLong, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %116, label %112

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %112, %99
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %120)
  br label %124

122:                                              ; preds = %112
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i32, i32* %12, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i8*, i8** %22, align 8
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* @pad, align 4
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @tjDecompressToYUV2(i32 %125, i8* %126, i64 %127, i8* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = call i32 @_tj(i32 %133)
  %135 = load i8*, i8** %22, align 8
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %19, align 4
  %139 = bitcast %struct.TYPE_6__* %11 to i64*
  %140 = load i64, i64* %139, align 4
  %141 = call i64 @checkBufYUV(i8* %135, i32 %136, i32 %137, i32 %138, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %124
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %147

145:                                              ; preds = %124
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %143
  %148 = load i8**, i8*** @subNameLong, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = load i8**, i8*** @pixFormatStr, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %152, i8* %157, i8* %163)
  %165 = load i32, i32* %30, align 4
  %166 = load i8*, i8** %22, align 8
  %167 = load i32, i32* @pad, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i8*, i8** %21, align 8
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %20, align 4
  %174 = call i32 @tjDecodeYUV(i32 %165, i8* %166, i32 %167, i32 %168, i8* %169, i32 %170, i32 0, i32 %171, i32 %172, i32 %173)
  %175 = call i32 @_tj(i32 %174)
  %176 = load i32, i32* %30, align 4
  %177 = call i32 @tjDestroy(i32 %176)
  br label %217

178:                                              ; preds = %75
  %179 = load i8**, i8*** @pixFormatStr, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %183, i8* %189)
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %198, label %194

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %204

198:                                              ; preds = %194, %178
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %202)
  br label %206

204:                                              ; preds = %194
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %198
  %207 = load i32, i32* %12, align 4
  %208 = load i8*, i8** %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load i8*, i8** %21, align 8
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %20, align 4
  %215 = call i32 @tjDecompress2(i32 %207, i8* %208, i64 %209, i8* %210, i32 %211, i32 0, i32 %212, i32 %213, i32 %214)
  %216 = call i32 @_tj(i32 %215)
  br label %217

217:                                              ; preds = %206, %147
  %218 = load i8*, i8** %21, align 8
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %20, align 4
  %224 = bitcast %struct.TYPE_6__* %11 to i64*
  %225 = load i64, i64* %224, align 4
  %226 = call i64 @checkBuf(i8* %218, i32 %219, i32 %220, i32 %221, i32 %222, i64 %225, i32 %223)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %232

230:                                              ; preds = %217
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %228
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232
  %235 = load i8*, i8** %22, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i8*, i8** %22, align 8
  %239 = call i32 @free(i8* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i8*, i8** %21, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i8*, i8** %21, align 8
  %245 = call i32 @free(i8* %244)
  br label %246

246:                                              ; preds = %243, %240
  ret void
}

declare dso_local i32 @TJSCALED(i32, i64) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjDecompressHeader2(i32, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @tjBufSizeYUV2(i32, i32, i32, i32) #1

declare dso_local i32 @tjInitDecompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tjDecompressToYUV2(i32, i8*, i64, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @checkBufYUV(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @tjDecodeYUV(i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tjDestroy(i32) #1

declare dso_local i32 @tjDecompress2(i32, i8*, i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @checkBuf(i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
