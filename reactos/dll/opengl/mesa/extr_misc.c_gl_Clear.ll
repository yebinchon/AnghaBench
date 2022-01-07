; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_gl_Clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_misc.c_gl_Clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__*, i64 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@GL_RENDER = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@FRONT_AND_BACK_BIT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_ACCUM_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Clear(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_20__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %15 = call i32 @gl_error(%struct.TYPE_20__* %13, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %175

16:                                               ; preds = %2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GL_RENDER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %175

22:                                               ; preds = %16
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = call i32 @gl_update_state(%struct.TYPE_20__* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)*, i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)* %34, null
  br i1 %35, label %36, label %137

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %137

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %137

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %61, %66
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %8, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)*, i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)** %83, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 %84(%struct.TYPE_20__* %85, i32 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %46
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = load i32, i32* @GL_BACK, align 4
  %111 = call i32 %108(%struct.TYPE_20__* %109, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)*, i32 (%struct.TYPE_20__*, i32, i64, i64, i64, i64)** %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 %115(%struct.TYPE_20__* %116, i32 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = load i32, i32* @GL_FRONT, align 4
  %135 = call i32 %132(%struct.TYPE_20__* %133, i32 %134)
  br label %136

136:                                              ; preds = %104, %46
  br label %174

137:                                              ; preds = %41, %36, %30
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = call i32 @clear_color_buffers(%struct.TYPE_20__* %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = call i32 %154(%struct.TYPE_20__* %155)
  br label %157

157:                                              ; preds = %150, %145
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @GL_ACCUM_BUFFER_BIT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = call i32 @gl_clear_accum_buffer(%struct.TYPE_20__* %163)
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = call i32 @gl_clear_stencil_buffer(%struct.TYPE_20__* %171)
  br label %173

173:                                              ; preds = %170, %165
  br label %174

174:                                              ; preds = %173, %136
  br label %175

175:                                              ; preds = %12, %174, %16
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_20__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @gl_update_state(%struct.TYPE_20__*) #1

declare dso_local i32 @clear_color_buffers(%struct.TYPE_20__*) #1

declare dso_local i32 @gl_clear_accum_buffer(%struct.TYPE_20__*) #1

declare dso_local i32 @gl_clear_stencil_buffer(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
