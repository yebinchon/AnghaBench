; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.d3dx9_base_effect = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32 }
%struct.d3dx_pass = type { i32, %struct.d3dx_state*, i32, i32 }
%struct.d3dx_state = type { i64 }
%struct.d3dx_parameter = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid argument specified.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3DXFX_NOT_CLONEABLE = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@state_table = common dso_local global %struct.TYPE_7__* null, align 8
@SC_VERTEXSHADER = common dso_local global i64 0, align 8
@SC_PIXELSHADER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.TYPE_6__*)* @d3dx9_base_effect_get_pass_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_pass_desc(%struct.d3dx9_base_effect* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.d3dx_pass*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3dx_state*, align 8
  %11 = alloca %struct.d3dx_parameter*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.d3dx_pass* @get_valid_pass(%struct.d3dx9_base_effect* %16, i32 %17)
  store %struct.d3dx_pass* %18, %struct.d3dx_pass** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %23 = icmp ne %struct.d3dx_pass* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %3
  %25 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %26, i32* %4, align 4
  br label %143

27:                                               ; preds = %21
  %28 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %29 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %43 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @D3DXFX_NOT_CLONEABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @D3D_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %143

50:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %138, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %54 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %141

57:                                               ; preds = %51
  %58 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %59 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %58, i32 0, i32 1
  %60 = load %struct.d3dx_state*, %struct.d3dx_state** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %60, i64 %62
  store %struct.d3dx_state* %63, %struct.d3dx_state** %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state_table, align 8
  %65 = load %struct.d3dx_state*, %struct.d3dx_state** %10, align 8
  %66 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SC_VERTEXSHADER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %57
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state_table, align 8
  %75 = load %struct.d3dx_state*, %struct.d3dx_state** %10, align 8
  %76 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SC_PIXELSHADER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %137

83:                                               ; preds = %73, %57
  %84 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %85 = load %struct.d3dx_pass*, %struct.d3dx_pass** %8, align 8
  %86 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %85, i32 0, i32 1
  %87 = load %struct.d3dx_state*, %struct.d3dx_state** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %87, i64 %89
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @d3dx9_get_param_value_ptr(%struct.d3dx_pass* %84, %struct.d3dx_state* %90, i8** %12, %struct.d3dx_parameter** %11, i32 %91, i32* %13)
  store i32 %92, i32* %14, align 4
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %4, align 4
  br label %143

97:                                               ; preds = %83
  %98 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %99 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %104 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %107 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  br label %114

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %102
  %115 = phi i32* [ %112, %102 ], [ null, %113 ]
  %116 = bitcast i32* %115 to i8*
  store i8* %116, i8** %15, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @state_table, align 8
  %118 = load %struct.d3dx_state*, %struct.d3dx_state** %10, align 8
  %119 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SC_VERTEXSHADER, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %114
  %127 = load i8*, i8** %15, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  br label %136

131:                                              ; preds = %114
  %132 = load i8*, i8** %15, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %73
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %51

141:                                              ; preds = %51
  %142 = load i32, i32* @D3D_OK, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %95, %48, %24
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.d3dx_pass* @get_valid_pass(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @d3dx9_get_param_value_ptr(%struct.d3dx_pass*, %struct.d3dx_state*, i8**, %struct.d3dx_parameter**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
