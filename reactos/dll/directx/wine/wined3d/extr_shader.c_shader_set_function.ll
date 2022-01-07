; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_set_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { i32, i32, i32, i32, i32, %struct.wined3d_shader_frontend*, %struct.TYPE_6__*, %struct.wined3d_shader_reg_maps }
%struct.wined3d_shader_frontend = type { i32 (i32, i32, i32*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wined3d_d3d_info }
%struct.wined3d_d3d_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"shader %p, float_const_count %u, type %#x, max_version %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize frontend.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@d3d_shader = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Wrong shader type %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Shader version %d not supported by this D3D API version.\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"No backend version-checking for this shader type.\0A\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"Shader version %d.%d not supported by your GPU with the current shader backend.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, i32, i32, i32)* @shader_set_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_set_function(%struct.wined3d_shader* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca %struct.wined3d_shader_frontend*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_d3d_info*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %15, i32 0, i32 7
  store %struct.wined3d_shader_reg_maps* %16, %struct.wined3d_shader_reg_maps** %10, align 8
  %17 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %17, i32 0, i32 6
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.wined3d_d3d_info* %22, %struct.wined3d_d3d_info** %14, align 8
  %23 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.wined3d_shader* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %28, i32 0, i32 5
  %30 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %29, align 8
  store %struct.wined3d_shader_frontend* %30, %struct.wined3d_shader_frontend** %11, align 8
  %31 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %11, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_frontend, %struct.wined3d_shader_frontend* %31, i32 0, i32 0
  %33 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %32, align 8
  %34 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %40, i32 0, i32 0
  %42 = call i32 %33(i32 %36, i32 %39, i32* %41)
  %43 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = icmp ne i32 %42, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %4
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %48, i32* %5, align 4
  br label %155

49:                                               ; preds = %4
  %50 = load i32, i32* @d3d_shader, align 4
  %51 = call i64 @TRACE_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %11, align 8
  %55 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @shader_trace_init(%struct.wined3d_shader_frontend* %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %61 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %11, align 8
  %62 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %63 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %63, i32 0, i32 1
  %65 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @shader_get_registers_used(%struct.wined3d_shader* %60, %struct.wined3d_shader_frontend* %61, %struct.wined3d_shader_reg_maps* %62, i32* %64, i32* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %155

73:                                               ; preds = %59
  %74 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %75 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %82 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %86, i32* %5, align 4
  br label %155

87:                                               ; preds = %73
  %88 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %89 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %96 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %100, i32* %5, align 4
  br label %155

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  switch i32 %102, label %133 [
    i32 128, label %103
    i32 130, label %108
    i32 132, label %113
    i32 131, label %118
    i32 129, label %123
    i32 133, label %128
  ]

103:                                              ; preds = %101
  %104 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %105 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  br label %135

108:                                              ; preds = %101
  %109 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %110 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  br label %135

113:                                              ; preds = %101
  %114 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %115 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %13, align 4
  br label %135

118:                                              ; preds = %101
  %119 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %120 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  br label %135

123:                                              ; preds = %101
  %124 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %125 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  br label %135

128:                                              ; preds = %101
  %129 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %14, align 8
  %130 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %13, align 4
  br label %135

133:                                              ; preds = %101
  %134 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %133, %128, %123, %118, %113, %108, %103
  %136 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %144 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %150)
  %152 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %152, i32* %5, align 4
  br label %155

153:                                              ; preds = %135
  %154 = load i32, i32* @WINED3D_OK, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %142, %94, %80, %71, %46
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*, i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @shader_trace_init(%struct.wined3d_shader_frontend*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_get_registers_used(%struct.wined3d_shader*, %struct.wined3d_shader_frontend*, %struct.wined3d_shader_reg_maps*, i32*, i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
