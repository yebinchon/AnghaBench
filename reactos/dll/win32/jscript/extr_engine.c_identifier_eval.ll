; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_identifier_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_identifier_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_24__*, i64, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i32, i8*, i32, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_19__*, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@identifier_eval.argumentsW = internal constant [10 x i8] c"arguments\00", align 1
@EXPRVAL_STACK_REF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"returning ref %d for %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@fdexNameImplicit = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@SCRIPTINFO_IUNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GetItemInfo failed: %08x\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"object does not implement IDispatch\0A\00", align 1
@EXPRVAL_JSVAL = common dso_local global i32 0, align 4
@JS_E_UNDEFINED_VARIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, %struct.TYPE_26__*)* @identifier_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identifier_eval(%struct.TYPE_22__* %0, i8* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @debugstr_w(i8* %15)
  %17 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %127

22:                                               ; preds = %3
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %8, align 8
  br label %28

28:                                               ; preds = %122, %22
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = icmp ne %struct.TYPE_23__* %29, null
  br i1 %30, label %31, label %126

31:                                               ; preds = %28
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %36, label %88

36:                                               ; preds = %31
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call %struct.TYPE_25__* @lookup_local(i32* %42, i8* %43)
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %13, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %46 = icmp ne %struct.TYPE_25__* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %36
  %48 = load i32, i32* @EXPRVAL_STACK_REF, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @local_off(%struct.TYPE_19__* %53, i32 %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* @S_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %238

70:                                               ; preds = %36
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @wcscmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @identifier_eval.argumentsW, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @detach_variable_object(%struct.TYPE_22__* %75, %struct.TYPE_19__* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %238

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %31
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @fdexNameImplicit, align 4
  %99 = call i32 @jsdisp_get_id(i64 %96, i8* %97, i32 %98, i32* %10)
  store i32 %99, i32* %11, align 4
  br label %109

100:                                              ; preds = %88
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @fdexNameImplicit, align 4
  %108 = call i32 @disp_get_id(%struct.TYPE_22__* %101, i32 %104, i8* %105, i8* %106, i32 %107, i32* %10)
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %100, %93
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @SUCCEEDED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @exprval_set_disp_ref(%struct.TYPE_26__* %114, i32 %117, i32 %118)
  %120 = load i32, i32* @S_OK, align 4
  store i32 %120, i32* %4, align 4
  br label %238

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  store %struct.TYPE_23__* %125, %struct.TYPE_23__** %8, align 8
  br label %28

126:                                              ; preds = %28
  br label %127

127:                                              ; preds = %126, %3
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @jsdisp_get_id(i64 %130, i8* %131, i32 0, i32* %10)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @SUCCEEDED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %127
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @to_disp(i64 %140)
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @exprval_set_disp_ref(%struct.TYPE_26__* %137, i32 %141, i32 %142)
  %144 = load i32, i32* @S_OK, align 4
  store i32 %144, i32* %4, align 4
  br label %238

145:                                              ; preds = %127
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  store %struct.TYPE_24__* %148, %struct.TYPE_24__** %9, align 8
  br label %149

149:                                              ; preds = %221, %145
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %151 = icmp ne %struct.TYPE_24__* %150, null
  br i1 %151, label %152, label %225

152:                                              ; preds = %149
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %220

159:                                              ; preds = %152
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @wcscmp(i8* %162, i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %220, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %204, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %225

177:                                              ; preds = %171
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* @SCRIPTINFO_IUNKNOWN, align 4
  %183 = call i32 @IActiveScriptSite_GetItemInfo(i32 %180, i8* %181, i32 %182, i32** %14, i32* null)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @FAILED(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  br label %225

190:                                              ; preds = %177
  %191 = load i32*, i32** %14, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 2
  %194 = bitcast i32* %193 to i8**
  %195 = call i32 @IUnknown_QueryInterface(i32* %191, i32* @IID_IDispatch, i8** %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32*, i32** %14, align 8
  %197 = call i32 @IUnknown_Release(i32* %196)
  %198 = load i32, i32* %11, align 4
  %199 = call i64 @FAILED(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %225

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %166
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @IDispatch_AddRef(i32 %207)
  %209 = load i32, i32* @EXPRVAL_JSVAL, align 4
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @jsval_disp(i32 %214)
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* @S_OK, align 4
  store i32 %219, i32* %4, align 4
  br label %238

220:                                              ; preds = %159, %152
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  store %struct.TYPE_24__* %224, %struct.TYPE_24__** %9, align 8
  br label %149

225:                                              ; preds = %201, %187, %176, %149
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %229 = call i64 @lookup_global_members(%struct.TYPE_22__* %226, i8* %227, %struct.TYPE_26__* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* @S_OK, align 4
  store i32 %232, i32* %4, align 4
  br label %238

233:                                              ; preds = %225
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %235 = load i32, i32* @JS_E_UNDEFINED_VARIABLE, align 4
  %236 = call i32 @exprval_set_exception(%struct.TYPE_26__* %234, i32 %235)
  %237 = load i32, i32* @S_OK, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %233, %231, %204, %136, %113, %84, %47
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local %struct.TYPE_25__* @lookup_local(i32*, i8*) #1

declare dso_local i32 @local_off(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @wcscmp(i8*, i8*) #1

declare dso_local i32 @detach_variable_object(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_get_id(i64, i8*, i32, i32*) #1

declare dso_local i32 @disp_get_id(%struct.TYPE_22__*, i32, i8*, i8*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @exprval_set_disp_ref(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @to_disp(i64) #1

declare dso_local i32 @IActiveScriptSite_GetItemInfo(i32, i8*, i32, i32**, i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IDispatch_AddRef(i32) #1

declare dso_local i32 @jsval_disp(i32) #1

declare dso_local i64 @lookup_global_members(%struct.TYPE_22__*, i8*, %struct.TYPE_26__*) #1

declare dso_local i32 @exprval_set_exception(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
