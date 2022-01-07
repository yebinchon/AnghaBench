; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltDefaultSortFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltDefaultSortFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i64, i32*, i32* }
%struct.TYPE_19__ = type { i64, i64, i64 }

@XSLT_MAX_SORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"xsltDoSortFunction: no support for data-type = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ascending\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"descending\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"xsltDoSortFunction: invalid value %s for order\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltDefaultSortFunction(%struct.TYPE_17__* %0, %struct.TYPE_21__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_21__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca %struct.TYPE_19__**, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %28 = load i32, i32* @XSLT_MAX_SORT, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca %struct.TYPE_19__**, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* @XSLT_MAX_SORT, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %25, align 8
  %35 = load i32, i32* @XSLT_MAX_SORT, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %26, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = icmp eq %struct.TYPE_17__* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %3
  %41 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %42 = icmp eq %struct.TYPE_21__** %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @XSLT_MAX_SORT, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43, %40, %3
  store i32 1, i32* %27, align 4
  br label %890

51:                                               ; preds = %46
  %52 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %52, i64 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = icmp eq %struct.TYPE_21__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %27, align 4
  br label %890

57:                                               ; preds = %51
  %58 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %58, i64 0
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %7, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = icmp eq %struct.TYPE_18__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 1, i32* %27, align 4
  br label %890

66:                                               ; preds = %57
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %12, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %71 = icmp eq %struct.TYPE_20__* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %66
  store i32 1, i32* %27, align 4
  br label %890

78:                                               ; preds = %72
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %223, %78
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %226

83:                                               ; preds = %79
  %84 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %84, i64 %86
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %7, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %34, i64 %92
  store i32 0, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %156

98:                                               ; preds = %83
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %156

103:                                              ; preds = %98
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %105, i64 %107
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i32, i32* @XSLT_NAMESPACE, align 4
  %111 = call i8* @xsltEvalAttrValueTemplate(%struct.TYPE_17__* %104, %struct.TYPE_21__* %109, i32* bitcast ([10 x i8]* @.str to i32*), i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 6
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %155

119:                                              ; preds = %103
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %34, i64 %121
  store i32 1, i32* %122, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @xmlStrEqual(i32* %125, i32* bitcast ([5 x i8]* @.str.1 to i32*))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 8
  br label %154

131:                                              ; preds = %119
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @xmlStrEqual(i32* %134, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 8
  br label %153

140:                                              ; preds = %131
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %142, i64 %144
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @xsltTransformError(%struct.TYPE_17__* %141, i32* null, %struct.TYPE_21__* %146, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32* %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %140, %137
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %103
  br label %156

156:                                              ; preds = %155, %98, %83
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %37, i64 %158
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %222

164:                                              ; preds = %156
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %222

169:                                              ; preds = %164
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %171 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %171, i64 %173
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = load i32, i32* @XSLT_NAMESPACE, align 4
  %177 = call i8* @xsltEvalAttrValueTemplate(%struct.TYPE_17__* %170, %struct.TYPE_21__* %175, i32* bitcast ([6 x i8]* @.str.4 to i32*), i32 %176)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 5
  store i32* %178, i32** %180, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %221

185:                                              ; preds = %169
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %37, i64 %187
  store i32 1, i32* %188, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @xmlStrEqual(i32* %191, i32* bitcast ([10 x i8]* @.str.5 to i32*))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 3
  store i32 0, i32* %196, align 8
  br label %220

197:                                              ; preds = %185
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @xmlStrEqual(i32* %200, i32* bitcast ([11 x i8]* @.str.6 to i32*))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  store i32 1, i32* %205, align 8
  br label %219

206:                                              ; preds = %197
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %208, i64 %210
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @xsltTransformError(%struct.TYPE_17__* %207, i32* null, %struct.TYPE_21__* %212, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32* %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 3
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %206, %203
  br label %220

220:                                              ; preds = %219, %194
  br label %221

221:                                              ; preds = %220, %169
  br label %222

222:                                              ; preds = %221, %164, %156
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %19, align 4
  br label %79

226:                                              ; preds = %79
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %17, align 4
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %231 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %231, i64 0
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = call %struct.TYPE_19__** @xsltComputeSortResult(%struct.TYPE_17__* %230, %struct.TYPE_21__* %233)
  %235 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 0
  store %struct.TYPE_19__** %234, %struct.TYPE_19__*** %235, align 16
  store i32 1, i32* %18, align 4
  br label %236

236:                                              ; preds = %244, %226
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* @XSLT_MAX_SORT, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %242
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %243, align 8
  br label %244

244:                                              ; preds = %240
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %18, align 4
  br label %236

247:                                              ; preds = %236
  %248 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 0
  %249 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %248, align 16
  store %struct.TYPE_19__** %249, %struct.TYPE_19__*** %10, align 8
  %250 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %250, i64 0
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  store %struct.TYPE_18__* %254, %struct.TYPE_18__** %7, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %13, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %14, align 4
  %261 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %262 = icmp eq %struct.TYPE_19__** %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %247
  store i32 1, i32* %27, align 4
  br label %890

264:                                              ; preds = %247
  %265 = load i32, i32* %17, align 4
  %266 = sdiv i32 %265, 2
  store i32 %266, i32* %20, align 4
  br label %267

267:                                              ; preds = %810, %264
  %268 = load i32, i32* %20, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %813

270:                                              ; preds = %267
  %271 = load i32, i32* %20, align 4
  store i32 %271, i32* %18, align 4
  br label %272

272:                                              ; preds = %806, %270
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %809

276:                                              ; preds = %272
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %20, align 4
  %279 = sub nsw i32 %277, %278
  store i32 %279, i32* %19, align 4
  %280 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %281 = load i32, i32* %18, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %280, i64 %282
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %283, align 8
  %285 = icmp eq %struct.TYPE_19__* %284, null
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  br label %806

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %804, %287
  %289 = load i32, i32* %19, align 4
  %290 = icmp sge i32 %289, 0
  br i1 %290, label %291, label %805

291:                                              ; preds = %288
  %292 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %293 = load i32, i32* %19, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %292, i64 %294
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %295, align 8
  %297 = icmp eq %struct.TYPE_19__* %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %291
  store i32 1, i32* %21, align 4
  br label %437

299:                                              ; preds = %291
  %300 = load i32, i32* %14, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %383

302:                                              ; preds = %299
  %303 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %303, i64 %305
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i64 @xmlXPathIsNaN(i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %327

312:                                              ; preds = %302
  %313 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %313, i64 %317
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i64 @xmlXPathIsNaN(i64 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %312
  store i32 0, i32* %21, align 4
  br label %326

325:                                              ; preds = %312
  store i32 -1, i32* %21, align 4
  br label %326

326:                                              ; preds = %325, %324
  br label %382

327:                                              ; preds = %302
  %328 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %329 = load i32, i32* %19, align 4
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %328, i64 %332
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = call i64 @xmlXPathIsNaN(i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %327
  store i32 1, i32* %21, align 4
  br label %381

340:                                              ; preds = %327
  %341 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %342 = load i32, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %341, i64 %343
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* %20, align 4
  %351 = add nsw i32 %349, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %348, i64 %352
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %347, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %340
  store i32 0, i32* %21, align 4
  br label %380

359:                                              ; preds = %340
  %360 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %361 = load i32, i32* %19, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %360, i64 %362
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %368 = load i32, i32* %19, align 4
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %367, i64 %371
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp sgt i64 %366, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %359
  store i32 1, i32* %21, align 4
  br label %379

378:                                              ; preds = %359
  store i32 -1, i32* %21, align 4
  br label %379

379:                                              ; preds = %378, %377
  br label %380

380:                                              ; preds = %379, %358
  br label %381

381:                                              ; preds = %380, %339
  br label %382

382:                                              ; preds = %381, %326
  br label %430

383:                                              ; preds = %299
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 4
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %411

388:                                              ; preds = %383
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %393 = load i32, i32* %19, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %392, i64 %394
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = inttoptr i64 %398 to i32*
  %400 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %401 = load i32, i32* %19, align 4
  %402 = load i32, i32* %20, align 4
  %403 = add nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %400, i64 %404
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = inttoptr i64 %408 to i32*
  %410 = call i32 @xsltLocaleStrcmp(i64 %391, i32* %399, i32* %409)
  store i32 %410, i32* %21, align 4
  br label %429

411:                                              ; preds = %383
  %412 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %413 = load i32, i32* %19, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %412, i64 %414
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %420 = load i32, i32* %19, align 4
  %421 = load i32, i32* %20, align 4
  %422 = add nsw i32 %420, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %419, i64 %423
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @xmlStrcmp(i64 %418, i64 %427)
  store i32 %428, i32* %21, align 4
  br label %429

429:                                              ; preds = %411, %388
  br label %430

430:                                              ; preds = %429, %382
  %431 = load i32, i32* %13, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load i32, i32* %21, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %21, align 4
  br label %436

436:                                              ; preds = %433, %430
  br label %437

437:                                              ; preds = %436, %298
  %438 = load i32, i32* %21, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %670

440:                                              ; preds = %437
  store i32 1, i32* %22, align 4
  br label %441

441:                                              ; preds = %666, %440
  %442 = load i32, i32* %22, align 4
  %443 = load i32, i32* %6, align 4
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %445, label %669

445:                                              ; preds = %441
  %446 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %447 = load i32, i32* %22, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %446, i64 %448
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = icmp eq %struct.TYPE_21__* %450, null
  br i1 %451, label %452, label %453

452:                                              ; preds = %445
  br label %669

453:                                              ; preds = %445
  %454 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %455 = load i32, i32* %22, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %454, i64 %456
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %459, align 8
  store %struct.TYPE_18__* %460, %struct.TYPE_18__** %7, align 8
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %462 = icmp eq %struct.TYPE_18__* %461, null
  br i1 %462, label %463, label %464

463:                                              ; preds = %453
  br label %669

464:                                              ; preds = %453
  %465 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  store i32 %467, i32* %15, align 4
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  store i32 %470, i32* %16, align 4
  %471 = load i32, i32* %22, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %472
  %474 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %473, align 8
  %475 = icmp eq %struct.TYPE_19__** %474, null
  br i1 %475, label %476, label %487

476:                                              ; preds = %464
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %478 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %479 = load i32, i32* %22, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %478, i64 %480
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %481, align 8
  %483 = call %struct.TYPE_19__** @xsltComputeSortResult(%struct.TYPE_17__* %477, %struct.TYPE_21__* %482)
  %484 = load i32, i32* %22, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %485
  store %struct.TYPE_19__** %483, %struct.TYPE_19__*** %486, align 8
  br label %487

487:                                              ; preds = %476, %464
  %488 = load i32, i32* %22, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %489
  %491 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %490, align 8
  store %struct.TYPE_19__** %491, %struct.TYPE_19__*** %11, align 8
  %492 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %493 = icmp eq %struct.TYPE_19__** %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %487
  br label %669

495:                                              ; preds = %487
  %496 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %497 = load i32, i32* %19, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %496, i64 %498
  %500 = load %struct.TYPE_19__*, %struct.TYPE_19__** %499, align 8
  %501 = icmp eq %struct.TYPE_19__* %500, null
  br i1 %501, label %502, label %513

502:                                              ; preds = %495
  %503 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %504 = load i32, i32* %19, align 4
  %505 = load i32, i32* %20, align 4
  %506 = add nsw i32 %504, %505
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %503, i64 %507
  %509 = load %struct.TYPE_19__*, %struct.TYPE_19__** %508, align 8
  %510 = icmp ne %struct.TYPE_19__* %509, null
  br i1 %510, label %511, label %512

511:                                              ; preds = %502
  store i32 1, i32* %21, align 4
  br label %512

512:                                              ; preds = %511, %502
  br label %662

513:                                              ; preds = %495
  %514 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %515 = load i32, i32* %19, align 4
  %516 = load i32, i32* %20, align 4
  %517 = add nsw i32 %515, %516
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %514, i64 %518
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %519, align 8
  %521 = icmp eq %struct.TYPE_19__* %520, null
  br i1 %521, label %522, label %523

522:                                              ; preds = %513
  store i32 -1, i32* %21, align 4
  br label %661

523:                                              ; preds = %513
  %524 = load i32, i32* %16, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %607

526:                                              ; preds = %523
  %527 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %528 = load i32, i32* %19, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %527, i64 %529
  %531 = load %struct.TYPE_19__*, %struct.TYPE_19__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = call i64 @xmlXPathIsNaN(i64 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %551

536:                                              ; preds = %526
  %537 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %538 = load i32, i32* %19, align 4
  %539 = load i32, i32* %20, align 4
  %540 = add nsw i32 %538, %539
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %537, i64 %541
  %543 = load %struct.TYPE_19__*, %struct.TYPE_19__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = call i64 @xmlXPathIsNaN(i64 %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %536
  store i32 0, i32* %21, align 4
  br label %550

549:                                              ; preds = %536
  store i32 -1, i32* %21, align 4
  br label %550

550:                                              ; preds = %549, %548
  br label %606

551:                                              ; preds = %526
  %552 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %553 = load i32, i32* %19, align 4
  %554 = load i32, i32* %20, align 4
  %555 = add nsw i32 %553, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %552, i64 %556
  %558 = load %struct.TYPE_19__*, %struct.TYPE_19__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = call i64 @xmlXPathIsNaN(i64 %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %551
  store i32 1, i32* %21, align 4
  br label %605

564:                                              ; preds = %551
  %565 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %566 = load i32, i32* %19, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %565, i64 %567
  %569 = load %struct.TYPE_19__*, %struct.TYPE_19__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %573 = load i32, i32* %19, align 4
  %574 = load i32, i32* %20, align 4
  %575 = add nsw i32 %573, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %572, i64 %576
  %578 = load %struct.TYPE_19__*, %struct.TYPE_19__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = icmp eq i64 %571, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %564
  store i32 0, i32* %21, align 4
  br label %604

583:                                              ; preds = %564
  %584 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %585 = load i32, i32* %19, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %584, i64 %586
  %588 = load %struct.TYPE_19__*, %struct.TYPE_19__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %592 = load i32, i32* %19, align 4
  %593 = load i32, i32* %20, align 4
  %594 = add nsw i32 %592, %593
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %591, i64 %595
  %597 = load %struct.TYPE_19__*, %struct.TYPE_19__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = icmp sgt i64 %590, %599
  br i1 %600, label %601, label %602

601:                                              ; preds = %583
  store i32 1, i32* %21, align 4
  br label %603

602:                                              ; preds = %583
  store i32 -1, i32* %21, align 4
  br label %603

603:                                              ; preds = %602, %601
  br label %604

604:                                              ; preds = %603, %582
  br label %605

605:                                              ; preds = %604, %563
  br label %606

606:                                              ; preds = %605, %550
  br label %654

607:                                              ; preds = %523
  %608 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %609 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %608, i32 0, i32 4
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %635

612:                                              ; preds = %607
  %613 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %614 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %613, i32 0, i32 4
  %615 = load i64, i64* %614, align 8
  %616 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %617 = load i32, i32* %19, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %616, i64 %618
  %620 = load %struct.TYPE_19__*, %struct.TYPE_19__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %620, i32 0, i32 2
  %622 = load i64, i64* %621, align 8
  %623 = inttoptr i64 %622 to i32*
  %624 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %625 = load i32, i32* %19, align 4
  %626 = load i32, i32* %20, align 4
  %627 = add nsw i32 %625, %626
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %624, i64 %628
  %630 = load %struct.TYPE_19__*, %struct.TYPE_19__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %630, i32 0, i32 2
  %632 = load i64, i64* %631, align 8
  %633 = inttoptr i64 %632 to i32*
  %634 = call i32 @xsltLocaleStrcmp(i64 %615, i32* %623, i32* %633)
  store i32 %634, i32* %21, align 4
  br label %653

635:                                              ; preds = %607
  %636 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %637 = load i32, i32* %19, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %636, i64 %638
  %640 = load %struct.TYPE_19__*, %struct.TYPE_19__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %640, i32 0, i32 2
  %642 = load i64, i64* %641, align 8
  %643 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %644 = load i32, i32* %19, align 4
  %645 = load i32, i32* %20, align 4
  %646 = add nsw i32 %644, %645
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %643, i64 %647
  %649 = load %struct.TYPE_19__*, %struct.TYPE_19__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %649, i32 0, i32 2
  %651 = load i64, i64* %650, align 8
  %652 = call i32 @xmlStrcmp(i64 %642, i64 %651)
  store i32 %652, i32* %21, align 4
  br label %653

653:                                              ; preds = %635, %612
  br label %654

654:                                              ; preds = %653, %606
  %655 = load i32, i32* %15, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %660

657:                                              ; preds = %654
  %658 = load i32, i32* %21, align 4
  %659 = sub nsw i32 0, %658
  store i32 %659, i32* %21, align 4
  br label %660

660:                                              ; preds = %657, %654
  br label %661

661:                                              ; preds = %660, %522
  br label %662

662:                                              ; preds = %661, %512
  %663 = load i32, i32* %21, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %666

665:                                              ; preds = %662
  br label %669

666:                                              ; preds = %662
  %667 = load i32, i32* %22, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %22, align 4
  br label %441

669:                                              ; preds = %665, %494, %463, %452, %441
  br label %670

670:                                              ; preds = %669, %437
  %671 = load i32, i32* %21, align 4
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %692

673:                                              ; preds = %670
  %674 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %675 = load i32, i32* %19, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %674, i64 %676
  %678 = load %struct.TYPE_19__*, %struct.TYPE_19__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %678, i32 0, i32 1
  %680 = load i64, i64* %679, align 8
  %681 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %682 = load i32, i32* %19, align 4
  %683 = load i32, i32* %20, align 4
  %684 = add nsw i32 %682, %683
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %681, i64 %685
  %687 = load %struct.TYPE_19__*, %struct.TYPE_19__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = icmp sgt i64 %680, %689
  %691 = zext i1 %690 to i32
  store i32 %691, i32* %21, align 4
  br label %692

692:                                              ; preds = %673, %670
  %693 = load i32, i32* %21, align 4
  %694 = icmp sgt i32 %693, 0
  br i1 %694, label %695, label %803

695:                                              ; preds = %692
  %696 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %697 = load i32, i32* %19, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %696, i64 %698
  %700 = load %struct.TYPE_19__*, %struct.TYPE_19__** %699, align 8
  store %struct.TYPE_19__* %700, %struct.TYPE_19__** %24, align 8
  %701 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %702 = load i32, i32* %19, align 4
  %703 = load i32, i32* %20, align 4
  %704 = add nsw i32 %702, %703
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %701, i64 %705
  %707 = load %struct.TYPE_19__*, %struct.TYPE_19__** %706, align 8
  %708 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %709 = load i32, i32* %19, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %708, i64 %710
  store %struct.TYPE_19__* %707, %struct.TYPE_19__** %711, align 8
  %712 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %713 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %714 = load i32, i32* %19, align 4
  %715 = load i32, i32* %20, align 4
  %716 = add nsw i32 %714, %715
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %713, i64 %717
  store %struct.TYPE_19__* %712, %struct.TYPE_19__** %718, align 8
  %719 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %720 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %719, i32 0, i32 1
  %721 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %720, align 8
  %722 = load i32, i32* %19, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %721, i64 %723
  %725 = load %struct.TYPE_21__*, %struct.TYPE_21__** %724, align 8
  store %struct.TYPE_21__* %725, %struct.TYPE_21__** %23, align 8
  %726 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %727 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %726, i32 0, i32 1
  %728 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %727, align 8
  %729 = load i32, i32* %19, align 4
  %730 = load i32, i32* %20, align 4
  %731 = add nsw i32 %729, %730
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %728, i64 %732
  %734 = load %struct.TYPE_21__*, %struct.TYPE_21__** %733, align 8
  %735 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %736 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %735, i32 0, i32 1
  %737 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %736, align 8
  %738 = load i32, i32* %19, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %737, i64 %739
  store %struct.TYPE_21__* %734, %struct.TYPE_21__** %740, align 8
  %741 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %742 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %743 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %742, i32 0, i32 1
  %744 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %743, align 8
  %745 = load i32, i32* %19, align 4
  %746 = load i32, i32* %20, align 4
  %747 = add nsw i32 %745, %746
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %744, i64 %748
  store %struct.TYPE_21__* %741, %struct.TYPE_21__** %749, align 8
  store i32 1, i32* %22, align 4
  br label %750

750:                                              ; preds = %769, %695
  %751 = load i32, i32* %22, align 4
  %752 = load i32, i32* %6, align 4
  %753 = icmp slt i32 %751, %752
  br i1 %753, label %754, label %799

754:                                              ; preds = %750
  %755 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %756 = load i32, i32* %22, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %755, i64 %757
  %759 = load %struct.TYPE_21__*, %struct.TYPE_21__** %758, align 8
  %760 = icmp eq %struct.TYPE_21__* %759, null
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  br label %799

762:                                              ; preds = %754
  %763 = load i32, i32* %22, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %764
  %766 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %765, align 8
  %767 = icmp eq %struct.TYPE_19__** %766, null
  br i1 %767, label %768, label %769

768:                                              ; preds = %762
  br label %799

769:                                              ; preds = %762
  %770 = load i32, i32* %22, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %771
  %773 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %772, align 8
  store %struct.TYPE_19__** %773, %struct.TYPE_19__*** %11, align 8
  %774 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %775 = load i32, i32* %19, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %774, i64 %776
  %778 = load %struct.TYPE_19__*, %struct.TYPE_19__** %777, align 8
  store %struct.TYPE_19__* %778, %struct.TYPE_19__** %24, align 8
  %779 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %780 = load i32, i32* %19, align 4
  %781 = load i32, i32* %20, align 4
  %782 = add nsw i32 %780, %781
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %779, i64 %783
  %785 = load %struct.TYPE_19__*, %struct.TYPE_19__** %784, align 8
  %786 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %787 = load i32, i32* %19, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %786, i64 %788
  store %struct.TYPE_19__* %785, %struct.TYPE_19__** %789, align 8
  %790 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %791 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %792 = load i32, i32* %19, align 4
  %793 = load i32, i32* %20, align 4
  %794 = add nsw i32 %792, %793
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %791, i64 %795
  store %struct.TYPE_19__* %790, %struct.TYPE_19__** %796, align 8
  %797 = load i32, i32* %22, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %22, align 4
  br label %750

799:                                              ; preds = %768, %761, %750
  %800 = load i32, i32* %20, align 4
  %801 = load i32, i32* %19, align 4
  %802 = sub nsw i32 %801, %800
  store i32 %802, i32* %19, align 4
  br label %804

803:                                              ; preds = %692
  br label %805

804:                                              ; preds = %799
  br label %288

805:                                              ; preds = %803, %288
  br label %806

806:                                              ; preds = %805, %286
  %807 = load i32, i32* %18, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %18, align 4
  br label %272

809:                                              ; preds = %272
  br label %810

810:                                              ; preds = %809
  %811 = load i32, i32* %20, align 4
  %812 = sdiv i32 %811, 2
  store i32 %812, i32* %20, align 4
  br label %267

813:                                              ; preds = %267
  store i32 0, i32* %19, align 4
  br label %814

814:                                              ; preds = %886, %813
  %815 = load i32, i32* %19, align 4
  %816 = load i32, i32* %6, align 4
  %817 = icmp slt i32 %815, %816
  br i1 %817, label %818, label %889

818:                                              ; preds = %814
  %819 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %820 = load i32, i32* %19, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %819, i64 %821
  %823 = load %struct.TYPE_21__*, %struct.TYPE_21__** %822, align 8
  %824 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %823, i32 0, i32 0
  %825 = load %struct.TYPE_18__*, %struct.TYPE_18__** %824, align 8
  store %struct.TYPE_18__* %825, %struct.TYPE_18__** %7, align 8
  %826 = load i32, i32* %19, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, i32* %34, i64 %827
  %829 = load i32, i32* %828, align 4
  %830 = icmp eq i32 %829, 1
  br i1 %830, label %831, label %840

831:                                              ; preds = %818
  %832 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %833 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %832, i32 0, i32 6
  %834 = load i32*, i32** %833, align 8
  %835 = bitcast i32* %834 to i8*
  %836 = bitcast i8* %835 to %struct.TYPE_19__**
  %837 = call i32 @xmlFree(%struct.TYPE_19__** %836)
  %838 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %839 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %838, i32 0, i32 6
  store i32* null, i32** %839, align 8
  br label %840

840:                                              ; preds = %831, %818
  %841 = load i32, i32* %19, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i32, i32* %37, i64 %842
  %844 = load i32, i32* %843, align 4
  %845 = icmp eq i32 %844, 1
  br i1 %845, label %846, label %855

846:                                              ; preds = %840
  %847 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %848 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %847, i32 0, i32 5
  %849 = load i32*, i32** %848, align 8
  %850 = bitcast i32* %849 to i8*
  %851 = bitcast i8* %850 to %struct.TYPE_19__**
  %852 = call i32 @xmlFree(%struct.TYPE_19__** %851)
  %853 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %854 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %853, i32 0, i32 5
  store i32* null, i32** %854, align 8
  br label %855

855:                                              ; preds = %846, %840
  %856 = load i32, i32* %19, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %857
  %859 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %858, align 8
  %860 = icmp ne %struct.TYPE_19__** %859, null
  br i1 %860, label %861, label %885

861:                                              ; preds = %855
  store i32 0, i32* %18, align 4
  br label %862

862:                                              ; preds = %876, %861
  %863 = load i32, i32* %18, align 4
  %864 = load i32, i32* %17, align 4
  %865 = icmp slt i32 %863, %864
  br i1 %865, label %866, label %879

866:                                              ; preds = %862
  %867 = load i32, i32* %19, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %868
  %870 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %869, align 8
  %871 = load i32, i32* %18, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %870, i64 %872
  %874 = load %struct.TYPE_19__*, %struct.TYPE_19__** %873, align 8
  %875 = call i32 @xmlXPathFreeObject(%struct.TYPE_19__* %874)
  br label %876

876:                                              ; preds = %866
  %877 = load i32, i32* %18, align 4
  %878 = add nsw i32 %877, 1
  store i32 %878, i32* %18, align 4
  br label %862

879:                                              ; preds = %862
  %880 = load i32, i32* %19, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %31, i64 %881
  %883 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %882, align 8
  %884 = call i32 @xmlFree(%struct.TYPE_19__** %883)
  br label %885

885:                                              ; preds = %879, %855
  br label %886

886:                                              ; preds = %885
  %887 = load i32, i32* %19, align 4
  %888 = add nsw i32 %887, 1
  store i32 %888, i32* %19, align 4
  br label %814

889:                                              ; preds = %814
  store i32 0, i32* %27, align 4
  br label %890

890:                                              ; preds = %889, %263, %77, %65, %56, %50
  %891 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %891)
  %892 = load i32, i32* %27, align 4
  switch i32 %892, label %894 [
    i32 0, label %893
    i32 1, label %893
  ]

893:                                              ; preds = %890, %890
  ret void

894:                                              ; preds = %890
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xsltEvalAttrValueTemplate(%struct.TYPE_17__*, %struct.TYPE_21__*, i32*, i32) #2

declare dso_local i64 @xmlStrEqual(i32*, i32*) #2

declare dso_local i32 @xsltTransformError(%struct.TYPE_17__*, i32*, %struct.TYPE_21__*, i8*, i32*) #2

declare dso_local %struct.TYPE_19__** @xsltComputeSortResult(%struct.TYPE_17__*, %struct.TYPE_21__*) #2

declare dso_local i64 @xmlXPathIsNaN(i64) #2

declare dso_local i32 @xsltLocaleStrcmp(i64, i32*, i32*) #2

declare dso_local i32 @xmlStrcmp(i64, i64) #2

declare dso_local i32 @xmlFree(%struct.TYPE_19__**) #2

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_19__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
