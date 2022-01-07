; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_array_selector.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_array_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { %struct.d3dx_object* }
%struct.d3dx_object = type { i8*, i64 }
%struct.d3dx_state = type { %struct.d3dx_parameter*, %struct.d3dx_parameter }
%struct.d3dx_parameter = type { i64, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Parsing array entry selection state for parameter %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Mapping to parameter %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Referenced parameter %s not found.\0A\00", align 1
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown DWORD: 0x%.8x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unaligned string_size %u.\0A\00", align 1
@D3DXPT_INT = common dso_local global i64 0, align 8
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPT_VERTEXSHADER = common dso_local global i64 0, align 8
@D3DXPT_PIXELSHADER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Unexpected member parameter type %u, expected %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Creating preshader for object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, %struct.d3dx_state*, i8**, i32)* @d3dx9_parse_array_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_parse_array_selector(%struct.d3dx9_base_effect* %0, %struct.d3dx_state* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca %struct.d3dx_state*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3dx_parameter*, align 8
  %12 = alloca %struct.d3dx_object*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store %struct.d3dx_state* %1, %struct.d3dx_state** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.d3dx_state*, %struct.d3dx_state** %7, align 8
  %17 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %16, i32 0, i32 1
  store %struct.d3dx_parameter* %17, %struct.d3dx_parameter** %11, align 8
  %18 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %19 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %18, i32 0, i32 0
  %20 = load %struct.d3dx_object*, %struct.d3dx_object** %19, align 8
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %20, i64 %23
  store %struct.d3dx_object* %24, %struct.d3dx_object** %12, align 8
  %25 = load %struct.d3dx_object*, %struct.d3dx_object** %12, align 8
  %26 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %28)
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = call %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect* %33, i32* null, i8* %35)
  %37 = load %struct.d3dx_state*, %struct.d3dx_state** %7, align 8
  %38 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %37, i32 0, i32 0
  store %struct.d3dx_parameter* %36, %struct.d3dx_parameter** %38, align 8
  %39 = load %struct.d3dx_state*, %struct.d3dx_state** %7, align 8
  %40 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %39, i32 0, i32 0
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %40, align 8
  %42 = icmp ne %struct.d3dx_parameter* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.d3dx_state*, %struct.d3dx_state** %7, align 8
  %45 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %44, i32 0, i32 0
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %45, align 8
  %47 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debugstr_a(i32 %48)
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %57

51:                                               ; preds = %4
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = ptrtoint i8* %53 to i64
  %55 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %56, i32* %5, align 4
  br label %215

57:                                               ; preds = %43
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = urem i64 %66, 4
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load %struct.d3dx_object*, %struct.d3dx_object** %12, align 8
  %82 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = sub i64 %83, %86
  %88 = load i64, i64* @D3DXPT_INT, align 8
  %89 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %90 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %89, i32 0, i32 4
  %91 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %92 = call i32 @get_version_counter_ptr(%struct.d3dx9_base_effect* %91)
  %93 = call i32 @d3dx_create_param_eval(%struct.d3dx9_base_effect* %74, i32* %80, i64 %87, i64 %88, i32* %90, i32 %92, i8** null, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %73
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %215

98:                                               ; preds = %73
  %99 = load i32, i32* @D3D_OK, align 4
  store i32 %99, i32* %14, align 4
  %100 = load %struct.d3dx_state*, %struct.d3dx_state** %7, align 8
  %101 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %100, i32 0, i32 0
  %102 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %101, align 8
  store %struct.d3dx_parameter* %102, %struct.d3dx_parameter** %11, align 8
  %103 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %104 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @D3DXPT_VERTEXSHADER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %98
  %109 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %110 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @D3DXPT_PIXELSHADER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %213

114:                                              ; preds = %108, %98
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %209, %114
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %118 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %212

121:                                              ; preds = %115
  %122 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %123 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %131 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %121
  %135 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %136 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %144 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %142, i64 %145)
  %147 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %147, i32* %5, align 4
  br label %215

148:                                              ; preds = %121
  %149 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %150 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %208, label %158

158:                                              ; preds = %148
  %159 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %160 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %169 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %168, i32 0, i32 0
  %170 = load %struct.d3dx_object*, %struct.d3dx_object** %169, align 8
  %171 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %172 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %170, i64 %179
  store %struct.d3dx_object* %180, %struct.d3dx_object** %12, align 8
  %181 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %182 = load %struct.d3dx_object*, %struct.d3dx_object** %12, align 8
  %183 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.d3dx_object*, %struct.d3dx_object** %12, align 8
  %187 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %190 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %193 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %192, i32 0, i32 3
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %15, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %200 = call i32 @get_version_counter_ptr(%struct.d3dx9_base_effect* %199)
  %201 = load i8**, i8*** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @d3dx_create_param_eval(%struct.d3dx9_base_effect* %181, i32* %185, i64 %188, i64 %191, i32* %198, i32 %200, i8** %201, i32 %202)
  store i32 %203, i32* %14, align 4
  %204 = call i64 @FAILED(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %158
  br label %212

207:                                              ; preds = %158
  br label %208

208:                                              ; preds = %207, %148
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %115

212:                                              ; preds = %206, %115
  br label %213

213:                                              ; preds = %212, %108
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %134, %96, %51
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect*, i32*, i8*) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @FIXME(i8*, i64, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @d3dx_create_param_eval(%struct.d3dx9_base_effect*, i32*, i64, i64, i32*, i32, i8**, i32) #1

declare dso_local i32 @get_version_counter_ptr(%struct.d3dx9_base_effect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
