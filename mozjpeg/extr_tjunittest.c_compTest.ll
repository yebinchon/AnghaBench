; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_compTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_compTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pixFormatStr = common dso_local global i8** null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Bottom-Up\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Top-Down \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BU\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@tjPixelSize = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@alloc = common dso_local global i32 0, align 4
@TJFLAG_NOREALLOC = common dso_local global i32 0, align 4
@doYUV = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@__const.compTest.sf = private unnamed_addr constant %struct.TYPE_3__ { i32 1, i32 1 }, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%s %s -> YUV %s ... \00", align 1
@subNameLong = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"Passed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"FAILED!\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"YUV %s %s -> JPEG Q%d ... \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s %s -> %s Q%d ... \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s_enc_%s_%s_%s_Q%d.jpg\00", align 1
@subName = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Done.\0A  Result in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compTest(i32 %0, i8** %1, i64* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_3__, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8** %1, i8*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %30 = load i8**, i8*** @pixFormatStr, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %24, align 8
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %40, i8** %25, align 8
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  store i8* %46, i8** %26, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** @tjPixelSize, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = call i64 @malloc(i64 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %22, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %10
  %61 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %10
  %63 = load i8*, i8** %22, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @initBuf(i8* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i8**, i8*** %12, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load i64*, i64** %13, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8**, i8*** %12, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memset(i8* %78, i32 0, i64 %80)
  br label %82

82:                                               ; preds = %76, %72, %62
  %83 = load i32, i32* @alloc, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  %87 = load i32, i32* %20, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i64, i64* @doYUV, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %169

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @pad, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i64 @tjBufSizeYUV2(i32 %93, i32 %94, i32 %95, i32 %96)
  store i64 %97, i64* %27, align 8
  %98 = bitcast %struct.TYPE_3__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 bitcast (%struct.TYPE_3__* @__const.compTest.sf to i8*), i64 8, i1 false)
  %99 = call i32 (...) @tjInitCompress()
  store i32 %99, i32* %29, align 4
  %100 = load i32, i32* %29, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = call i32 (...) @_throwtj()
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i64, i64* %27, align 8
  %106 = call i64 @malloc(i64 %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %23, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i8*, i8** %23, align 8
  %113 = load i64, i64* %27, align 8
  %114 = call i32 @memset(i8* %112, i32 0, i64 %113)
  %115 = load i8*, i8** %24, align 8
  %116 = load i8*, i8** %25, align 8
  %117 = load i8**, i8*** @subNameLong, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %115, i8* %116, i8* %121)
  %123 = load i32, i32* %29, align 4
  %124 = load i8*, i8** %22, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i8*, i8** %23, align 8
  %129 = load i32, i32* @pad, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @tjEncodeYUV3(i32 %123, i8* %124, i32 %125, i32 0, i32 %126, i32 %127, i8* %128, i32 %129, i32 %130, i32 %131)
  %133 = call i32 @_tj(i32 %132)
  %134 = load i32, i32* %29, align 4
  %135 = call i32 @tjDestroy(i32 %134)
  %136 = load i8*, i8** %23, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %18, align 4
  %140 = bitcast %struct.TYPE_3__* %28 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = call i64 @checkBufYUV(i8* %136, i32 %137, i32 %138, i32 %139, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %111
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %148

146:                                              ; preds = %111
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %144
  %149 = load i8**, i8*** @subNameLong, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %25, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %153, i8* %154, i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load i8*, i8** %23, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @pad, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i8**, i8*** %12, align 8
  %164 = load i64*, i64** %13, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @tjCompressFromYUV(i32 %157, i8* %158, i32 %159, i32 %160, i32 %161, i32 %162, i8** %163, i64* %164, i32 %165, i32 %166)
  %168 = call i32 @_tj(i32 %167)
  br label %191

169:                                              ; preds = %89
  %170 = load i8*, i8** %24, align 8
  %171 = load i8*, i8** %25, align 8
  %172 = load i8**, i8*** @subNameLong, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %170, i8* %171, i8* %176, i32 %177)
  %179 = load i32, i32* %11, align 4
  %180 = load i8*, i8** %22, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i8**, i8*** %12, align 8
  %185 = load i64*, i64** %13, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @tjCompress2(i32 %179, i8* %180, i32 %181, i32 0, i32 %182, i32 %183, i8** %184, i64* %185, i32 %186, i32 %187, i32 %188)
  %190 = call i32 @_tj(i32 %189)
  br label %191

191:                                              ; preds = %169, %148
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %193 = load i8*, i8** %17, align 8
  %194 = load i8*, i8** %24, align 8
  %195 = load i8*, i8** %26, align 8
  %196 = load i8**, i8*** @subName, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %19, align 4
  %202 = call i32 @snprintf(i8* %192, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %193, i8* %194, i8* %195, i8* %200, i32 %201)
  %203 = load i8**, i8*** %12, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = load i64*, i64** %13, align 8
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %208 = call i32 @writeJPEG(i8* %204, i64 %206, i8* %207)
  %209 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %191
  %212 = load i8*, i8** %23, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i8*, i8** %23, align 8
  %216 = call i32 @free(i8* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i8*, i8** %22, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i8*, i8** %22, align 8
  %222 = call i32 @free(i8* %221)
  br label %223

223:                                              ; preds = %220, %217
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @initBuf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @tjBufSizeYUV2(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tjInitCompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjEncodeYUV3(i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @tjDestroy(i32) #1

declare dso_local i64 @checkBufYUV(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @tjCompressFromYUV(i32, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32) #1

declare dso_local i32 @tjCompress2(i32, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @writeJPEG(i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
