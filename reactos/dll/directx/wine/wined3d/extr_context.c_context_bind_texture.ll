; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, i64*, %struct.wined3d_gl_info*, %struct.TYPE_4__* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.TYPE_4__ = type { %struct.wined3d_dummy_textures }
%struct.wined3d_dummy_textures = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"glBindTexture\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected texture target %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bind texture\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_bind_texture(%struct.wined3d_context* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_dummy_textures*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.wined3d_dummy_textures* %14, %struct.wined3d_dummy_textures** %7, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 2
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %8, align 8
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 %34(i32 %36, i32 %37)
  br label %40

39:                                               ; preds = %3
  store i64 139, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %169

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  switch i64 %45, label %159 [
    i64 139, label %46
    i64 138, label %47
    i64 137, label %58
    i64 136, label %69
    i64 135, label %79
    i64 128, label %89
    i64 130, label %99
    i64 129, label %109
    i64 132, label %119
    i64 131, label %129
    i64 134, label %139
    i64 133, label %149
  ]

46:                                               ; preds = %44
  br label %162

47:                                               ; preds = %44
  %48 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %49 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %54 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %52(i32 138, i32 %55)
  %57 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %162

58:                                               ; preds = %44
  %59 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %60 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %65 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %63(i32 137, i32 %66)
  %68 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %162

69:                                               ; preds = %44
  %70 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %71 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32 (i32, i32)*, i32 (i32, i32)** %73, align 8
  %75 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %76 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %74(i32 136, i32 %77)
  br label %162

79:                                               ; preds = %44
  %80 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %81 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %86 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %84(i32 135, i32 %87)
  br label %162

89:                                               ; preds = %44
  %90 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %91 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %96 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 %94(i32 128, i32 %97)
  br label %162

99:                                               ; preds = %44
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %106 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %104(i32 130, i32 %107)
  br label %162

109:                                              ; preds = %44
  %110 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %111 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %116 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 %114(i32 129, i32 %117)
  br label %162

119:                                              ; preds = %44
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %126 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %124(i32 132, i32 %127)
  br label %162

129:                                              ; preds = %44
  %130 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %131 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %136 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 %134(i32 131, i32 %137)
  br label %162

139:                                              ; preds = %44
  %140 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %141 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32 (i32, i32)*, i32 (i32, i32)** %143, align 8
  %145 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %146 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 %144(i32 134, i32 %147)
  br label %162

149:                                              ; preds = %44
  %150 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %151 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32 (i32, i32)*, i32 (i32, i32)** %153, align 8
  %155 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %7, align 8
  %156 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 %154(i32 133, i32 %157)
  br label %162

159:                                              ; preds = %44
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %160)
  br label %162

162:                                              ; preds = %159, %149, %139, %129, %119, %109, %99, %89, %79, %69, %58, %47, %46
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %165 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %162, %40
  %170 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
