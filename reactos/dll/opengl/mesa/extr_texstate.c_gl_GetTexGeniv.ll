; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexGeniv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texstate.c_gl_GetTexGeniv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glGetTexGeniv\00", align 1
@GL_TEXTURE_GEN_MODE = common dso_local global i32 0, align 4
@GL_OBJECT_PLANE = common dso_local global i32 0, align 4
@GL_EYE_PLANE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"glGetTexGeniv(pname)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"glGetTexGeniv(coord)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetTexGeniv(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  br label %182

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %178 [
    i32 129, label %18
    i32 128, label %58
    i32 130, label %98
    i32 131, label %138
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  br label %57

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @COPY_4V(i32* %34, i32 %38)
  br label %56

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GL_EYE_PLANE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @COPY_4V(i32* %45, i32 %49)
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i32, i32* @GL_INVALID_ENUM, align 4
  %54 = call i32 @gl_error(%struct.TYPE_7__* %52, i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %182

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %22
  br label %182

58:                                               ; preds = %16
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  br label %97

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @COPY_4V(i32* %74, i32 %78)
  br label %96

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GL_EYE_PLANE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @COPY_4V(i32* %85, i32 %89)
  br label %95

91:                                               ; preds = %80
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32, i32* @GL_INVALID_ENUM, align 4
  %94 = call i32 @gl_error(%struct.TYPE_7__* %92, i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %182

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %73
  br label %97

97:                                               ; preds = %96, %62
  br label %182

98:                                               ; preds = %16
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  br label %137

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @COPY_4V(i32* %114, i32 %118)
  br label %136

120:                                              ; preds = %109
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @GL_EYE_PLANE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @COPY_4V(i32* %125, i32 %129)
  br label %135

131:                                              ; preds = %120
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = load i32, i32* @GL_INVALID_ENUM, align 4
  %134 = call i32 @gl_error(%struct.TYPE_7__* %132, i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %182

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %136, %102
  br label %182

138:                                              ; preds = %16
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @GL_TEXTURE_GEN_MODE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %146, i32* %148, align 4
  br label %177

149:                                              ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @GL_OBJECT_PLANE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @COPY_4V(i32* %154, i32 %158)
  br label %176

160:                                              ; preds = %149
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @GL_EYE_PLANE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32*, i32** %8, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @COPY_4V(i32* %165, i32 %169)
  br label %175

171:                                              ; preds = %160
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = load i32, i32* @GL_INVALID_ENUM, align 4
  %174 = call i32 @gl_error(%struct.TYPE_7__* %172, i32 %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %182

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %153
  br label %177

177:                                              ; preds = %176, %142
  br label %182

178:                                              ; preds = %16
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = load i32, i32* @GL_INVALID_ENUM, align 4
  %181 = call i32 @gl_error(%struct.TYPE_7__* %179, i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %12, %51, %91, %131, %171, %178, %177, %137, %97, %57
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @COPY_4V(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
