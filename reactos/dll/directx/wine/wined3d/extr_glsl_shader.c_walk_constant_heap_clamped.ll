; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_walk_constant_heap_clamped.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_walk_constant_heap_clamped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_vec4 = type { i32 }
%struct.constant_heap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"walk_constant_heap_clamped()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_vec4*, i32*, %struct.constant_heap*, i8*, i64)* @walk_constant_heap_clamped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_constant_heap_clamped(%struct.wined3d_gl_info* %0, %struct.wined3d_vec4* %1, i32* %2, %struct.constant_heap* %3, i8* %4, i64 %5) #0 {
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
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_vec4* %1, %struct.wined3d_vec4** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.constant_heap* %3, %struct.constant_heap** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %18 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %19 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %14, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %172

29:                                               ; preds = %6
  %30 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %31 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  %38 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %44, i64 %46
  %48 = call i32 @apply_clamped_constant(%struct.wined3d_gl_info* %38, i32 %43, %struct.wined3d_vec4* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 -127, i8* %52, align 1
  br label %53

53:                                               ; preds = %169, %29
  %54 = load i32, i32* %13, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %170

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  switch i32 %62, label %169 [
    i32 129, label %63
    i32 128, label %113
    i32 130, label %164
  ]

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %68 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %63
  %72 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %73 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %71
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %14, align 4
  %84 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %85 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %98, i64 %100
  %102 = call i32 @apply_clamped_constant(%struct.wined3d_gl_info* %92, i32 %97, %struct.wined3d_vec4* %101)
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 -128, i8* %107, align 1
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 -127, i8* %111, align 1
  br label %169

112:                                              ; preds = %71, %63
  br label %113

113:                                              ; preds = %56, %112
  %114 = load i32, i32* %14, align 4
  %115 = shl i32 %114, 1
  %116 = add i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %119 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %113
  %123 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %124 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %122
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %14, align 4
  %135 = load %struct.constant_heap*, %struct.constant_heap** %10, align 8
  %136 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %15, align 4
  %143 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %15, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %149, i64 %151
  %153 = call i32 @apply_clamped_constant(%struct.wined3d_gl_info* %143, i32 %148, %struct.wined3d_vec4* %152)
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 -126, i8* %158, align 1
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 -127, i8* %162, align 1
  br label %169

163:                                              ; preds = %122, %113
  br label %164

164:                                              ; preds = %56, %163
  %165 = load i32, i32* %14, align 4
  %166 = lshr i32 %165, 1
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %56, %164, %133, %82
  br label %53

170:                                              ; preds = %53
  %171 = call i32 @checkGLcall(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %28
  ret void
}

declare dso_local i32 @apply_clamped_constant(%struct.wined3d_gl_info*, i32, %struct.wined3d_vec4*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
