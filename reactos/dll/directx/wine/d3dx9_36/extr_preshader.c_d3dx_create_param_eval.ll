; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_create_param_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_create_param_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_param_eval = type { i32, %struct.TYPE_8__, %struct.TYPE_10__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.d3dx9_base_effect = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"base_effect %p, byte_code %p, byte_code_size %u, type %u, peval_out %p.\0A\00", align 1
@D3D_OK = common dso_local global %struct.d3dx_param_eval* null, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global %struct.d3dx_param_eval* null, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@shad_regset2table = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid shader signature %#x.\0A\00", align 1
@D3DXERR_INVALIDDATA = common dso_local global %struct.d3dx_param_eval* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Shader version %#x.\0A\00", align 1
@FOURCC_PRES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"No preshader found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Failed parsing preshader, byte code for analysis follows.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Could not get shader constant table, hr %#x.\0A\00", align 1
@PRES_REGTAB_FIRST_SHADER = common dso_local global i32 0, align 4
@PRES_REGTAB_COUNT = common dso_local global i32 0, align 4
@d3dx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"// Shader registers:\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Created parameter evaluator %p.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Error creating parameter evaluator.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.d3dx_param_eval* @d3dx_create_param_eval(%struct.d3dx9_base_effect* %0, i8* %1, i32 %2, i32 %3, %struct.d3dx_param_eval** %4, i32* %5, i8** %6, i32 %7) #0 {
  %9 = alloca %struct.d3dx_param_eval*, align 8
  %10 = alloca %struct.d3dx9_base_effect*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.d3dx_param_eval**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.d3dx_param_eval*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.d3dx_param_eval*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.d3dx_param_eval** %4, %struct.d3dx_param_eval*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %20, align 8
  %26 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.d3dx_param_eval**, %struct.d3dx_param_eval*** %14, align 8
  %31 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.d3dx9_base_effect* %26, i8* %27, i32 %28, i32 %29, %struct.d3dx_param_eval** %30)
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %23, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i32, i32* %23, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %8
  %42 = load %struct.d3dx_param_eval**, %struct.d3dx_param_eval*** %14, align 8
  store %struct.d3dx_param_eval* null, %struct.d3dx_param_eval** %42, align 8
  %43 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** @D3D_OK, align 8
  store %struct.d3dx_param_eval* %43, %struct.d3dx_param_eval** %9, align 8
  br label %205

44:                                               ; preds = %38
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %47 = call %struct.d3dx_param_eval* @HeapAlloc(i32 %45, i32 %46, i32 24)
  store %struct.d3dx_param_eval* %47, %struct.d3dx_param_eval** %18, align 8
  %48 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %49 = icmp ne %struct.d3dx_param_eval* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** @E_OUTOFMEMORY, align 8
  store %struct.d3dx_param_eval* %51, %struct.d3dx_param_eval** %25, align 8
  br label %191

52:                                               ; preds = %44
  %53 = load i32*, i32** %15, align 8
  %54 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %55 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %58 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  switch i32 %59, label %62 [
    i32 128, label %60
    i32 129, label %60
  ]

60:                                               ; preds = %52, %52
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %22, align 8
  br label %64

62:                                               ; preds = %52
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %22, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i32, i32* @shad_regset2table, align 4
  %66 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %67 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %19, align 8
  %71 = load i64, i64* %22, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %64
  %74 = load i32*, i32** %19, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -131072
  %77 = icmp ne i32 %76, -131072
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** @D3DXERR_INVALIDDATA, align 8
  store %struct.d3dx_param_eval* %82, %struct.d3dx_param_eval** %25, align 8
  br label %191

83:                                               ; preds = %73
  %84 = load i32*, i32** %19, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 65535
  %87 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %19, align 8
  store i32* %88, i32** %20, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %23, align 4
  %92 = sub i32 %91, 1
  %93 = load i32, i32* @FOURCC_PRES, align 4
  %94 = call i32* @find_bytecode_comment(i32* %90, i32 %92, i32 %93, i32* %24)
  store i32* %94, i32** %19, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %83
  %98 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %83
  br label %102

100:                                              ; preds = %64
  %101 = load i32, i32* %23, align 4
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i32*, i32** %19, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %107 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %106, i32 0, i32 2
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %24, align 4
  %110 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %10, align 8
  %111 = call %struct.d3dx_param_eval* @parse_preshader(%struct.TYPE_10__* %107, i32* %108, i32 %109, %struct.d3dx9_base_effect* %110)
  store %struct.d3dx_param_eval* %111, %struct.d3dx_param_eval** %25, align 8
  %112 = call i64 @FAILED(%struct.d3dx_param_eval* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @dump_bytecode(i8* %116, i32 %117)
  br label %191

119:                                              ; preds = %105, %102
  %120 = load i64, i64* %22, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i32*, i32** %20, align 8
  %124 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %125 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %124, i32 0, i32 1
  %126 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %10, align 8
  %127 = load i8**, i8*** %16, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %130 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %129, i32 0, i32 2
  %131 = call %struct.d3dx_param_eval* @get_constants_desc(i32* %123, %struct.TYPE_8__* %125, %struct.d3dx9_base_effect* %126, i8** %127, i32 %128, %struct.TYPE_10__* %130)
  store %struct.d3dx_param_eval* %131, %struct.d3dx_param_eval** %25, align 8
  %132 = call i64 @FAILED(%struct.d3dx_param_eval* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %25, align 8
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), %struct.d3dx_param_eval* %135)
  br label %191

137:                                              ; preds = %122
  %138 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %139 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %144 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %143, i32 0, i32 1
  %145 = call i32 @update_table_sizes_consts(i32 %142, %struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %137, %119
  %147 = load i32, i32* @PRES_REGTAB_FIRST_SHADER, align 4
  store i32 %147, i32* %21, align 4
  br label %148

148:                                              ; preds = %162, %146
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* @PRES_REGTAB_COUNT, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %154 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %21, align 4
  %157 = call %struct.d3dx_param_eval* @regstore_alloc_table(%struct.TYPE_9__* %155, i32 %156)
  store %struct.d3dx_param_eval* %157, %struct.d3dx_param_eval** %25, align 8
  %158 = call i64 @FAILED(%struct.d3dx_param_eval* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %191

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %21, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %21, align 4
  br label %148

165:                                              ; preds = %148
  %166 = load i32, i32* @d3dx, align 4
  %167 = call i64 @TRACE_ON(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %165
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @dump_bytecode(i8* %170, i32 %171)
  %173 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %174 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %173, i32 0, i32 2
  %175 = call i32 @dump_preshader(%struct.TYPE_10__* %174)
  %176 = load i64, i64* %22, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %181 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %180, i32 0, i32 1
  %182 = call i32 @dump_registers(%struct.TYPE_8__* %181)
  br label %183

183:                                              ; preds = %178, %169
  br label %184

184:                                              ; preds = %183, %165
  %185 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %186 = load %struct.d3dx_param_eval**, %struct.d3dx_param_eval*** %14, align 8
  store %struct.d3dx_param_eval* %185, %struct.d3dx_param_eval** %186, align 8
  %187 = load %struct.d3dx_param_eval**, %struct.d3dx_param_eval*** %14, align 8
  %188 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %187, align 8
  %189 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %struct.d3dx_param_eval* %188)
  %190 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** @D3D_OK, align 8
  store %struct.d3dx_param_eval* %190, %struct.d3dx_param_eval** %9, align 8
  br label %205

191:                                              ; preds = %160, %134, %114, %78, %50
  %192 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %193 = load i32, i32* @d3dx, align 4
  %194 = call i64 @TRACE_ON(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i8*, i8** %11, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @dump_bytecode(i8* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %18, align 8
  %202 = call i32 @d3dx_free_param_eval(%struct.d3dx_param_eval* %201)
  %203 = load %struct.d3dx_param_eval**, %struct.d3dx_param_eval*** %14, align 8
  store %struct.d3dx_param_eval* null, %struct.d3dx_param_eval** %203, align 8
  %204 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %25, align 8
  store %struct.d3dx_param_eval* %204, %struct.d3dx_param_eval** %9, align 8
  br label %205

205:                                              ; preds = %200, %184, %41
  %206 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %9, align 8
  ret %struct.d3dx_param_eval* %206
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.d3dx_param_eval* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32* @find_bytecode_comment(i32*, i32, i32, i32*) #1

declare dso_local i64 @FAILED(%struct.d3dx_param_eval*) #1

declare dso_local %struct.d3dx_param_eval* @parse_preshader(%struct.TYPE_10__*, i32*, i32, %struct.d3dx9_base_effect*) #1

declare dso_local i32 @dump_bytecode(i8*, i32) #1

declare dso_local %struct.d3dx_param_eval* @get_constants_desc(i32*, %struct.TYPE_8__*, %struct.d3dx9_base_effect*, i8**, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @update_table_sizes_consts(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.d3dx_param_eval* @regstore_alloc_table(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_preshader(%struct.TYPE_10__*) #1

declare dso_local i32 @dump_registers(%struct.TYPE_8__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3dx_free_param_eval(%struct.d3dx_param_eval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
