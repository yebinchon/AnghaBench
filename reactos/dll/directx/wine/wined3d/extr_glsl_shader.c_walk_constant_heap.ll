; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_walk_constant_heap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_walk_constant_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_vec4 = type { i32 }
%struct.constant_heap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"walk_constant_heap()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_vec4*, i32*, %struct.constant_heap*, i8*, i64)* @walk_constant_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_constant_heap(%struct.wined3d_gl_info* %0, %struct.wined3d_vec4* %1, i32* %2, %struct.constant_heap* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_vec4*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.constant_heap*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_vec4* %1, %struct.wined3d_vec4** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.constant_heap* %3, %struct.constant_heap** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %20 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %21 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %16, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %211

31:                                               ; preds = %6
  %32 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %33 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %14, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %31
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 -127, i8* %52, align 1
  br label %53

53:                                               ; preds = %187, %48
  %54 = load i32, i32* %15, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %188

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  switch i32 %62, label %187 [
    i32 129, label %63
    i32 128, label %122
    i32 130, label %182
  ]

63:                                               ; preds = %56
  %64 = load i32, i32* %16, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %68 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %121

71:                                               ; preds = %63
  %72 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %73 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %71
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %16, align 4
  %84 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %85 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %111

98:                                               ; preds = %82
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 -128, i8* %116, align 1
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 -127, i8* %120, align 1
  br label %187

121:                                              ; preds = %71, %63
  br label %122

122:                                              ; preds = %56, %121
  %123 = load i32, i32* %16, align 4
  %124 = shl i32 %123, 1
  %125 = add i32 %124, 1
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %128 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %181

131:                                              ; preds = %122
  %132 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %133 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %19, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %131
  %143 = load i32, i32* %19, align 4
  store i32 %143, i32* %16, align 4
  %144 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %145 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %17, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %17, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %171

158:                                              ; preds = %142
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ugt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %168, %164
  br label %171

171:                                              ; preds = %170, %142
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 -126, i8* %176, align 1
  %177 = load i8*, i8** %11, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 -127, i8* %180, align 1
  br label %187

181:                                              ; preds = %131, %122
  br label %182

182:                                              ; preds = %56, %181
  %183 = load i32, i32* %16, align 4
  %184 = lshr i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %56, %182, %171, %111
  br label %53

188:                                              ; preds = %53
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp ule i32 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %188
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %13, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sub i32 %198, %199
  %201 = add i32 %200, 1
  %202 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %8, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %202, i64 %204
  %206 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %205, i32 0, i32 0
  %207 = call i32 @glUniform4fv(i32 %197, i32 %201, i32* %206)
  %208 = call i32 @GL_EXTCALL(i32 %207)
  br label %209

209:                                              ; preds = %192, %188
  %210 = call i32 @checkGLcall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %30
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
