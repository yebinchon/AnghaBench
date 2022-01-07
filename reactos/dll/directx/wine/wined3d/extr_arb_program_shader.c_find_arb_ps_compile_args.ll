; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_ps_compile_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_ps_compile_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { %struct.TYPE_6__*, i64*, i64* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.wined3d_context = type { %struct.TYPE_4__, %struct.wined3d_d3d_info*, %struct.wined3d_gl_info* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_d3d_info = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_shader = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.arb_ps_compile_args = type { i32, i32, i64**, i32 }

@WINED3D_MAX_CONSTS_B = common dso_local global i32 0, align 4
@WINED3D_RS_CLIPPING = common dso_local global i64 0, align 8
@WINED3D_RS_CLIPPLANEENABLE = common dso_local global i64 0, align 8
@NV_FRAGMENT_PROGRAM_OPTION = common dso_local global i64 0, align 8
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_state*, %struct.wined3d_context*, %struct.wined3d_shader*, %struct.arb_ps_compile_args*)* @find_arb_ps_compile_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_arb_ps_compile_args(%struct.wined3d_state* %0, %struct.wined3d_context* %1, %struct.wined3d_shader* %2, %struct.arb_ps_compile_args* %3) #0 {
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.arb_ps_compile_args*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_d3d_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_state* %0, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  store %struct.arb_ps_compile_args* %3, %struct.arb_ps_compile_args** %8, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 2
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %9, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 1
  %18 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %17, align 8
  store %struct.wined3d_d3d_info* %18, %struct.wined3d_d3d_info** %10, align 8
  %19 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %20 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %26 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %25, i32 0, i32 3
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %28 = call i32 @find_ps_compile_args(%struct.wined3d_state* %19, %struct.wined3d_shader* %20, i32 %24, i32* %26, %struct.wined3d_context* %27)
  %29 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %34 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %56, %4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @WINED3D_MAX_CONSTS_B, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %52 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %10, align 8
  %61 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %66 = call i64 @use_vs(%struct.wined3d_state* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %70 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @WINED3D_RS_CLIPPING, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %78 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @WINED3D_RS_CLIPPLANEENABLE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %86 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %90

87:                                               ; preds = %76, %68, %64, %59
  %88 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %89 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %97 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %95, %99
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 65535
  br i1 %102, label %111, label %103

103:                                              ; preds = %90
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @NV_FRAGMENT_PROGRAM_OPTION, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103, %90
  %112 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %113 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %112, i32 0, i32 2
  %114 = load i64**, i64*** %113, align 8
  %115 = call i32 @memset(i64** %114, i32 0, i32 8)
  br label %205

116:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %202, %116
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %205

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %121
  %128 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %129 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %128, i32 0, i32 2
  %130 = load i64**, i64*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64*, i64** %130, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %137 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %136, i32 0, i32 2
  %138 = load i64**, i64*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64*, i64** %138, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %145 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %144, i32 0, i32 2
  %146 = load i64**, i64*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64*, i64** %146, i64 %148
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 2
  store i64 0, i64* %151, align 8
  br label %201

152:                                              ; preds = %121
  %153 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %154 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %162 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %161, i32 0, i32 2
  %163 = load i64**, i64*** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64*, i64** %163, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  store i64 %160, i64* %168, align 8
  %169 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %170 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %178 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %177, i32 0, i32 2
  %179 = load i64**, i64*** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64*, i64** %179, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 %176, i64* %184, align 8
  %185 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %186 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %8, align 8
  %194 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %193, i32 0, i32 2
  %195 = load i64**, i64*** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64*, i64** %195, i64 %197
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 2
  store i64 %192, i64* %200, align 8
  br label %201

201:                                              ; preds = %152, %127
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %117

205:                                              ; preds = %111, %117
  ret void
}

declare dso_local i32 @find_ps_compile_args(%struct.wined3d_state*, %struct.wined3d_shader*, i32, i32*, %struct.wined3d_context*) #1

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @memset(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
