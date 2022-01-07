; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_copy_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_copy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_ACCUM_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_CURRENT_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_ENABLE_BIT = common dso_local global i32 0, align 4
@GL_EVAL_BIT = common dso_local global i32 0, align 4
@GL_FOG_BIT = common dso_local global i32 0, align 4
@GL_HINT_BIT = common dso_local global i32 0, align 4
@GL_LIGHTING_BIT = common dso_local global i32 0, align 4
@GL_LINE_BIT = common dso_local global i32 0, align 4
@GL_LIST_BIT = common dso_local global i32 0, align 4
@GL_PIXEL_MODE_BIT = common dso_local global i32 0, align 4
@GL_POINT_BIT = common dso_local global i32 0, align 4
@GL_POLYGON_BIT = common dso_local global i32 0, align 4
@GL_POLYGON_STIPPLE_BIT = common dso_local global i32 0, align 4
@GL_SCISSOR_BIT = common dso_local global i32 0, align 4
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TEXTURE_BIT = common dso_local global i32 0, align 4
@GL_TRANSFORM_BIT = common dso_local global i32 0, align 4
@GL_VIEWPORT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_copy_context(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @GL_ACCUM_BUFFER_BIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 18
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 18
  %17 = call i32 @MEMCPY(i32* %14, i32* %16, i32 4)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 17
  %28 = call i32 @MEMCPY(i32* %25, i32* %27, i32 4)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GL_CURRENT_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 16
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 16
  %39 = call i32 @MEMCPY(i32* %36, i32* %38, i32 4)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 15
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 15
  %50 = call i32 @MEMCPY(i32* %47, i32* %49, i32 4)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GL_ENABLE_BIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GL_EVAL_BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 14
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 14
  %67 = call i32 @MEMCPY(i32* %64, i32* %66, i32 4)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GL_FOG_BIT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 13
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  %78 = call i32 @MEMCPY(i32* %75, i32* %77, i32 4)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @GL_HINT_BIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 12
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 12
  %89 = call i32 @MEMCPY(i32* %86, i32* %88, i32 4)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @GL_LIGHTING_BIT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 11
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 11
  %100 = call i32 @MEMCPY(i32* %97, i32* %99, i32 4)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @GL_LINE_BIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 10
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 10
  %111 = call i32 @MEMCPY(i32* %108, i32* %110, i32 4)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @GL_LIST_BIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 9
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 9
  %122 = call i32 @MEMCPY(i32* %119, i32* %121, i32 4)
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @GL_PIXEL_MODE_BIT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 8
  %133 = call i32 @MEMCPY(i32* %130, i32* %132, i32 4)
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @GL_POINT_BIT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 7
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 7
  %144 = call i32 @MEMCPY(i32* %141, i32* %143, i32 4)
  br label %145

145:                                              ; preds = %139, %134
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @GL_POLYGON_BIT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = call i32 @MEMCPY(i32* %152, i32* %154, i32 4)
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @GL_POLYGON_STIPPLE_BIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %179, %161
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 32
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  br label %179

179:                                              ; preds = %165
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %162

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182, %156
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @GL_SCISSOR_BIT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = call i32 @MEMCPY(i32* %190, i32* %192, i32 4)
  br label %194

194:                                              ; preds = %188, %183
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = call i32 @MEMCPY(i32* %201, i32* %203, i32 4)
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @GL_TEXTURE_BIT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = call i32 @MEMCPY(i32* %212, i32* %214, i32 4)
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @GL_TRANSFORM_BIT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = call i32 @MEMCPY(i32* %223, i32* %225, i32 4)
  br label %227

227:                                              ; preds = %221, %216
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @GL_VIEWPORT_BIT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = call i32 @MEMCPY(i32* %234, i32* %236, i32 4)
  br label %238

238:                                              ; preds = %232, %227
  ret void
}

declare dso_local i32 @MEMCPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
