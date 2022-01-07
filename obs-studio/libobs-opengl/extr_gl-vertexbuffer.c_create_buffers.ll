; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_create_buffers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_create_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vertex_buffer = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.gs_tvertarray*, i64, i64, i64, i64 }
%struct.gs_tvertarray = type { i32, i64 }

@GL_STREAM_DRAW = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_vertex_buffer*)* @create_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_buffers(%struct.gs_vertex_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_vertex_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_tvertarray*, align 8
  %8 = alloca i64, align 8
  store %struct.gs_vertex_buffer* %0, %struct.gs_vertex_buffer** %3, align 8
  %9 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @GL_STREAM_DRAW, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @GL_STATIC_DRAW, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %20 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %20, i32 0, i32 0
  %22 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @gl_create_buffer(i32 %19, i32* %21, i64 %28, i64 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %211

38:                                               ; preds = %17
  %39 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %47 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %47, i32 0, i32 1
  %49 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @gl_create_buffer(i32 %46, i32* %48, i64 %55, i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %211

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %68 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %75 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %75, i32 0, i32 2
  %77 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %78 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %85 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %84, i32 0, i32 5
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @gl_create_buffer(i32 %74, i32* %76, i64 %83, i64 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %211

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %96 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %95, i32 0, i32 5
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %103 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %103, i32 0, i32 3
  %105 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %106 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %113 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @gl_create_buffer(i32 %102, i32* %104, i64 %111, i64 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %211

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %94
  %123 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %124 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %127 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %126, i32 0, i32 5
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @da_reserve(i32 %125, i64 %130)
  %132 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %133 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %136 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %135, i32 0, i32 5
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @da_reserve(i32 %134, i64 %139)
  store i64 0, i64* %5, align 8
  br label %141

141:                                              ; preds = %189, %122
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %144 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %142, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %141
  %150 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %151 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %153, align 8
  %155 = load i64, i64* %5, align 8
  %156 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %154, i64 %155
  store %struct.gs_tvertarray* %156, %struct.gs_tvertarray** %7, align 8
  %157 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %158 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %157, i32 0, i32 5
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %7, align 8
  %165 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = mul i64 %163, %167
  store i64 %168, i64* %8, align 8
  %169 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %170 = load i64, i64* %8, align 8
  %171 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %7, align 8
  %172 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @gl_create_buffer(i32 %169, i32* %6, i64 %170, i64 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %211

178:                                              ; preds = %149
  %179 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %180 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @da_push_back(i32 %181, i32* %6)
  %183 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %184 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.gs_tvertarray*, %struct.gs_tvertarray** %7, align 8
  %187 = getelementptr inbounds %struct.gs_tvertarray, %struct.gs_tvertarray* %186, i32 0, i32 0
  %188 = call i32 @da_push_back(i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %178
  %190 = load i64, i64* %5, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %5, align 8
  br label %141

192:                                              ; preds = %141
  %193 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %194 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %192
  %198 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %199 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %198, i32 0, i32 5
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = call i32 @gs_vbdata_destroy(%struct.TYPE_2__* %200)
  %202 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %203 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %202, i32 0, i32 5
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %203, align 8
  br label %204

204:                                              ; preds = %197, %192
  %205 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %3, align 8
  %206 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %205, i32 0, i32 4
  %207 = call i32 @gl_gen_vertex_arrays(i32 1, i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  store i32 0, i32* %2, align 4
  br label %211

210:                                              ; preds = %204
  store i32 1, i32* %2, align 4
  br label %211

211:                                              ; preds = %210, %209, %177, %120, %92, %64, %37
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @gl_create_buffer(i32, i32*, i64, i64, i32) #1

declare dso_local i32 @da_reserve(i32, i64) #1

declare dso_local i32 @da_push_back(i32, i32*) #1

declare dso_local i32 @gs_vbdata_destroy(%struct.TYPE_2__*) #1

declare dso_local i32 @gl_gen_vertex_arrays(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
