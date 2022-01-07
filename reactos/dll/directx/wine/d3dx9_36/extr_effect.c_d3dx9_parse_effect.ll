; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32, i32*, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Parameter count: %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Technique count: %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Object count: %u.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@param_rb_compare = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to parse parameter %u.\0A\00", align 1
@param_set_top_level_param = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Parsing technique %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to parse technique %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"String count: %u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Resource count: %u.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"id: %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"parse resource %u.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to parse resource %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, i8*, i64, i32, i8**, i32)* @d3dx9_parse_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_effect(%struct.d3dx9_base_effect* %0, i8* %1, i64 %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.d3dx9_base_effect*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %14, align 8
  %24 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %25 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %24, i32 0, i32 0
  %26 = call i32 (i8**, ...) @read_dword(i8** %14, i32* %25)
  %27 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %28 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %33 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %32, i32 0, i32 1
  %34 = call i32 (i8**, ...) @read_dword(i8** %14, i32* %33)
  %35 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %36 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = call i32 @skip_dword_unknown(i8** %14, i32 1)
  %41 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %42 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %41, i32 0, i32 2
  %43 = call i32 (i8**, ...) @read_dword(i8** %14, i32* %42)
  %44 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %45 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %51 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %52 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 24, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @HeapAlloc(i32 %49, i32 %50, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_13__*
  %59 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %60 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %59, i32 0, i32 3
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %62 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %6
  %66 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %67, i64* %17, align 8
  br label %340

68:                                               ; preds = %6
  %69 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %70 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %69, i32 0, i32 8
  %71 = load i32, i32* @param_rb_compare, align 4
  %72 = call i32 @wine_rb_init(i32* %70, i32 %71)
  %73 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %74 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %156

77:                                               ; preds = %68
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %80 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %81 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 24, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @HeapAlloc(i32 %78, i32 %79, i32 %85)
  %87 = bitcast i8* %86 to %struct.TYPE_13__*
  %88 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %89 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %88, i32 0, i32 4
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %89, align 8
  %90 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %91 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %90, i32 0, i32 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = icmp ne %struct.TYPE_13__* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %77
  %95 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %96, i64* %17, align 8
  br label %340

97:                                               ; preds = %77
  store i64 0, i64* %18, align 8
  br label %98

98:                                               ; preds = %152, %97
  %99 = load i64, i64* %18, align 8
  %100 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %101 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %155

105:                                              ; preds = %98
  %106 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %107 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %106, i32 0, i32 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = load i64, i64* %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = call i32 @param_set_magic_number(i32* %111)
  %113 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %114 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %115 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %114, i32 0, i32 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i64, i64* %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %117
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %121 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %120, i32 0, i32 3
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = call i64 @d3dx9_parse_effect_parameter(%struct.d3dx9_base_effect* %113, %struct.TYPE_13__* %118, i8* %119, i8** %14, %struct.TYPE_13__* %122)
  store i64 %123, i64* %17, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* @D3D_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %105
  %128 = load i64, i64* %18, align 8
  %129 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  br label %340

130:                                              ; preds = %105
  %131 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %132 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %131, i32 0, i32 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = load i64, i64* %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* @param_set_top_level_param, align 4
  %138 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %139 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %138, i32 0, i32 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = load i64, i64* %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 %141
  %143 = call i32 @walk_parameter_tree(i32* %136, i32 %137, %struct.TYPE_13__* %142)
  %144 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %145 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %146 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %145, i32 0, i32 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = load i64, i64* %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = call i32 @add_param_to_tree(%struct.d3dx9_base_effect* %144, i32* %150, i32* null, i32 0, i32 0)
  br label %152

152:                                              ; preds = %130
  %153 = load i64, i64* %18, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %18, align 8
  br label %98

155:                                              ; preds = %98
  br label %156

156:                                              ; preds = %155, %68
  %157 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %158 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %214

161:                                              ; preds = %156
  %162 = call i32 (...) @GetProcessHeap()
  %163 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %164 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %165 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 24, %167
  %169 = trunc i64 %168 to i32
  %170 = call i8* @HeapAlloc(i32 %162, i32 %163, i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_13__*
  %172 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %173 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %172, i32 0, i32 5
  store %struct.TYPE_13__* %171, %struct.TYPE_13__** %173, align 8
  %174 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %175 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %174, i32 0, i32 5
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = icmp ne %struct.TYPE_13__* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %161
  %179 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %180, i64* %17, align 8
  br label %340

181:                                              ; preds = %161
  store i64 0, i64* %18, align 8
  br label %182

182:                                              ; preds = %210, %181
  %183 = load i64, i64* %18, align 8
  %184 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %185 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp ult i64 %183, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %182
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %190)
  %192 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %193 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %194 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %193, i32 0, i32 5
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = load i64, i64* %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 %196
  %198 = load i8*, i8** %9, align 8
  %199 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %200 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %199, i32 0, i32 3
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = call i64 @d3dx9_parse_effect_technique(%struct.d3dx9_base_effect* %192, %struct.TYPE_13__* %197, i8* %198, i8** %14, %struct.TYPE_13__* %201)
  store i64 %202, i64* %17, align 8
  %203 = load i64, i64* %17, align 8
  %204 = load i64, i64* @D3D_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %189
  %207 = load i64, i64* %18, align 8
  %208 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %207)
  br label %340

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %18, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %18, align 8
  br label %182

213:                                              ; preds = %182
  br label %214

214:                                              ; preds = %213, %156
  %215 = call i32 (i8**, ...) @read_dword(i8** %14, i64* %15)
  %216 = load i64, i64* %15, align 8
  %217 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %216)
  %218 = call i32 (i8**, ...) @read_dword(i8** %14, i64* %16)
  %219 = load i64, i64* %16, align 8
  %220 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %219)
  store i64 0, i64* %18, align 8
  br label %221

221:                                              ; preds = %260, %214
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* %15, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %263

225:                                              ; preds = %221
  %226 = call i32 (i8**, ...) @read_dword(i8** %14, i32* %19)
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %228)
  %230 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %231 = load i32, i32* %19, align 4
  %232 = call i64 @d3dx9_copy_data(%struct.d3dx9_base_effect* %230, i32 %231, i8** %14)
  store i64 %232, i64* %17, align 8
  %233 = call i64 @FAILED(i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %225
  br label %340

236:                                              ; preds = %225
  %237 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %238 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %237, i32 0, i32 3
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %236
  %247 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %248 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %249 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %248, i32 0, i32 3
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i64 %252
  %254 = call i64 @d3dx9_create_object(%struct.d3dx9_base_effect* %247, %struct.TYPE_13__* %253)
  store i64 %254, i64* %17, align 8
  %255 = call i64 @FAILED(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %246
  br label %340

258:                                              ; preds = %246
  br label %259

259:                                              ; preds = %258, %236
  br label %260

260:                                              ; preds = %259
  %261 = load i64, i64* %18, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %18, align 8
  br label %221

263:                                              ; preds = %221
  store i64 0, i64* %18, align 8
  br label %264

264:                                              ; preds = %283, %263
  %265 = load i64, i64* %18, align 8
  %266 = load i64, i64* %16, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %264
  %269 = load i64, i64* %18, align 8
  %270 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %269)
  %271 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %272 = load i8*, i8** %9, align 8
  %273 = load i8**, i8*** %12, align 8
  %274 = load i32, i32* %13, align 4
  %275 = call i64 @d3dx9_parse_resource(%struct.d3dx9_base_effect* %271, i8* %272, i8** %14, i8** %273, i32 %274)
  store i64 %275, i64* %17, align 8
  %276 = load i64, i64* %17, align 8
  %277 = load i64, i64* @D3D_OK, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %268
  %280 = load i64, i64* %18, align 8
  %281 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %280)
  br label %340

282:                                              ; preds = %268
  br label %283

283:                                              ; preds = %282
  %284 = load i64, i64* %18, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %18, align 8
  br label %264

286:                                              ; preds = %264
  store i64 0, i64* %18, align 8
  br label %287

287:                                              ; preds = %335, %286
  %288 = load i64, i64* %18, align 8
  %289 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %290 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = icmp ult i64 %288, %292
  br i1 %293, label %294, label %338

294:                                              ; preds = %287
  %295 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %296 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %295, i32 0, i32 7
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %299 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %298, i32 0, i32 4
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = load i64, i64* %18, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i64 %301
  %303 = call i64 @d3dx_pool_sync_shared_parameter(%struct.TYPE_14__* %297, %struct.TYPE_13__* %302)
  store i64 %303, i64* %17, align 8
  %304 = call i64 @FAILED(i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  br label %340

307:                                              ; preds = %294
  %308 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %309 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %308, i32 0, i32 7
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = icmp ne %struct.TYPE_14__* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %314 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %313, i32 0, i32 7
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  br label %320

317:                                              ; preds = %307
  %318 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %319 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %318, i32 0, i32 6
  br label %320

320:                                              ; preds = %317, %312
  %321 = phi i32* [ %316, %312 ], [ %319, %317 ]
  %322 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %323 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %322, i32 0, i32 4
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %323, align 8
  %325 = load i64, i64* %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  store i32* %321, i32** %327, align 8
  %328 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %329 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %328, i32 0, i32 4
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %329, align 8
  %331 = load i64, i64* %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = call i32 @set_dirty(i32* %333)
  br label %335

335:                                              ; preds = %320
  %336 = load i64, i64* %18, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %18, align 8
  br label %287

338:                                              ; preds = %287
  %339 = load i64, i64* @D3D_OK, align 8
  store i64 %339, i64* %7, align 8
  br label %435

340:                                              ; preds = %306, %279, %257, %235, %206, %178, %127, %94, %65
  %341 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %342 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %341, i32 0, i32 5
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = icmp ne %struct.TYPE_13__* %343, null
  br i1 %344, label %345, label %371

345:                                              ; preds = %340
  store i64 0, i64* %18, align 8
  br label %346

346:                                              ; preds = %360, %345
  %347 = load i64, i64* %18, align 8
  %348 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %349 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp ult i64 %347, %351
  br i1 %352, label %353, label %363

353:                                              ; preds = %346
  %354 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %355 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %354, i32 0, i32 5
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %355, align 8
  %357 = load i64, i64* %18, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i64 %357
  %359 = call i32 @free_technique(%struct.TYPE_13__* %358)
  br label %360

360:                                              ; preds = %353
  %361 = load i64, i64* %18, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* %18, align 8
  br label %346

363:                                              ; preds = %346
  %364 = call i32 (...) @GetProcessHeap()
  %365 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %366 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %365, i32 0, i32 5
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %366, align 8
  %368 = call i32 @HeapFree(i32 %364, i32 0, %struct.TYPE_13__* %367)
  %369 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %370 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %369, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %370, align 8
  br label %371

371:                                              ; preds = %363, %340
  %372 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %373 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %372, i32 0, i32 4
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = icmp ne %struct.TYPE_13__* %374, null
  br i1 %375, label %376, label %402

376:                                              ; preds = %371
  store i64 0, i64* %18, align 8
  br label %377

377:                                              ; preds = %391, %376
  %378 = load i64, i64* %18, align 8
  %379 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %380 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = icmp ult i64 %378, %382
  br i1 %383, label %384, label %394

384:                                              ; preds = %377
  %385 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %386 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %385, i32 0, i32 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %386, align 8
  %388 = load i64, i64* %18, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i64 %388
  %390 = call i32 @free_top_level_parameter(%struct.TYPE_13__* %389)
  br label %391

391:                                              ; preds = %384
  %392 = load i64, i64* %18, align 8
  %393 = add i64 %392, 1
  store i64 %393, i64* %18, align 8
  br label %377

394:                                              ; preds = %377
  %395 = call i32 (...) @GetProcessHeap()
  %396 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %397 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %396, i32 0, i32 4
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %397, align 8
  %399 = call i32 @HeapFree(i32 %395, i32 0, %struct.TYPE_13__* %398)
  %400 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %401 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %400, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %401, align 8
  br label %402

402:                                              ; preds = %394, %371
  %403 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %404 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %403, i32 0, i32 3
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %404, align 8
  %406 = icmp ne %struct.TYPE_13__* %405, null
  br i1 %406, label %407, label %433

407:                                              ; preds = %402
  store i64 0, i64* %18, align 8
  br label %408

408:                                              ; preds = %422, %407
  %409 = load i64, i64* %18, align 8
  %410 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %411 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = sext i32 %412 to i64
  %414 = icmp ult i64 %409, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %408
  %416 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %417 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %416, i32 0, i32 3
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %417, align 8
  %419 = load i64, i64* %18, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i64 %419
  %421 = call i32 @free_object(%struct.TYPE_13__* %420)
  br label %422

422:                                              ; preds = %415
  %423 = load i64, i64* %18, align 8
  %424 = add i64 %423, 1
  store i64 %424, i64* %18, align 8
  br label %408

425:                                              ; preds = %408
  %426 = call i32 (...) @GetProcessHeap()
  %427 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %428 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %427, i32 0, i32 3
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %428, align 8
  %430 = call i32 @HeapFree(i32 %426, i32 0, %struct.TYPE_13__* %429)
  %431 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %432 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %431, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %432, align 8
  br label %433

433:                                              ; preds = %425, %402
  %434 = load i64, i64* %17, align 8
  store i64 %434, i64* %7, align 8
  br label %435

435:                                              ; preds = %433, %338
  %436 = load i64, i64* %7, align 8
  ret i64 %436
}

declare dso_local i32 @read_dword(i8**, ...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @skip_dword_unknown(i8**, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wine_rb_init(i32*, i32) #1

declare dso_local i32 @param_set_magic_number(i32*) #1

declare dso_local i64 @d3dx9_parse_effect_parameter(%struct.d3dx9_base_effect*, %struct.TYPE_13__*, i8*, i8**, %struct.TYPE_13__*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @walk_parameter_tree(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @add_param_to_tree(%struct.d3dx9_base_effect*, i32*, i32*, i32, i32) #1

declare dso_local i64 @d3dx9_parse_effect_technique(%struct.d3dx9_base_effect*, %struct.TYPE_13__*, i8*, i8**, %struct.TYPE_13__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @d3dx9_copy_data(%struct.d3dx9_base_effect*, i32, i8**) #1

declare dso_local i64 @d3dx9_create_object(%struct.d3dx9_base_effect*, %struct.TYPE_13__*) #1

declare dso_local i64 @d3dx9_parse_resource(%struct.d3dx9_base_effect*, i8*, i8**, i8**, i32) #1

declare dso_local i64 @d3dx_pool_sync_shared_parameter(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @set_dirty(i32*) #1

declare dso_local i32 @free_technique(%struct.TYPE_13__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @free_top_level_parameter(%struct.TYPE_13__*) #1

declare dso_local i32 @free_object(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
