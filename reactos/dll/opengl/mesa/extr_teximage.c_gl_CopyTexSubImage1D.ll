; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexSubImage1D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexSubImage1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.gl_texture_image** }
%struct.gl_texture_image = type { i64, i64, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage1D\00", align 1
@GL_TEXTURE_1D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"glCopyTexSubImage1D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"glCopyTexSubImage1D(level)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"glCopyTexSubImage1D(width)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"glCopyTexSubImage1D(xoffset)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"glCopyTexSubImage1D(xoffset+width)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_CopyTexSubImage1D(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.gl_texture_image*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %22 = call i32 @gl_error(%struct.TYPE_10__* %20, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %106

23:                                               ; preds = %7
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @GL_TEXTURE_1D, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = load i32, i32* @GL_INVALID_ENUM, align 4
  %30 = call i32 @gl_error(%struct.TYPE_10__* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %106

31:                                               ; preds = %23
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = load i32, i32* @GL_INVALID_VALUE, align 4
  %41 = call i32 @gl_error(%struct.TYPE_10__* %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %106

42:                                               ; preds = %34
  %43 = load i64, i64* %14, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = load i32, i32* @GL_INVALID_VALUE, align 4
  %48 = call i32 @gl_error(%struct.TYPE_10__* %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %106

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %55, i64 %56
  %58 = load %struct.gl_texture_image*, %struct.gl_texture_image** %57, align 8
  store %struct.gl_texture_image* %58, %struct.gl_texture_image** %15, align 8
  %59 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %60 = icmp ne %struct.gl_texture_image* %59, null
  br i1 %60, label %61, label %102

61:                                               ; preds = %49
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %64 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 0, %65
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = load i32, i32* @GL_INVALID_VALUE, align 4
  %71 = call i32 @gl_error(%struct.TYPE_10__* %69, i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %106

72:                                               ; preds = %61
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %77 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %80 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = icmp ugt i64 %75, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = load i32, i32* @GL_INVALID_VALUE, align 4
  %87 = call i32 @gl_error(%struct.TYPE_10__* %85, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %106

88:                                               ; preds = %72
  %89 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %90 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = load %struct.gl_texture_image*, %struct.gl_texture_image** %15, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @copy_tex_sub_image(%struct.TYPE_10__* %94, %struct.gl_texture_image* %95, i64 %96, i32 1, i64 %97, i64 %98, i64 %99, i32 0)
  br label %101

101:                                              ; preds = %93, %88
  br label %106

102:                                              ; preds = %49
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %105 = call i32 @gl_error(%struct.TYPE_10__* %103, i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %19, %27, %38, %45, %68, %84, %102, %101
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @copy_tex_sub_image(%struct.TYPE_10__*, %struct.gl_texture_image*, i64, i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
