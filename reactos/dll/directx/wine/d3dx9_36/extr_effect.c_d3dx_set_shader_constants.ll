; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx_set_shader_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx_set_shader_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3DXEffectImpl = type { i32, i32 }
%struct.d3dx_pass = type { i32 }
%struct.d3dx_parameter = type { i64, i32, %struct.d3dx_sampler*, %struct.TYPE_6__*, i64, i32, %struct.TYPE_8__* }
%struct.d3dx_sampler = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.d3dx_sampler* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__*, %struct.d3dx_parameter** }
%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"param_eval structure is null.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"sampler %s, register index %u, state count %u.\0A\00", align 1
@D3DVERTEXTEXTURESAMPLER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ID3DXEffectImpl*, %struct.d3dx_pass*, %struct.d3dx_parameter*, i64, i64)* @d3dx_set_shader_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx_set_shader_constants(%struct.ID3DXEffectImpl* %0, %struct.d3dx_pass* %1, %struct.d3dx_parameter* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ID3DXEffectImpl*, align 8
  %8 = alloca %struct.d3dx_pass*, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.d3dx_parameter**, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.d3dx_sampler*, align 8
  %20 = alloca i32, align 4
  store %struct.ID3DXEffectImpl* %0, %struct.ID3DXEffectImpl** %7, align 8
  store %struct.d3dx_pass* %1, %struct.d3dx_pass** %8, align 8
  store %struct.d3dx_parameter* %2, %struct.d3dx_parameter** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %27, i32* %6, align 4
  br label %209

28:                                               ; preds = %5
  %29 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %7, align 8
  %30 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %7, align 8
  %33 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 6
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @d3dx_param_eval_set_shader_constants(i32 %31, i32 %34, %struct.TYPE_8__* %37, i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %209

44:                                               ; preds = %28
  %45 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %46 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %45, i32 0, i32 6
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %49, align 8
  store %struct.d3dx_parameter** %50, %struct.d3dx_parameter*** %14, align 8
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %52 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %51, i32 0, i32 6
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %15, align 8
  %57 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %58 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %57, i32 0, i32 6
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* @D3D_OK, align 4
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %204, %44
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %207

68:                                               ; preds = %64
  %69 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %70 = load i32, i32* %17, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %69, i64 %71
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %72, align 8
  %74 = icmp ne %struct.d3dx_parameter* %73, null
  br i1 %74, label %75, label %203

75:                                               ; preds = %68
  %76 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %77 = load i32, i32* %17, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %76, i64 %78
  %80 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %79, align 8
  %81 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @D3DXPC_OBJECT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %203

85:                                               ; preds = %75
  %86 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %87 = load i32, i32* %17, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %86, i64 %88
  %90 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %89, align 8
  %91 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @is_param_type_sampler(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %203

95:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  br label %96

96:                                               ; preds = %199, %95
  %97 = load i32, i32* %20, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %97, %103
  br i1 %104, label %105, label %202

105:                                              ; preds = %96
  %106 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %106, i64 %108
  %110 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %109, align 8
  %111 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %116 = load i32, i32* %17, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %115, i64 %117
  %119 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %118, align 8
  %120 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %20, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %125, align 8
  br label %135

127:                                              ; preds = %105
  %128 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %128, i64 %130
  %132 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %131, align 8
  %133 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %132, i32 0, i32 2
  %134 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %133, align 8
  br label %135

135:                                              ; preds = %127, %114
  %136 = phi %struct.d3dx_sampler* [ %126, %114 ], [ %134, %127 ]
  store %struct.d3dx_sampler* %136, %struct.d3dx_sampler** %19, align 8
  %137 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %14, align 8
  %138 = load i32, i32* %17, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %137, i64 %139
  %141 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %140, align 8
  %142 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @debugstr_a(i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %152 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %144, i64 %150, i32 %153)
  store i32 0, i32* %18, align 4
  br label %155

155:                                              ; preds = %195, %135
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %158 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %198

161:                                              ; preds = %155
  %162 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %7, align 8
  %163 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %164 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %165 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %18, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %171 = load i32, i32* %17, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %20, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %161
  %182 = load i32, i32* @D3DVERTEXTEXTURESAMPLER0, align 4
  br label %184

183:                                              ; preds = %161
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ]
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %178, %186
  %188 = load i64, i64* %11, align 8
  %189 = call i32 @d3dx9_apply_state(%struct.ID3DXEffectImpl* %162, %struct.d3dx_pass* %163, i32* %169, i64 %187, i64 %188)
  store i32 %189, i32* %12, align 4
  %190 = call i64 @FAILED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %192, %184
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %18, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %18, align 4
  br label %155

198:                                              ; preds = %155
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %20, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %20, align 4
  br label %96

202:                                              ; preds = %96
  br label %203

203:                                              ; preds = %202, %85, %75, %68
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %17, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %17, align 4
  br label %64

207:                                              ; preds = %64
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %42, %25
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @d3dx_param_eval_set_shader_constants(i32, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @is_param_type_sampler(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @d3dx9_apply_state(%struct.ID3DXEffectImpl*, %struct.d3dx_pass*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
