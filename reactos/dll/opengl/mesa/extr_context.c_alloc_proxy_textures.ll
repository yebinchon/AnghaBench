; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_alloc_proxy_textures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_alloc_proxy_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8** }

@GL_FALSE = common dso_local global i64 0, align 8
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @alloc_proxy_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_proxy_textures(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = call i8* @gl_alloc_texture_object(i32* null, i32 0, i32 1)
  %7 = bitcast i8* %6 to %struct.TYPE_7__*
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @GL_FALSE, align 8
  store i64 %17, i64* %2, align 8
  br label %158

18:                                               ; preds = %1
  %19 = call i8* @gl_alloc_texture_object(i32* null, i32 0, i32 2)
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @gl_free_texture_object(i32* null, %struct.TYPE_7__* %33)
  %35 = load i64, i64* @GL_FALSE, align 8
  store i64 %35, i64* %2, align 8
  br label %158

36:                                               ; preds = %18
  %37 = load i64, i64* @GL_FALSE, align 8
  store i64 %37, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %85, %36
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = call i8* (...) @gl_alloc_texture_image()
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %43, i8** %51, align 8
  %52 = call i8* (...) @gl_alloc_texture_image()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %52, i8** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %42
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %71, %42
  %83 = load i64, i64* @GL_TRUE, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %5, align 8
  br label %38

88:                                               ; preds = %38
  %89 = load i64, i64* %4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %156

91:                                               ; preds = %88
  store i64 0, i64* %5, align 8
  br label %92

92:                                               ; preds = %141, %91
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %144

96:                                               ; preds = %92
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds i8*, i8** %102, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %96
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @gl_free_texture_image(i8* %116)
  br label %118

118:                                              ; preds = %107, %96
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %118
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @gl_free_texture_image(i8* %138)
  br label %140

140:                                              ; preds = %129, %118
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %5, align 8
  br label %92

144:                                              ; preds = %92
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = call i32 @gl_free_texture_object(i32* null, %struct.TYPE_7__* %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = call i32 @gl_free_texture_object(i32* null, %struct.TYPE_7__* %153)
  %155 = load i64, i64* @GL_FALSE, align 8
  store i64 %155, i64* %2, align 8
  br label %158

156:                                              ; preds = %88
  %157 = load i64, i64* @GL_TRUE, align 8
  store i64 %157, i64* %2, align 8
  br label %158

158:                                              ; preds = %156, %144, %29, %16
  %159 = load i64, i64* %2, align 8
  ret i64 %159
}

declare dso_local i8* @gl_alloc_texture_object(i32*, i32, i32) #1

declare dso_local i32 @gl_free_texture_object(i32*, %struct.TYPE_7__*) #1

declare dso_local i8* @gl_alloc_texture_image(...) #1

declare dso_local i32 @gl_free_texture_image(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
