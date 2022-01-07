; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexParameterfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexParameterfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { float*, float, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { float*, float, i32, i32, i32, i32 }

@GL_TRUE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"glGetTexParameterfv(pname)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"glGetTexParameterfv(target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexParameterfv(%struct.TYPE_10__* %0, i32 %1, i32 %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %210 [
    i32 136, label %10
    i32 135, label %110
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %105 [
    i32 133, label %12
    i32 132, label %21
    i32 129, label %30
    i32 128, label %39
    i32 134, label %48
    i32 130, label %93
    i32 131, label %97
  ]

12:                                               ; preds = %10
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call float @ENUM_TO_FLOAT(i32 %18)
  %20 = load float*, float** %8, align 8
  store float %19, float* %20, align 4
  br label %109

21:                                               ; preds = %10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call float @ENUM_TO_FLOAT(i32 %27)
  %29 = load float*, float** %8, align 8
  store float %28, float* %29, align 4
  br label %109

30:                                               ; preds = %10
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call float @ENUM_TO_FLOAT(i32 %36)
  %38 = load float*, float** %8, align 8
  store float %37, float* %38, align 4
  br label %109

39:                                               ; preds = %10
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call float @ENUM_TO_FLOAT(i32 %45)
  %47 = load float*, float** %8, align 8
  store float %46, float* %47, align 4
  br label %109

48:                                               ; preds = %10
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  %57 = fdiv float %56, 2.550000e+02
  %58 = load float*, float** %8, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  store float %57, float* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  %67 = load float, float* %66, align 4
  %68 = fdiv float %67, 2.550000e+02
  %69 = load float*, float** %8, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  store float %68, float* %70, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = fdiv float %78, 2.550000e+02
  %80 = load float*, float** %8, align 8
  %81 = getelementptr inbounds float, float* %80, i64 2
  store float %79, float* %81, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 3
  %89 = load float, float* %88, align 4
  %90 = fdiv float %89, 2.550000e+02
  %91 = load float*, float** %8, align 8
  %92 = getelementptr inbounds float, float* %91, i64 3
  store float %90, float* %92, align 4
  br label %109

93:                                               ; preds = %10
  %94 = load i32, i32* @GL_TRUE, align 4
  %95 = call float @ENUM_TO_FLOAT(i32 %94)
  %96 = load float*, float** %8, align 8
  store float %95, float* %96, align 4
  br label %109

97:                                               ; preds = %10
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 8
  %104 = load float*, float** %8, align 8
  store float %103, float* %104, align 4
  br label %109

105:                                              ; preds = %10
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load i32, i32* @GL_INVALID_ENUM, align 4
  %108 = call i32 @gl_error(%struct.TYPE_10__* %106, i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %97, %93, %48, %39, %30, %21, %12
  br label %214

110:                                              ; preds = %4
  %111 = load i32, i32* %7, align 4
  switch i32 %111, label %205 [
    i32 133, label %112
    i32 132, label %121
    i32 129, label %130
    i32 128, label %139
    i32 134, label %148
    i32 130, label %193
    i32 131, label %197
  ]

112:                                              ; preds = %110
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call float @ENUM_TO_FLOAT(i32 %118)
  %120 = load float*, float** %8, align 8
  store float %119, float* %120, align 4
  br label %209

121:                                              ; preds = %110
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call float @ENUM_TO_FLOAT(i32 %127)
  %129 = load float*, float** %8, align 8
  store float %128, float* %129, align 4
  br label %209

130:                                              ; preds = %110
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call float @ENUM_TO_FLOAT(i32 %136)
  %138 = load float*, float** %8, align 8
  store float %137, float* %138, align 4
  br label %209

139:                                              ; preds = %110
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call float @ENUM_TO_FLOAT(i32 %145)
  %147 = load float*, float** %8, align 8
  store float %146, float* %147, align 4
  br label %209

148:                                              ; preds = %110
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds float, float* %154, i64 0
  %156 = load float, float* %155, align 4
  %157 = fdiv float %156, 2.550000e+02
  %158 = load float*, float** %8, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  store float %157, float* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load float*, float** %164, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = fdiv float %167, 2.550000e+02
  %169 = load float*, float** %8, align 8
  %170 = getelementptr inbounds float, float* %169, i64 1
  store float %168, float* %170, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load float*, float** %175, align 8
  %177 = getelementptr inbounds float, float* %176, i64 2
  %178 = load float, float* %177, align 4
  %179 = fdiv float %178, 2.550000e+02
  %180 = load float*, float** %8, align 8
  %181 = getelementptr inbounds float, float* %180, i64 2
  store float %179, float* %181, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load float*, float** %186, align 8
  %188 = getelementptr inbounds float, float* %187, i64 3
  %189 = load float, float* %188, align 4
  %190 = fdiv float %189, 2.550000e+02
  %191 = load float*, float** %8, align 8
  %192 = getelementptr inbounds float, float* %191, i64 3
  store float %190, float* %192, align 4
  br label %209

193:                                              ; preds = %110
  %194 = load i32, i32* @GL_TRUE, align 4
  %195 = call float @ENUM_TO_FLOAT(i32 %194)
  %196 = load float*, float** %8, align 8
  store float %195, float* %196, align 4
  br label %209

197:                                              ; preds = %110
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load float, float* %202, align 8
  %204 = load float*, float** %8, align 8
  store float %203, float* %204, align 4
  br label %209

205:                                              ; preds = %110
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = load i32, i32* @GL_INVALID_ENUM, align 4
  %208 = call i32 @gl_error(%struct.TYPE_10__* %206, i32 %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %197, %193, %148, %139, %130, %121, %112
  br label %214

210:                                              ; preds = %4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = load i32, i32* @GL_INVALID_ENUM, align 4
  %213 = call i32 @gl_error(%struct.TYPE_10__* %211, i32 %212, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %214

214:                                              ; preds = %210, %209, %109
  ret void
}

declare dso_local float @ENUM_TO_FLOAT(i32) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
