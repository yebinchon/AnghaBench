; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltNewTransformContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltNewTransformContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i64*, i64, i32, i64, i32, i32*, i32*, %struct.TYPE_23__*, i32, %struct.TYPE_18__*, %struct.TYPE_22__*, %struct.TYPE_21__*, i64, i64, i64, i32*, i32, i64, i32*, i64, i32*, i32, i32*, i64, i32*, i32*, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__, i32*, i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"xsltNewTransformContext : malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"xsltNewTransformContext: out of memory\0A\00", align 1
@xsltMaxDepth = common dso_local global i32 0, align 4
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@xsltMaxVars = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"xsltNewTransformContext : xmlXPathNewContext failed\0A\00", align 1
@xslDebugStatus = common dso_local global i64 0, align 8
@XSLT_DEBUG_NONE = common dso_local global i64 0, align 8
@XSLT_PARSE_OPTIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"xsltNewTransformContext : xsltNewDocument failed\0A\00", align 1
@xsltDefaultTrace = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @xsltNewTransformContext(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @xsltInitGlobals()
  %10 = call i64 @xmlMalloc(i32 4)
  %11 = inttoptr i64 %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = icmp eq %struct.TYPE_20__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @xsltTransformError(%struct.TYPE_20__* null, i32* null, i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %268

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = call i32 @memset(%struct.TYPE_20__* %19, i32 0, i32 4)
  %21 = call i32* (...) @xsltTransformCacheCreate()
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 31
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 31
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %261

29:                                               ; preds = %18
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @xmlDictCreateSub(i32 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 30
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 30
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br label %45

45:                                               ; preds = %40, %29
  %46 = phi i1 [ false, %29 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = call i64 @xmlMalloc(i32 40)
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 29
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 29
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @xsltTransformError(%struct.TYPE_20__* null, i32* null, i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %261

62:                                               ; preds = %45
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 28
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  store i32 5, i32* %66, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 27
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @xsltMaxDepth, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 26
  store i32 %69, i32* %71, align 8
  %72 = call i64 @xmlMalloc(i32 40)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 25
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 25
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @xmlGenericErrorContext, align 4
  %82 = call i32 @xmlGenericError(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %261

83:                                               ; preds = %62
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 24
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  store i32 10, i32* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 23
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 22
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @xsltMaxVars, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 21
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 20
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 19
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 18
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 17
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 16
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %105, align 8
  %106 = call i32 (...) @xmlXPathInit()
  %107 = load i64, i64* %5, align 8
  %108 = call %struct.TYPE_18__* @xmlXPathNewContext(i64 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 14
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 14
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = icmp eq %struct.TYPE_18__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %83
  %116 = load i64, i64* %5, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @xsltTransformError(%struct.TYPE_20__* null, i32* null, i32 %117, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %261

119:                                              ; preds = %83
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 14
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = call i32 @xmlXPathContextSetCache(%struct.TYPE_18__* %122, i32 1, i32 -1, i32 0)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %261

126:                                              ; preds = %119
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %196

131:                                              ; preds = %126
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 20
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i64 @xmlMalloc(i32 %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_22__*
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 15
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 15
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = icmp eq %struct.TYPE_22__* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %131
  %154 = load i32, i32* @xmlGenericErrorContext, align 4
  %155 = call i32 @xmlGenericError(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %261

156:                                              ; preds = %131
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %192, %156
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %195

169:                                              ; preds = %163
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 15
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 2
  store i32* null, i32** %176, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 15
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  store i32* null, i32** %183, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 15
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  store i32* null, i32** %191, align 8
  br label %192

192:                                              ; preds = %169
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %163

195:                                              ; preds = %163
  br label %203

196:                                              ; preds = %126
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 15
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %198, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 4
  store i32 0, i32* %200, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 3
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %196, %195
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %205 = call i32 @XSLT_REGISTER_VARIABLE_LOOKUP(%struct.TYPE_20__* %204)
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %207 = call i32 @XSLT_REGISTER_FUNCTION_LOOKUP(%struct.TYPE_20__* %206)
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 14
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  store i32 %210, i32* %214, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %216 = call i32 @xsltInitCtxtExts(%struct.TYPE_20__* %215)
  %217 = load i64, i64* @xslDebugStatus, align 8
  %218 = load i64, i64* @XSLT_DEBUG_NONE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %203
  %221 = load i64, i64* %5, align 8
  %222 = call i32 @xmlXPathOrderDocElems(i64 %221)
  br label %223

223:                                              ; preds = %220, %203
  %224 = load i32, i32* @XSLT_PARSE_OPTIONS, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 13
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %228 = load i64, i64* %5, align 8
  %229 = call %struct.TYPE_23__* @xsltNewDocument(%struct.TYPE_20__* %227, i64 %228)
  store %struct.TYPE_23__* %229, %struct.TYPE_23__** %7, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = icmp eq %struct.TYPE_23__* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %223
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %234 = load i64, i64* %5, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @xsltTransformError(%struct.TYPE_20__* %233, i32* null, i32 %235, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %261

237:                                              ; preds = %223
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 4
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 12
  store %struct.TYPE_23__* %240, %struct.TYPE_23__** %242, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 11
  store i32* null, i32** %244, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 10
  store i32* null, i32** %246, align 8
  %247 = call i32 (...) @xsltGetDefaultSecurityPrefs()
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 9
  store i32 %247, i32* %249, align 8
  %250 = load i64, i64* @xslDebugStatus, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 8
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 5
  store i64* bitcast (i32* @xsltDefaultTrace to i64*), i64** %254, align 8
  %255 = call i32 (...) @xsltGetXIncludeDefault()
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 6
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %260, %struct.TYPE_20__** %3, align 8
  br label %268

261:                                              ; preds = %232, %153, %125, %115, %80, %58, %28
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %263 = icmp ne %struct.TYPE_20__* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = call i32 @xsltFreeTransformContext(%struct.TYPE_20__* %265)
  br label %267

267:                                              ; preds = %264, %261
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %268

268:                                              ; preds = %267, %237, %14
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %269
}

declare dso_local i32 @xsltInitGlobals(...) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_20__*, i32*, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @xsltTransformCacheCreate(...) #1

declare dso_local i32* @xmlDictCreateSub(i32) #1

declare dso_local i32 @xmlGenericError(i32, i8*) #1

declare dso_local i32 @xmlXPathInit(...) #1

declare dso_local %struct.TYPE_18__* @xmlXPathNewContext(i64) #1

declare dso_local i32 @xmlXPathContextSetCache(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @XSLT_REGISTER_VARIABLE_LOOKUP(%struct.TYPE_20__*) #1

declare dso_local i32 @XSLT_REGISTER_FUNCTION_LOOKUP(%struct.TYPE_20__*) #1

declare dso_local i32 @xsltInitCtxtExts(%struct.TYPE_20__*) #1

declare dso_local i32 @xmlXPathOrderDocElems(i64) #1

declare dso_local %struct.TYPE_23__* @xsltNewDocument(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @xsltGetDefaultSecurityPrefs(...) #1

declare dso_local i32 @xsltGetXIncludeDefault(...) #1

declare dso_local i32 @xsltFreeTransformContext(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
