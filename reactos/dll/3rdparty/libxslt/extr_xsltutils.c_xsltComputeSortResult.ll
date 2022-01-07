; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltComputeSortResult.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltComputeSortResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i64, i32*, i32*, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32, i32* }

@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"xsl:sort : compilation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"xsltComputeSortResult: memory allocation failure\0A\00", align 1
@XPATH_STRING = common dso_local global i64 0, align 8
@XPATH_NUMBER = common dso_local global i64 0, align 8
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__** @xsltComputeSortResult(%struct.TYPE_19__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__**, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = icmp eq %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @xsltGenericErrorContext, align 4
  %26 = call i32 @xsltGenericError(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %3, align 8
  br label %270

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %3, align 8
  br label %270

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %8, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = icmp eq %struct.TYPE_22__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %38
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %3, align 8
  br label %270

50:                                               ; preds = %44
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call %struct.TYPE_21__** @xmlMalloc(i32 %57)
  store %struct.TYPE_21__** %58, %struct.TYPE_21__*** %7, align 8
  %59 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %60 = icmp eq %struct.TYPE_21__** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @xsltGenericErrorContext, align 4
  %63 = call i32 @xsltGenericError(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %3, align 8
  br label %270

64:                                               ; preds = %50
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %12, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %13, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %17, align 8
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %239, %64
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %242

95:                                               ; preds = %91
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %112, i64 %114
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  store %struct.TYPE_23__* %116, %struct.TYPE_23__** %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 4
  store %struct.TYPE_23__* %121, %struct.TYPE_23__** %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  store i32* %128, i32** %132, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  store i32 %135, i32* %139, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = call %struct.TYPE_21__* @xmlXPathCompiledEval(i32* %142, %struct.TYPE_17__* %145)
  store %struct.TYPE_21__* %146, %struct.TYPE_21__** %9, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = icmp ne %struct.TYPE_21__* %147, null
  br i1 %148, label %149, label %230

149:                                              ; preds = %95
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @XPATH_STRING, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %157 = call %struct.TYPE_21__* @xmlXPathConvertString(%struct.TYPE_21__* %156)
  store %struct.TYPE_21__* %157, %struct.TYPE_21__** %9, align 8
  br label %158

158:                                              ; preds = %155, %149
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %165 = call %struct.TYPE_21__* @xmlXPathConvertNumber(%struct.TYPE_21__* %164)
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %9, align 8
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %166
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @XPATH_NUMBER, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %182 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %182, i64 %184
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %185, align 8
  br label %191

186:                                              ; preds = %174
  %187 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %187, i64 %189
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %190, align 8
  br label %191

191:                                              ; preds = %186, %180
  br label %229

192:                                              ; preds = %166
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @XPATH_STRING, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %223

198:                                              ; preds = %192
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  store i32* %206, i32** %18, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32*, i32** %18, align 8
  %211 = call i64 @xsltStrxfrm(i64 %209, i32* %210)
  %212 = inttoptr i64 %211 to i32*
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  store i32* %212, i32** %214, align 8
  %215 = load i32*, i32** %18, align 8
  %216 = call i32 @xmlFree(i32* %215)
  br label %217

217:                                              ; preds = %203, %198
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %219, i64 %221
  store %struct.TYPE_21__* %218, %struct.TYPE_21__** %222, align 8
  br label %228

223:                                              ; preds = %192
  %224 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %224, i64 %226
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %227, align 8
  br label %228

228:                                              ; preds = %223, %217
  br label %229

229:                                              ; preds = %228, %191
  br label %238

230:                                              ; preds = %95
  %231 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %234, i64 %236
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %237, align 8
  br label %238

238:                                              ; preds = %230, %229
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %91

242:                                              ; preds = %91
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 2
  store %struct.TYPE_23__* %243, %struct.TYPE_23__** %245, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 1
  store %struct.TYPE_23__* %246, %struct.TYPE_23__** %248, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  store i32 %254, i32* %258, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 2
  store i32 %259, i32* %263, align 8
  %264 = load i32*, i32** %17, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 3
  store i32* %264, i32** %268, align 8
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__** %269, %struct.TYPE_21__*** %3, align 8
  br label %270

270:                                              ; preds = %242, %61, %49, %37, %24
  %271 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %3, align 8
  ret %struct.TYPE_21__** %271
}

declare dso_local i32 @xsltGenericError(i32, i8*) #1

declare dso_local %struct.TYPE_21__** @xmlMalloc(i32) #1

declare dso_local %struct.TYPE_21__* @xmlXPathCompiledEval(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_21__* @xmlXPathConvertString(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @xmlXPathConvertNumber(%struct.TYPE_21__*) #1

declare dso_local i64 @xsltStrxfrm(i64, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
