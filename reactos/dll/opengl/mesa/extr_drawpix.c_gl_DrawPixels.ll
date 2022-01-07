; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_gl_DrawPixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_gl_DrawPixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)* }
%struct.TYPE_12__ = type { i64* }

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glDrawPixels\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i64 0, align 8
@GL_UNSIGNED_BYTE = common dso_local global i64 0, align 8
@GL_RENDER = common dso_local global i64 0, align 8
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_DrawPixels(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %9, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %6
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = load i32, i32* @GL_INVALID_VALUE, align 4
  %24 = call i32 @gl_error(%struct.TYPE_14__* %22, i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %184

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = call i32 @gl_update_state(%struct.TYPE_14__* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)*, i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)** %41, align 8
  %43 = icmp ne i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)* %42, null
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = fadd float %51, 5.000000e-01
  %53 = fptosi float %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to float
  %61 = fadd float %60, 5.000000e-01
  %62 = fptosi float %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)*, i64 (%struct.TYPE_14__*, i32, i32, i64, i64, i64, i64, i32, i32*)** %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @GL_FALSE, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = call i64 %66(%struct.TYPE_14__* %67, i32 %68, i32 %69, i64 %70, i64 %71, i64 %72, i64 %73, i32 %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %44
  br label %184

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %38, %33
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @GL_RGB, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @GL_UNSIGNED_BYTE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %123, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @GL_RENDER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i64 @quickdraw_rgb(%struct.TYPE_14__* %115, i64 %116, i64 %117, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %184

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %109, %104, %98, %93, %88, %84, %80
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i32* @gl_unpack_pixels(%struct.TYPE_14__* %129, i64 %130, i64 %131, i64 %132, i64 %133, i32* %134)
  store i32* %135, i32** %13, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %128
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %141 = call i32 @gl_error(%struct.TYPE_14__* %139, i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %184

142:                                              ; preds = %128
  br label %145

143:                                              ; preds = %123
  %144 = load i32*, i32** %12, align 8
  store i32* %144, i32** %13, align 8
  br label %145

145:                                              ; preds = %143, %142
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @gl_save_DrawPixels(%struct.TYPE_14__* %151, i64 %152, i64 %153, i64 %154, i64 %155, i32* %156)
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @drawpixels(%struct.TYPE_14__* %164, i64 %165, i64 %166, i64 %167, i64 %168, i32* %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %163
  %176 = load i32*, i32** %13, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = icmp ne i32* %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @free(i32* %180)
  br label %182

182:                                              ; preds = %179, %175
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %21, %78, %121, %138, %183, %158
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @gl_update_state(%struct.TYPE_14__*) #1

declare dso_local i64 @quickdraw_rgb(%struct.TYPE_14__*, i64, i64, i32*) #1

declare dso_local i32* @gl_unpack_pixels(%struct.TYPE_14__*, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @gl_save_DrawPixels(%struct.TYPE_14__*, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @drawpixels(%struct.TYPE_14__*, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
