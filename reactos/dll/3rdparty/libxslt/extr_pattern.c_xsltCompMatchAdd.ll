; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompMatchAdd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompMatchAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i8*, i8*, i8*, i32*, i32*, i32*, i64 }
%struct.TYPE_16__ = type { i32, i32 }

@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"xsltCompMatchAdd: memory re-allocation failure.\0A\00", align 1
@XSLT_OP_PREDICATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to compile predicate\0A\00", align 1
@XML_XPATH_NOVAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i64, i32*, i32*, i32)* @xsltCompMatchAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltCompMatchAdd(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %6
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i64 @xmlRealloc(%struct.TYPE_13__* %26, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %14, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %37 = icmp eq %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %23
  %39 = load i32, i32* @xsltGenericErrorContext, align 4
  %40 = call i32 @xsltGenericError(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @xmlFree(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @xmlFree(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 -1, i32* %7, align 4
  br label %289

65:                                               ; preds = %23
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  br label %73

73:                                               ; preds = %65, %6
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 7
  store i64 %74, i64* %83, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  store i32* %84, i32** %93, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 5
  store i32* %94, i32** %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i32* null, i32** %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %166

126:                                              ; preds = %73
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @xsltAllocateExtraCtxt(i32* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  store i8* %130, i8** %139, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i8* @xsltAllocateExtraCtxt(i32* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i8* %143, i8** %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i8* @xsltAllocateExtraCtxt(i32* %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i8* %156, i8** %165, align 8
  br label %206

166:                                              ; preds = %73
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = call i8* @xsltAllocateExtra(%struct.TYPE_17__* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  store i8* %170, i8** %179, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = call i8* @xsltAllocateExtra(%struct.TYPE_17__* %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  store i8* %183, i8** %192, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = call i8* @xsltAllocateExtra(%struct.TYPE_17__* %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i8* %196, i8** %205, align 8
  br label %206

206:                                              ; preds = %166, %126
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* @XSLT_OP_PREDICATE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %284

210:                                              ; preds = %206
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = icmp ne %struct.TYPE_17__* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = call %struct.TYPE_16__* @xmlXPathNewContext(i32* %220)
  store %struct.TYPE_16__* %221, %struct.TYPE_16__** %15, align 8
  br label %224

222:                                              ; preds = %210
  %223 = call %struct.TYPE_16__* @xmlXPathNewContext(i32* null)
  store %struct.TYPE_16__* %223, %struct.TYPE_16__** %15, align 8
  br label %224

224:                                              ; preds = %222, %215
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = icmp ne %struct.TYPE_17__* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %229, %224
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %239 = load i32*, i32** %11, align 8
  %240 = call i32* @xmlXPathCtxtCompile(%struct.TYPE_16__* %238, i32* %239)
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  store i32* %240, i32** %249, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %251 = call i32 @xmlXPathFreeContext(%struct.TYPE_16__* %250)
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %283

263:                                              ; preds = %237
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @xsltTransformError(i32* null, %struct.TYPE_17__* %266, i32 %269, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %272, align 8
  %274 = icmp ne %struct.TYPE_17__* %273, null
  br i1 %274, label %275, label %282

275:                                              ; preds = %263
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %275, %263
  br label %283

283:                                              ; preds = %282, %237
  br label %284

284:                                              ; preds = %283, %206
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  store i32 0, i32* %7, align 4
  br label %289

289:                                              ; preds = %284, %64
  %290 = load i32, i32* %7, align 4
  ret i32 %290
}

declare dso_local i64 @xmlRealloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xsltGenericError(i32, i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i8* @xsltAllocateExtraCtxt(i32*) #1

declare dso_local i8* @xsltAllocateExtra(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @xmlXPathNewContext(i32*) #1

declare dso_local i32* @xmlXPathCtxtCompile(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @xmlXPathFreeContext(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_17__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
