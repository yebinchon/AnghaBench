; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltProcessUserParamInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltProcessUserParamInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_23__**, i32, i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i32, i32*, i32*, i8*, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"user param : malformed parameter name : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"user param : no namespace bound to prefix %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Global parameter %s already defined\0A\00", align 1
@XSLT_FUNC_VARIABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Evaluating user parameter %s failed\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i8*, i32)* @xsltProcessUserParamInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltProcessUserParamInternal(%struct.TYPE_19__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_23__**, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = icmp eq %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %353

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %353

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %353

38:                                               ; preds = %34
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %10, align 8
  store i8* null, i8** %12, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 123
  br i1 %46, label %47, label %101

47:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 125
  br label %64

64:                                               ; preds = %56, %48
  %65 = phi i1 [ false, %48 ], [ %63, %56 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  br label %48

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @xsltTransformError(%struct.TYPE_19__* %78, %struct.TYPE_20__* %79, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %100

82:                                               ; preds = %69
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i8* @xmlDictLookup(i32 %85, i8* %87, i32 %89)
  store i8* %90, i8** %12, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = call i8* @xmlDictLookup(i32 %93, i8* %98, i32 -1)
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %82, %77
  br label %132

101:                                              ; preds = %38
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @xsltSplitQName(i32 %104, i8* %105, i8** %11)
  store i8* %106, i8** %7, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %101
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @xmlDocGetRootElement(i32 %115)
  %117 = load i8*, i8** %11, align 8
  %118 = call %struct.TYPE_23__* @xmlSearchNs(i32 %112, i32 %116, i8* %117)
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %19, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %120 = icmp eq %struct.TYPE_23__* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @xsltTransformError(%struct.TYPE_19__* %122, %struct.TYPE_20__* %123, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  store i8* null, i8** %12, align 8
  br label %130

126:                                              ; preds = %109
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %101
  br label %132

132:                                              ; preds = %131, %100
  %133 = load i8*, i8** %7, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  br label %353

136:                                              ; preds = %132
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i8* @xmlHashLookup2(i32* %139, i8* %140, i8* %141)
  store i8* %142, i8** %17, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @xsltTransformError(%struct.TYPE_19__* %146, %struct.TYPE_20__* %147, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %145, %136
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = call i32* @xmlHashCreate(i32 20)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  store i32* %156, i32** %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  br label %160

160:                                              ; preds = %204, %159
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %162 = icmp ne %struct.TYPE_20__* %161, null
  br i1 %162, label %163, label %207

163:                                              ; preds = %160
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %15, align 8
  br label %169

169:                                              ; preds = %200, %163
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %171 = icmp ne %struct.TYPE_21__* %170, null
  br i1 %171, label %172, label %204

172:                                              ; preds = %169
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = icmp ne %struct.TYPE_18__* %175, null
  br i1 %176, label %177, label %200

177:                                              ; preds = %172
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @XSLT_FUNC_VARIABLE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %177
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i64 @xmlStrEqual(i8* %188, i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = call i64 @xmlStrEqual(i8* %195, i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %353

200:                                              ; preds = %192, %185, %177, %172
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  store %struct.TYPE_21__* %203, %struct.TYPE_21__** %15, align 8
  br label %169

204:                                              ; preds = %169
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %206 = call %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__* %205)
  store %struct.TYPE_20__* %206, %struct.TYPE_20__** %10, align 8
  br label %160

207:                                              ; preds = %160
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  store %struct.TYPE_20__* %210, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  store i32* null, i32** %14, align 8
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %293

213:                                              ; preds = %207
  %214 = load i8*, i8** %8, align 8
  %215 = call i32* @xmlXPathCompile(i8* %214)
  store i32* %215, i32** %13, align 8
  %216 = load i32*, i32** %13, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %281

218:                                              ; preds = %213
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %220, align 8
  store %struct.TYPE_22__* %221, %struct.TYPE_22__** %26, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %20, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %21, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %22, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %23, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %235, align 8
  store %struct.TYPE_23__** %236, %struct.TYPE_23__*** %25, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %24, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  store i32 1, i32* %253, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 3
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %255, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 2
  store i32 0, i32* %257, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %260 = call i32* @xmlXPathCompiledEval(i32* %258, %struct.TYPE_22__* %259)
  store i32* %260, i32** %14, align 8
  %261 = load i32, i32* %20, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* %23, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %22, align 4
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %25, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  store %struct.TYPE_23__** %273, %struct.TYPE_23__*** %275, align 8
  %276 = load i32, i32* %24, align 4
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load i32*, i32** %13, align 8
  %280 = call i32 @xmlXPathFreeCompExpr(i32* %279)
  br label %281

281:                                              ; preds = %218, %213
  %282 = load i32*, i32** %14, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %287 = load i8*, i8** %7, align 8
  %288 = call i32 @xsltTransformError(%struct.TYPE_19__* %285, %struct.TYPE_20__* %286, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %287)
  %289 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  store i32 -1, i32* %5, align 4
  br label %353

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %292, %207
  %294 = call %struct.TYPE_21__* @xsltNewStackElem(i32* null)
  store %struct.TYPE_21__* %294, %struct.TYPE_21__** %15, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %296 = icmp ne %struct.TYPE_21__* %295, null
  br i1 %296, label %297, label %335

297:                                              ; preds = %293
  %298 = load i8*, i8** %7, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i8*, i8** %8, align 8
  %305 = call i8* @xmlDictLookup(i32 %303, i8* %304, i32 -1)
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 5
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** %12, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %297
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i8*, i8** %12, align 8
  %315 = call i8* @xmlDictLookup(i32 %313, i8* %314, i32 -1)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %310, %297
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 4
  store i32* null, i32** %320, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 2
  store i32 1, i32* %322, align 8
  %323 = load i32, i32* %9, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load i8*, i8** %8, align 8
  %327 = call i32* @xmlXPathNewString(i8* %326)
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 3
  store i32* %327, i32** %329, align 8
  br label %334

330:                                              ; preds = %318
  %331 = load i32*, i32** %14, align 8
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 3
  store i32* %331, i32** %333, align 8
  br label %334

334:                                              ; preds = %330, %325
  br label %335

335:                                              ; preds = %334, %293
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i8*, i8** %7, align 8
  %340 = load i8*, i8** %12, align 8
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %342 = call i32 @xmlHashAddEntry2(i32* %338, i8* %339, i8* %340, %struct.TYPE_21__* %341)
  store i32 %342, i32* %16, align 4
  %343 = load i32, i32* %16, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %335
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %347 = call i32 @xsltFreeStackElem(%struct.TYPE_21__* %346)
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %350 = load i8*, i8** %7, align 8
  %351 = call i32 @xsltTransformError(%struct.TYPE_19__* %348, %struct.TYPE_20__* %349, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %350)
  br label %352

352:                                              ; preds = %345, %335
  store i32 0, i32* %5, align 4
  br label %353

353:                                              ; preds = %352, %284, %199, %135, %37, %33, %29
  %354 = load i32, i32* %5, align 4
  ret i32 %354
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i8*, i8*) #1

declare dso_local i8* @xmlDictLookup(i32, i8*, i32) #1

declare dso_local i8* @xsltSplitQName(i32, i8*, i8**) #1

declare dso_local %struct.TYPE_23__* @xmlSearchNs(i32, i32, i8*) #1

declare dso_local i32 @xmlDocGetRootElement(i32) #1

declare dso_local i8* @xmlHashLookup2(i32*, i8*, i8*) #1

declare dso_local i32* @xmlHashCreate(i32) #1

declare dso_local i64 @xmlStrEqual(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__*) #1

declare dso_local i32* @xmlXPathCompile(i8*) #1

declare dso_local i32* @xmlXPathCompiledEval(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @xmlXPathFreeCompExpr(i32*) #1

declare dso_local %struct.TYPE_21__* @xsltNewStackElem(i32*) #1

declare dso_local i32* @xmlXPathNewString(i8*) #1

declare dso_local i32 @xmlHashAddEntry2(i32*, i8*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @xsltFreeStackElem(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
