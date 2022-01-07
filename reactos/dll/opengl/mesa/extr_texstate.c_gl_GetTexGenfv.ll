; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexGenfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexGenfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glGetTexGenfv\00", align 1
@GL_TEXTURE_GEN_MODE = common dso_local global i32 0, align 4
@GL_OBJECT_PLANE = common dso_local global i32 0, align 4
@GL_EYE_PLANE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"glGetTexGenfv(pname)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"glGetTexGenfv(coord)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexGenfv(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %15 = call i32 @gl_error(%struct.TYPE_7__* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %186

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %182 [
    i32 129, label %18
    i32 128, label %59
    i32 130, label %100
    i32 131, label %141
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ENUM_TO_FLOAT(i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  br label %58

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @COPY_4V(i32* %35, i32 %39)
  br label %57

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GL_EYE_PLANE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @COPY_4V(i32* %46, i32 %50)
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* @GL_INVALID_ENUM, align 4
  %55 = call i32 @gl_error(%struct.TYPE_7__* %53, i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %186

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57, %22
  br label %186

59:                                               ; preds = %16
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ENUM_TO_FLOAT(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  br label %99

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @COPY_4V(i32* %76, i32 %80)
  br label %98

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @GL_EYE_PLANE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @COPY_4V(i32* %87, i32 %91)
  br label %97

93:                                               ; preds = %82
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = load i32, i32* @GL_INVALID_ENUM, align 4
  %96 = call i32 @gl_error(%struct.TYPE_7__* %94, i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %186

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %98, %63
  br label %186

100:                                              ; preds = %16
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ENUM_TO_FLOAT(i32 %108)
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  br label %140

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @COPY_4V(i32* %117, i32 %121)
  br label %139

123:                                              ; preds = %112
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @GL_EYE_PLANE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @COPY_4V(i32* %128, i32 %132)
  br label %138

134:                                              ; preds = %123
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = load i32, i32* @GL_INVALID_ENUM, align 4
  %137 = call i32 @gl_error(%struct.TYPE_7__* %135, i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %186

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %139, %104
  br label %186

141:                                              ; preds = %16
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ENUM_TO_FLOAT(i32 %149)
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %150, i32* %152, align 4
  br label %181

153:                                              ; preds = %141
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32*, i32** %8, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @COPY_4V(i32* %158, i32 %162)
  br label %180

164:                                              ; preds = %153
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @GL_EYE_PLANE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @COPY_4V(i32* %169, i32 %173)
  br label %179

175:                                              ; preds = %164
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = load i32, i32* @GL_INVALID_ENUM, align 4
  %178 = call i32 @gl_error(%struct.TYPE_7__* %176, i32 %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %186

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %157
  br label %181

181:                                              ; preds = %180, %145
  br label %186

182:                                              ; preds = %16
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = load i32, i32* @GL_INVALID_ENUM, align 4
  %185 = call i32 @gl_error(%struct.TYPE_7__* %183, i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %12, %52, %93, %134, %175, %182, %181, %140, %99, %58
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @ENUM_TO_FLOAT(i32) #1

declare dso_local i32 @COPY_4V(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
