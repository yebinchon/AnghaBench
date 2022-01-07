; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalVariable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_30__*, i8*, %struct.TYPE_27__*, %struct.TYPE_23__*, i32, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i32, i32, i32, i32*, %struct.TYPE_23__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i32*, %struct.TYPE_30__*, i32, i32, i32* }
%struct.TYPE_26__ = type { i32, i32*, i32*, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XSLT_VAR_IN_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to evaluate the expression of variable '%s'.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XSLT_RVT_LOCAL = common dso_local global i32 0, align 4
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_25__*, %struct.TYPE_27__*, %struct.TYPE_26__*)* @xsltEvalVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @xsltEvalVariable(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_30__*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = icmp eq %struct.TYPE_25__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = icmp eq %struct.TYPE_27__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %3
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %283

31:                                               ; preds = %27
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %203

39:                                               ; preds = %31
  store i32* null, i32** %11, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %41, align 8
  store %struct.TYPE_29__* %42, %struct.TYPE_29__** %18, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %19, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %47 = icmp ne %struct.TYPE_26__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %11, align 8
  br label %62

57:                                               ; preds = %48, %39
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @xmlXPathCompile(i32* %60)
  store i32* %61, i32** %11, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %283

66:                                               ; preds = %62
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  store %struct.TYPE_30__* %69, %struct.TYPE_30__** %12, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = bitcast %struct.TYPE_23__* %72 to i8*
  store i8* %73, i8** %13, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %14, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %17, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 4
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %90, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %66
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %102, align 8
  %104 = icmp ne %struct.TYPE_30__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %109, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 5
  store %struct.TYPE_30__* %110, %struct.TYPE_30__** %112, align 8
  br label %113

113:                                              ; preds = %105, %98, %66
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %115 = icmp ne %struct.TYPE_26__* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %132

127:                                              ; preds = %113
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 3
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %116
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 3
  store %struct.TYPE_27__* %133, %struct.TYPE_27__** %135, align 8
  %136 = load i32, i32* @XSLT_VAR_IN_SELECT, align 4
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %143 = call %struct.TYPE_28__* @xmlXPathCompiledEval(i32* %141, %struct.TYPE_29__* %142)
  store %struct.TYPE_28__* %143, %struct.TYPE_28__** %9, align 8
  %144 = load i32, i32* @XSLT_VAR_IN_SELECT, align 4
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 3
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %151, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 5
  store %struct.TYPE_30__* %152, %struct.TYPE_30__** %154, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = bitcast i8* %155 to %struct.TYPE_23__*
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 4
  store %struct.TYPE_23__* %156, %struct.TYPE_23__** %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %172 = icmp eq %struct.TYPE_26__* %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %132
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %173, %132
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @xmlXPathFreeCompExpr(i32* %179)
  br label %181

181:                                              ; preds = %178, %173
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %183 = icmp eq %struct.TYPE_28__* %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %187 = icmp ne %struct.TYPE_26__* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  br label %193

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i32* [ %191, %188 ], [ null, %192 ]
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @xsltTransformError(%struct.TYPE_25__* %185, i32* null, i32* %194, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %193, %181
  br label %277

203:                                              ; preds = %31
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call %struct.TYPE_28__* @xmlXPathNewCString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* %209, %struct.TYPE_28__** %9, align 8
  br label %276

210:                                              ; preds = %203
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %267

215:                                              ; preds = %210
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %217, align 8
  store %struct.TYPE_27__* %218, %struct.TYPE_27__** %23, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %220 = call %struct.TYPE_30__* @xsltCreateRVT(%struct.TYPE_25__* %219)
  store %struct.TYPE_30__* %220, %struct.TYPE_30__** %20, align 8
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %222 = icmp eq %struct.TYPE_30__* %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %278

224:                                              ; preds = %215
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  store %struct.TYPE_30__* %225, %struct.TYPE_30__** %227, align 8
  %228 = load i32, i32* @XSLT_RVT_LOCAL, align 4
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %232, align 8
  store %struct.TYPE_30__* %233, %struct.TYPE_30__** %22, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  store i8* %236, i8** %21, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 1
  store %struct.TYPE_30__* %237, %struct.TYPE_30__** %239, align 8
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %241 = bitcast %struct.TYPE_30__* %240 to i8*
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 3
  store %struct.TYPE_27__* %244, %struct.TYPE_27__** %246, align 8
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @xsltApplyOneTemplate(%struct.TYPE_25__* %247, %struct.TYPE_23__* %250, i32* %253, i32* null, i32* null)
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 3
  store %struct.TYPE_27__* %255, %struct.TYPE_27__** %257, align 8
  %258 = load i8*, i8** %21, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 1
  store %struct.TYPE_30__* %261, %struct.TYPE_30__** %263, align 8
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %265 = bitcast %struct.TYPE_30__* %264 to i8*
  %266 = call %struct.TYPE_28__* @xmlXPathNewValueTree(i8* %265)
  store %struct.TYPE_28__* %266, %struct.TYPE_28__** %9, align 8
  br label %267

267:                                              ; preds = %224, %210
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %269 = icmp eq %struct.TYPE_28__* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = call %struct.TYPE_28__* @xmlXPathNewCString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* %271, %struct.TYPE_28__** %9, align 8
  br label %275

272:                                              ; preds = %267
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %272, %270
  br label %276

276:                                              ; preds = %275, %208
  br label %277

277:                                              ; preds = %276, %202
  br label %278

278:                                              ; preds = %277, %223
  %279 = load i8*, i8** %10, align 8
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %282, %struct.TYPE_28__** %4, align 8
  br label %283

283:                                              ; preds = %278, %65, %30
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %284
}

declare dso_local i32* @xmlXPathCompile(i32*) #1

declare dso_local %struct.TYPE_28__* @xmlXPathCompiledEval(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @xmlXPathFreeCompExpr(i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_25__*, i32*, i32*, i8*, i32) #1

declare dso_local %struct.TYPE_28__* @xmlXPathNewCString(i8*) #1

declare dso_local %struct.TYPE_30__* @xsltCreateRVT(%struct.TYPE_25__*) #1

declare dso_local i32 @xsltApplyOneTemplate(%struct.TYPE_25__*, %struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_28__* @xmlXPathNewValueTree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
