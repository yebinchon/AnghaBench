; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_stencil_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_copy_stencil_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { float, float, i64, i64, i64, i64*, i64 }
%struct.TYPE_9__ = type { i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glCopyPixels\00", align 1
@GL_FALSE = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64, i64, i64, i64, i64, i64)* @copy_stencil_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_stencil_pixels(%struct.TYPE_11__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %24 = load i32, i32* @MAX_WIDTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %37 = call i32 @gl_error(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %201

38:                                               ; preds = %7
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 8
  %43 = fcmp oeq float %42, 1.000000e+00
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fcmp oeq float %48, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @GL_FALSE, align 8
  store i64 %51, i64* %22, align 8
  br label %54

52:                                               ; preds = %44, %38
  %53 = load i64, i64* @GL_TRUE, align 8
  store i64 %53, i64* %22, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %63, %64
  %66 = sub nsw i64 %65, 1
  store i64 %66, i64* %18, align 8
  store i64 -1, i64* %19, align 8
  br label %70

67:                                               ; preds = %54
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %18, align 8
  store i64 1, i64* %19, align 8
  br label %70

70:                                               ; preds = %67, %58
  store i64 0, i64* %21, align 8
  br label %71

71:                                               ; preds = %191, %70
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %200

75:                                               ; preds = %71
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %17, align 8
  %80 = call i32 @gl_read_stencil_span(%struct.TYPE_11__* %76, i64 %77, i64 %78, i64 %79, i64* %27)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %75
  store i64 0, i64* %20, align 8
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i64, i64* %20, align 8
  %93 = getelementptr inbounds i64, i64* %27, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 0, %98
  %100 = lshr i64 %94, %99
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %100, %104
  %106 = load i64, i64* %20, align 8
  %107 = getelementptr inbounds i64, i64* %27, i64 %106
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %91
  %109 = load i64, i64* %20, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %20, align 8
  br label %87

111:                                              ; preds = %87
  br label %137

112:                                              ; preds = %75
  store i64 0, i64* %20, align 8
  br label %113

113:                                              ; preds = %133, %112
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i64, i64* %20, align 8
  %119 = getelementptr inbounds i64, i64* %27, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = shl i64 %120, %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %125, %129
  %131 = load i64, i64* %20, align 8
  %132 = getelementptr inbounds i64, i64* %27, i64 %131
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %117
  %134 = load i64, i64* %20, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %20, align 8
  br label %113

136:                                              ; preds = %113
  br label %137

137:                                              ; preds = %136, %111
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %137
  store i64 0, i64* %20, align 8
  br label %144

144:                                              ; preds = %170, %143
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %11, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %144
  %149 = load i64, i64* %20, align 8
  %150 = getelementptr inbounds i64, i64* %27, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %151, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* %20, align 8
  %163 = getelementptr inbounds i64, i64* %27, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %20, align 8
  %168 = getelementptr inbounds i64, i64* %27, i64 %167
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %157, %148
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %20, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %20, align 8
  br label %144

173:                                              ; preds = %144
  br label %174

174:                                              ; preds = %173, %137
  %175 = load i64, i64* %22, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %14, align 8
  %183 = call i32 @gl_write_zoomed_stencil_span(%struct.TYPE_11__* %178, i64 %179, i64 %180, i64 %181, i64* %27, i64 %182)
  br label %190

184:                                              ; preds = %174
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %18, align 8
  %189 = call i32 @gl_write_stencil_span(%struct.TYPE_11__* %185, i64 %186, i64 %187, i64 %188, i64* %27)
  br label %190

190:                                              ; preds = %184, %177
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %21, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %21, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* %17, align 8
  %196 = add nsw i64 %195, %194
  store i64 %196, i64* %17, align 8
  %197 = load i64, i64* %19, align 8
  %198 = load i64, i64* %18, align 8
  %199 = add nsw i64 %198, %197
  store i64 %199, i64* %18, align 8
  br label %71

200:                                              ; preds = %71
  store i32 0, i32* %23, align 4
  br label %201

201:                                              ; preds = %200, %34
  %202 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %23, align 4
  switch i32 %203, label %205 [
    i32 0, label %204
    i32 1, label %204
  ]

204:                                              ; preds = %201, %201
  ret void

205:                                              ; preds = %201
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_error(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @gl_read_stencil_span(%struct.TYPE_11__*, i64, i64, i64, i64*) #2

declare dso_local i32 @gl_write_zoomed_stencil_span(%struct.TYPE_11__*, i64, i64, i64, i64*, i64) #2

declare dso_local i32 @gl_write_stencil_span(%struct.TYPE_11__*, i64, i64, i64, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
