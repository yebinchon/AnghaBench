; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_uniform_params.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_uniform_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { { i64, i32 } (%struct.TYPE_7__*)*, { i64, i32 } (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.sc_uniform = type { i64, i32, %struct.ra_layout, %struct.TYPE_7__ }
%struct.ra_layout = type { i64, i32 }

@SC_UNIFORM_TYPE_PUSHC = common dso_local global i32 0, align 4
@RA_CAP_GLOBAL_UNIFORM = common dso_local global i32 0, align 4
@RA_CAP_BUF_RO = common dso_local global i32 0, align 4
@SC_UNIFORM_TYPE_UBO = common dso_local global i32 0, align 4
@SC_UNIFORM_TYPE_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_cache*, %struct.sc_uniform*)* @update_uniform_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_uniform_params(%struct.gl_shader_cache* %0, %struct.sc_uniform* %1) #0 {
  %3 = alloca %struct.gl_shader_cache*, align 8
  %4 = alloca %struct.sc_uniform*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ra_layout, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ra_layout, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %3, align 8
  store %struct.sc_uniform* %1, %struct.sc_uniform** %4, align 8
  %12 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %13 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %16 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %18 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i1 [ true, %2 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %25
  %31 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %32 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %30
  %38 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %39 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %37
  %45 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %46 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load { i64, i32 } (%struct.TYPE_7__*)*, { i64, i32 } (%struct.TYPE_7__*)** %50, align 8
  %52 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %53 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %52, i32 0, i32 3
  %54 = call { i64, i32 } %51(%struct.TYPE_7__* %53)
  %55 = bitcast %struct.ra_layout* %7 to { i64, i32 }*
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %55, i32 0, i32 0
  %57 = extractvalue { i64, i32 } %54, 0
  store i64 %57, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %55, i32 0, i32 1
  %59 = extractvalue { i64, i32 } %54, 1
  store i32 %59, i32* %58, align 8
  %60 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %61 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @MP_ALIGN_UP(i64 %62, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %73 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %72, i32 0, i32 3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ule i64 %71, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %44
  %79 = load i32, i32* @SC_UNIFORM_TYPE_PUSHC, align 4
  %80 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %81 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %83 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %82, i32 0, i32 2
  %84 = bitcast %struct.ra_layout* %83 to i8*
  %85 = bitcast %struct.ra_layout* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %88 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %91 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %183

92:                                               ; preds = %44
  br label %93

93:                                               ; preds = %92, %37, %30, %25
  %94 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %95 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RA_CAP_GLOBAL_UNIFORM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %93
  %107 = phi i1 [ true, %93 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %171

111:                                              ; preds = %106
  %112 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %113 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 440
  br i1 %117, label %118, label %171

118:                                              ; preds = %111
  %119 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %120 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RA_CAP_BUF_RO, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %171

127:                                              ; preds = %118
  %128 = load i32, i32* @SC_UNIFORM_TYPE_UBO, align 4
  %129 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %130 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %132 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %131, i32 0, i32 2
  %133 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %134 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load { i64, i32 } (%struct.TYPE_7__*)*, { i64, i32 } (%struct.TYPE_7__*)** %138, align 8
  %140 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %141 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %140, i32 0, i32 3
  %142 = call { i64, i32 } %139(%struct.TYPE_7__* %141)
  %143 = bitcast %struct.ra_layout* %11 to { i64, i32 }*
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %143, i32 0, i32 0
  %145 = extractvalue { i64, i32 } %142, 0
  store i64 %145, i64* %144, align 8
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %143, i32 0, i32 1
  %147 = extractvalue { i64, i32 } %142, 1
  store i32 %147, i32* %146, align 8
  %148 = bitcast %struct.ra_layout* %132 to i8*
  %149 = bitcast %struct.ra_layout* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 16, i1 false)
  %150 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %151 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %154 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @MP_ALIGN_UP(i64 %152, i32 %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %160 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %162 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %165 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %163, %167
  %169 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %170 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  br label %183

171:                                              ; preds = %118, %111, %106
  %172 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %173 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @RA_CAP_GLOBAL_UNIFORM, align 4
  %178 = and i32 %176, %177
  %179 = call i32 @assert(i32 %178)
  %180 = load i32, i32* @SC_UNIFORM_TYPE_GLOBAL, align 4
  %181 = load %struct.sc_uniform*, %struct.sc_uniform** %4, align 8
  %182 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %171, %127, %78
  ret void
}

declare dso_local i8* @MP_ALIGN_UP(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
