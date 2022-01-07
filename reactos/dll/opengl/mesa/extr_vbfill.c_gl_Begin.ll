; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_Begin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_gl_Begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__*, i64, %struct.TYPE_18__, i64, i64, i64, %struct.pixel_buffer*, %struct.vertex_buffer* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_24__*, i32)* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.pixel_buffer = type { i32 }
%struct.vertex_buffer = type { i32, i32, i32, i32, i64, i32, i64, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glBegin\00", align 1
@gl_vertex3f_nop = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i8* null, align 8
@GL_POINT = common dso_local global i32 0, align 4
@GL_LINE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4
@begin_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Begin(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vertex_buffer*, align 8
  %6 = alloca %struct.pixel_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 13
  %13 = load %struct.vertex_buffer*, %struct.vertex_buffer** %12, align 8
  store %struct.vertex_buffer* %13, %struct.vertex_buffer** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 12
  %16 = load %struct.pixel_buffer*, %struct.pixel_buffer** %15, align 8
  store %struct.pixel_buffer* %16, %struct.pixel_buffer** %6, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_24__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %23 = call i32 @gl_error(%struct.TYPE_24__* %21, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %206

24:                                               ; preds = %2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_24__* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = call i32 @gl_analyze_projection_matrix(%struct.TYPE_24__* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %47 = call i32 @gl_update_state(%struct.TYPE_24__* %46)
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @gl_vertex3f_nop, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %57 = call i32 @gl_set_vertex_function(%struct.TYPE_24__* %56)
  br label %58

58:                                               ; preds = %55, %48
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_24__*, i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  %69 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %68, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 %69(%struct.TYPE_24__* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %80 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @GL_TRUE, align 4
  %87 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %90 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %147

93:                                               ; preds = %73
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %93
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_24__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_24__*, i32, i32, i32, i32)** %127, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 %128(%struct.TYPE_24__* %129, i32 %130, i32 %131, i32 %132, i32 %133)
  br label %146

135:                                              ; preds = %93
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %138, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %139(%struct.TYPE_24__* %140, i32 %144)
  br label %146

146:                                              ; preds = %135, %100
  br label %147

147:                                              ; preds = %146, %73
  %148 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %149 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %152 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %157 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %199 [
    i32 134, label %161
    i32 137, label %169
    i32 135, label %169
    i32 136, label %169
    i32 130, label %179
    i32 128, label %179
    i32 129, label %179
    i32 132, label %179
    i32 131, label %179
    i32 133, label %179
  ]

161:                                              ; preds = %147
  %162 = load i8*, i8** @GL_FALSE, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.pixel_buffer*, %struct.pixel_buffer** %6, align 8
  %167 = load i32, i32* @GL_POINT, align 4
  %168 = call i32 @PB_INIT(%struct.pixel_buffer* %166, i32 %167)
  br label %206

169:                                              ; preds = %147, %147, %147
  %170 = load i8*, i8** @GL_FALSE, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 3
  store i32 0, i32* %175, align 8
  %176 = load %struct.pixel_buffer*, %struct.pixel_buffer** %6, align 8
  %177 = load i32, i32* @GL_LINE, align 4
  %178 = call i32 @PB_INIT(%struct.pixel_buffer* %176, i32 %177)
  br label %206

179:                                              ; preds = %147, %147, %147, %147, %147, %147
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br label %192

192:                                              ; preds = %185, %179
  %193 = phi i1 [ false, %179 ], [ %191, %185 ]
  %194 = zext i1 %193 to i32
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.pixel_buffer*, %struct.pixel_buffer** %6, align 8
  %198 = call i32 @PB_INIT(%struct.pixel_buffer* %197, i32 133)
  br label %206

199:                                              ; preds = %147
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %201 = load i32, i32* @GL_INVALID_ENUM, align 4
  %202 = call i32 @gl_error(%struct.TYPE_24__* %200, i32 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %203 = load i32, i32* @GL_BITMAP, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %20, %199, %192, %169, %161
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_24__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @gl_analyze_modelview_matrix(%struct.TYPE_24__*) #1

declare dso_local i32 @gl_analyze_projection_matrix(%struct.TYPE_24__*) #1

declare dso_local i32 @gl_update_state(%struct.TYPE_24__*) #1

declare dso_local i32 @gl_set_vertex_function(%struct.TYPE_24__*) #1

declare dso_local i32 @PB_INIT(%struct.pixel_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
