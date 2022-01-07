; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelStorei.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_PixelStorei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glPixelStore\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glPixelStore(param)\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PixelStorei(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %13 = call i32 @gl_error(%struct.TYPE_10__* %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %193

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %186 [
    i32 134, label %16
    i32 138, label %28
    i32 137, label %40
    i32 136, label %53
    i32 135, label %66
    i32 139, label %79
    i32 128, label %101
    i32 132, label %113
    i32 131, label %125
    i32 130, label %138
    i32 129, label %151
    i32 133, label %164
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** @GL_TRUE, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** @GL_FALSE, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  store i8* %24, i8** %27, align 8
  br label %190

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** @GL_TRUE, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** @GL_FALSE, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  br label %190

40:                                               ; preds = %14
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* @GL_INVALID_VALUE, align 4
  %46 = call i32 @gl_error(%struct.TYPE_10__* %44, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %43
  br label %190

53:                                               ; preds = %14
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load i32, i32* @GL_INVALID_VALUE, align 4
  %59 = call i32 @gl_error(%struct.TYPE_10__* %57, i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %190

66:                                               ; preds = %14
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load i32, i32* @GL_INVALID_VALUE, align 4
  %72 = call i32 @gl_error(%struct.TYPE_10__* %70, i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %78

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %69
  br label %190

79:                                               ; preds = %14
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %96

91:                                               ; preds = %88, %85, %82, %79
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = load i32, i32* @GL_INVALID_VALUE, align 4
  %99 = call i32 @gl_error(%struct.TYPE_10__* %97, i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %91
  br label %190

101:                                              ; preds = %14
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** @GL_TRUE, align 8
  br label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** @GL_FALSE, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  store i8* %109, i8** %112, align 8
  br label %190

113:                                              ; preds = %14
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i8*, i8** @GL_TRUE, align 8
  br label %120

118:                                              ; preds = %113
  %119 = load i8*, i8** @GL_FALSE, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i8* [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  store i8* %121, i8** %124, align 8
  br label %190

125:                                              ; preds = %14
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = load i32, i32* @GL_INVALID_VALUE, align 4
  %131 = call i32 @gl_error(%struct.TYPE_10__* %129, i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %132, %128
  br label %190

138:                                              ; preds = %14
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = load i32, i32* @GL_INVALID_VALUE, align 4
  %144 = call i32 @gl_error(%struct.TYPE_10__* %142, i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %150

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %141
  br label %190

151:                                              ; preds = %14
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = load i32, i32* @GL_INVALID_VALUE, align 4
  %157 = call i32 @gl_error(%struct.TYPE_10__* %155, i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %163

158:                                              ; preds = %151
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %158, %154
  br label %190

164:                                              ; preds = %14
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %176, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %176, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 8
  br i1 %175, label %176, label %181

176:                                              ; preds = %173, %170, %167, %164
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 4
  br label %185

181:                                              ; preds = %173
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = load i32, i32* @GL_INVALID_VALUE, align 4
  %184 = call i32 @gl_error(%struct.TYPE_10__* %182, i32 %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %185

185:                                              ; preds = %181, %176
  br label %190

186:                                              ; preds = %14
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = load i32, i32* @GL_INVALID_ENUM, align 4
  %189 = call i32 @gl_error(%struct.TYPE_10__* %187, i32 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %190

190:                                              ; preds = %186, %185, %163, %150, %137, %120, %108, %100, %78, %65, %52, %35, %23
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = call i32 @update_drawpixels_state(%struct.TYPE_10__* %191)
  br label %193

193:                                              ; preds = %190, %10
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @update_drawpixels_state(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
