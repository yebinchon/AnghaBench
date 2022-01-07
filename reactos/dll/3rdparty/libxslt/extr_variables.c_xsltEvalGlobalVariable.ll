; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalGlobalVariable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalGlobalVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_28__*, i32*, i32*, i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32*, i32*, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_25__ = type { i64, i32*, i32*, i8*, %struct.TYPE_29__*, i32, i32*, i32, i8* }
%struct.TYPE_29__ = type { i32, i32, i32, i32*, i32*, i8* }

@xsltComputingGlobalVarMarker = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Evaluating global variable %s failed\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@XSLT_RVT_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XSLT_DEBUG_NONE = common dso_local global i64 0, align 8
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_27__*, %struct.TYPE_25__*)* @xsltEvalGlobalVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @xsltEvalGlobalVariable(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = icmp eq %struct.TYPE_25__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %26 = icmp eq %struct.TYPE_27__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %2
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %296

28:                                               ; preds = %24
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %3, align 8
  br label %296

37:                                               ; preds = %28
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %9, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** @xsltComputingGlobalVarMarker, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %204

55:                                               ; preds = %37
  store i32* null, i32** %10, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %17, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %60 = icmp ne %struct.TYPE_26__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  br label %75

70:                                               ; preds = %61, %55
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = call i32* @xmlXPathCompile(i32* %73)
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32*, i32** %10, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %278

79:                                               ; preds = %75
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %81 = icmp ne %struct.TYPE_26__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  br label %91

88:                                               ; preds = %79
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %11, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %12, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %13, align 4
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %16, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %15, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 8
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %125 = icmp ne %struct.TYPE_26__* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %91
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 4
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %142

137:                                              ; preds = %91
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 4
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %126
  %143 = load i32*, i32** %10, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %145 = call %struct.TYPE_28__* @xmlXPathCompiledEval(i32* %143, %struct.TYPE_29__* %144)
  store %struct.TYPE_28__* %145, %struct.TYPE_28__** %6, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 3
  store i32* %146, i32** %148, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 4
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %165 = icmp eq %struct.TYPE_26__* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %142
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %166, %142
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @xmlXPathFreeCompExpr(i32* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %176 = icmp eq %struct.TYPE_28__* %175, null
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %179 = icmp eq %struct.TYPE_26__* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @xsltTransformError(%struct.TYPE_25__* %181, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %184)
  br label %195

186:                                              ; preds = %177
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @xsltTransformError(%struct.TYPE_25__* %187, i32* null, i32* %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %193)
  br label %195

195:                                              ; preds = %186, %180
  %196 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  br label %278

199:                                              ; preds = %174
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %202 = load i32, i32* @XSLT_RVT_GLOBAL, align 4
  %203 = call i32 @xsltFlagRVTs(%struct.TYPE_25__* %200, %struct.TYPE_28__* %201, i32 %202)
  br label %277

204:                                              ; preds = %37
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call %struct.TYPE_28__* @xmlXPathNewCString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* %210, %struct.TYPE_28__** %6, align 8
  br label %276

211:                                              ; preds = %204
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %213 = call i32* @xsltCreateRVT(%struct.TYPE_25__* %212)
  store i32* %213, i32** %18, align 8
  %214 = load i32*, i32** %18, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %278

217:                                              ; preds = %211
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = call i32 @xsltRegisterPersistRVT(%struct.TYPE_25__* %218, i32* %219)
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %20, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %19, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %21, align 8
  %232 = load i32*, i32** %18, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  store i32* %232, i32** %234, align 8
  %235 = load i32*, i32** %18, align 8
  %236 = bitcast i32* %235 to i8*
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 3
  store i8* %236, i8** %238, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 3
  store i32* %241, i32** %245, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @xsltApplyOneTemplate(%struct.TYPE_25__* %246, i32 %249, i32* %252, i32* null, i32* null)
  %254 = load i32*, i32** %21, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 3
  store i32* %254, i32** %258, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 3
  store i8* %259, i8** %261, align 8
  %262 = load i32*, i32** %20, align 8
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 2
  store i32* %262, i32** %264, align 8
  %265 = load i32*, i32** %18, align 8
  %266 = bitcast i32* %265 to i8*
  %267 = call %struct.TYPE_28__* @xmlXPathNewValueTree(i8* %266)
  store %struct.TYPE_28__* %267, %struct.TYPE_28__** %6, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %269 = icmp eq %struct.TYPE_28__* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %217
  %271 = call %struct.TYPE_28__* @xmlXPathNewCString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* %271, %struct.TYPE_28__** %6, align 8
  br label %275

272:                                              ; preds = %217
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %272, %270
  br label %276

276:                                              ; preds = %275, %209
  br label %277

277:                                              ; preds = %276, %199
  br label %278

278:                                              ; preds = %277, %216, %195, %78
  %279 = load i32*, i32** %8, align 8
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 2
  store i32* %279, i32** %281, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = bitcast i8* %282 to i32*
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  store i32* %283, i32** %285, align 8
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %287 = icmp ne %struct.TYPE_28__* %286, null
  br i1 %287, label %288, label %294

288:                                              ; preds = %278
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  store %struct.TYPE_28__* %289, %struct.TYPE_28__** %291, align 8
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  store i32 1, i32* %293, align 8
  br label %294

294:                                              ; preds = %288, %278
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %295, %struct.TYPE_28__** %3, align 8
  br label %296

296:                                              ; preds = %294, %33, %27
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  ret %struct.TYPE_28__* %297
}

declare dso_local i32* @xmlXPathCompile(i32*) #1

declare dso_local %struct.TYPE_28__* @xmlXPathCompiledEval(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @xmlXPathFreeCompExpr(i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_25__*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @xsltFlagRVTs(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @xmlXPathNewCString(i8*) #1

declare dso_local i32* @xsltCreateRVT(%struct.TYPE_25__*) #1

declare dso_local i32 @xsltRegisterPersistRVT(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @xsltApplyOneTemplate(%struct.TYPE_25__*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_28__* @xmlXPathNewValueTree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
