; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid parameter %p specified\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Sampler: returning E_FAIL\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Copy %u bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unhandled type %s.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid argument specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i8*, i64)* @d3dx9_base_effect_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_value(%struct.d3dx9_base_effect* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.d3dx_parameter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %15, i32 %16)
  store %struct.d3dx_parameter* %17, %struct.d3dx_parameter** %10, align 8
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %19 = icmp ne %struct.d3dx_parameter* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %23, i32* %5, align 4
  br label %170

24:                                               ; preds = %4
  %25 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %26 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @D3DXPC_OBJECT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %32 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @is_param_type_sampler(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @E_FAIL, align 4
  store i32 %38, i32* %5, align 4
  br label %170

39:                                               ; preds = %30, %24
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %167

42:                                               ; preds = %39
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %44 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %167

48:                                               ; preds = %42
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %159 [
    i32 133, label %52
    i32 132, label %52
    i32 131, label %52
    i32 130, label %52
    i32 129, label %52
    i32 128, label %103
    i32 137, label %103
    i32 135, label %103
    i32 136, label %103
    i32 134, label %118
  ]

52:                                               ; preds = %48, %48, %48, %48, %48
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %99, %52
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %56 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %61 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 1, %63 ]
  %66 = icmp ult i32 %54, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %69 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32**
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %12, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = bitcast i8* %76 to i32**
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = icmp eq i32* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %99

86:                                               ; preds = %67
  %87 = load i32*, i32** %13, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @IUnknown_AddRef(i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @IUnknown_Release(i32* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %53

102:                                              ; preds = %64
  br label %103

103:                                              ; preds = %48, %48, %48, %48, %102
  %104 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %105 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %109 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %113 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @memcpy(i64 %110, i8* %111, i64 %114)
  %116 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %117 = call i32 @set_dirty(%struct.d3dx_parameter* %116)
  br label %165

118:                                              ; preds = %48
  %119 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %120 = call i32 @set_dirty(%struct.d3dx_parameter* %119)
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %155, %118
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %124 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %129 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  br label %132

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ %130, %127 ], [ 1, %131 ]
  %134 = icmp ult i32 %122, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %137 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8**
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %8, align 8
  %144 = bitcast i8* %143 to i8**
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @set_string(i8** %142, i8* %148)
  store i32 %149, i32* %14, align 4
  %150 = call i32 @FAILED(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %135
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %5, align 4
  br label %170

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %121

158:                                              ; preds = %132
  br label %165

159:                                              ; preds = %48
  %160 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %161 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @debug_d3dxparameter_type(i32 %162)
  %164 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %158, %103
  %166 = load i32, i32* @D3D_OK, align 4
  store i32 %166, i32* %5, align 4
  br label %170

167:                                              ; preds = %42, %39
  %168 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %167, %165, %152, %36, %20
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @is_param_type_sampler(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @set_string(i8**, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
