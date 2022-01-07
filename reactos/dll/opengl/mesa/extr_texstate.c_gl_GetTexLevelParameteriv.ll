; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexLevelParameteriv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexLevelParameteriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.gl_texture_image** }
%struct.gl_texture_image = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.gl_texture_image** }
%struct.TYPE_10__ = type { %struct.gl_texture_image** }
%struct.TYPE_9__ = type { %struct.gl_texture_image** }

@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"glGetTexLevelParameter[if]v\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"glGetTexLevelParameter[if]v(pname)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"glGetTexLevelParameter[if]v(target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexLevelParameteriv(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.gl_texture_image*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = load i32, i32* @GL_INVALID_VALUE, align 4
  %21 = call i32 @gl_error(%struct.TYPE_14__* %19, i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %178

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %174 [
    i32 140, label %24
    i32 139, label %59
    i32 142, label %99
    i32 141, label %134
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %30, i64 %31
  %33 = load %struct.gl_texture_image*, %struct.gl_texture_image** %32, align 8
  store %struct.gl_texture_image* %33, %struct.gl_texture_image** %11, align 8
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %54 [
    i32 128, label %35
    i32 135, label %40
    i32 136, label %45
    i32 129, label %50
    i32 134, label %50
    i32 137, label %50
    i32 138, label %50
    i32 131, label %50
    i32 130, label %50
    i32 132, label %52
  ]

35:                                               ; preds = %24
  %36 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %37 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  br label %58

40:                                               ; preds = %24
  %41 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %42 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  br label %58

45:                                               ; preds = %24
  %46 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %47 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  br label %58

50:                                               ; preds = %24, %24, %24, %24, %24, %24
  %51 = load i64*, i64** %10, align 8
  store i64 8, i64* %51, align 8
  br label %58

52:                                               ; preds = %24
  %53 = load i64*, i64** %10, align 8
  store i64 8, i64* %53, align 8
  br label %58

54:                                               ; preds = %24
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load i32, i32* @GL_INVALID_ENUM, align 4
  %57 = call i32 @gl_error(%struct.TYPE_14__* %55, i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %52, %50, %45, %40, %35
  br label %178

59:                                               ; preds = %22
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %65, i64 %66
  %68 = load %struct.gl_texture_image*, %struct.gl_texture_image** %67, align 8
  store %struct.gl_texture_image* %68, %struct.gl_texture_image** %11, align 8
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %94 [
    i32 128, label %70
    i32 133, label %75
    i32 135, label %80
    i32 136, label %85
    i32 129, label %90
    i32 134, label %90
    i32 137, label %90
    i32 138, label %90
    i32 131, label %90
    i32 130, label %90
    i32 132, label %92
  ]

70:                                               ; preds = %59
  %71 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %72 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %10, align 8
  store i64 %73, i64* %74, align 8
  br label %98

75:                                               ; preds = %59
  %76 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %77 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  br label %98

80:                                               ; preds = %59
  %81 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %82 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  br label %98

85:                                               ; preds = %59
  %86 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %87 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  br label %98

90:                                               ; preds = %59, %59, %59, %59, %59, %59
  %91 = load i64*, i64** %10, align 8
  store i64 8, i64* %91, align 8
  br label %98

92:                                               ; preds = %59
  %93 = load i64*, i64** %10, align 8
  store i64 8, i64* %93, align 8
  br label %98

94:                                               ; preds = %59
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = load i32, i32* @GL_INVALID_ENUM, align 4
  %97 = call i32 @gl_error(%struct.TYPE_14__* %95, i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %92, %90, %85, %80, %75, %70
  br label %178

99:                                               ; preds = %22
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %105, i64 %106
  %108 = load %struct.gl_texture_image*, %struct.gl_texture_image** %107, align 8
  store %struct.gl_texture_image* %108, %struct.gl_texture_image** %11, align 8
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %129 [
    i32 128, label %110
    i32 135, label %115
    i32 136, label %120
    i32 129, label %125
    i32 134, label %125
    i32 137, label %125
    i32 138, label %125
    i32 131, label %125
    i32 130, label %125
    i32 132, label %127
  ]

110:                                              ; preds = %99
  %111 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %112 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %10, align 8
  store i64 %113, i64* %114, align 8
  br label %133

115:                                              ; preds = %99
  %116 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %117 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %10, align 8
  store i64 %118, i64* %119, align 8
  br label %133

120:                                              ; preds = %99
  %121 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %122 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %10, align 8
  store i64 %123, i64* %124, align 8
  br label %133

125:                                              ; preds = %99, %99, %99, %99, %99, %99
  %126 = load i64*, i64** %10, align 8
  store i64 8, i64* %126, align 8
  br label %133

127:                                              ; preds = %99
  %128 = load i64*, i64** %10, align 8
  store i64 8, i64* %128, align 8
  br label %133

129:                                              ; preds = %99
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = load i32, i32* @GL_INVALID_ENUM, align 4
  %132 = call i32 @gl_error(%struct.TYPE_14__* %130, i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %127, %125, %120, %115, %110
  br label %178

134:                                              ; preds = %22
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %140, i64 %141
  %143 = load %struct.gl_texture_image*, %struct.gl_texture_image** %142, align 8
  store %struct.gl_texture_image* %143, %struct.gl_texture_image** %11, align 8
  %144 = load i32, i32* %9, align 4
  switch i32 %144, label %169 [
    i32 128, label %145
    i32 133, label %150
    i32 135, label %155
    i32 136, label %160
    i32 129, label %165
    i32 134, label %165
    i32 137, label %165
    i32 138, label %165
    i32 131, label %165
    i32 130, label %165
    i32 132, label %167
  ]

145:                                              ; preds = %134
  %146 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %147 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %10, align 8
  store i64 %148, i64* %149, align 8
  br label %173

150:                                              ; preds = %134
  %151 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %152 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %10, align 8
  store i64 %153, i64* %154, align 8
  br label %173

155:                                              ; preds = %134
  %156 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %157 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %10, align 8
  store i64 %158, i64* %159, align 8
  br label %173

160:                                              ; preds = %134
  %161 = load %struct.gl_texture_image*, %struct.gl_texture_image** %11, align 8
  %162 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %10, align 8
  store i64 %163, i64* %164, align 8
  br label %173

165:                                              ; preds = %134, %134, %134, %134, %134, %134
  %166 = load i64*, i64** %10, align 8
  store i64 8, i64* %166, align 8
  br label %173

167:                                              ; preds = %134
  %168 = load i64*, i64** %10, align 8
  store i64 8, i64* %168, align 8
  br label %173

169:                                              ; preds = %134
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = load i32, i32* @GL_INVALID_ENUM, align 4
  %172 = call i32 @gl_error(%struct.TYPE_14__* %170, i32 %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %167, %165, %160, %155, %150, %145
  br label %178

174:                                              ; preds = %22
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = load i32, i32* @GL_INVALID_ENUM, align 4
  %177 = call i32 @gl_error(%struct.TYPE_14__* %175, i32 %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %18, %174, %173, %133, %98, %58
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_14__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
