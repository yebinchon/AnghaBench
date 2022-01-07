; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexSubImage2D.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_teximage.c_gl_CopyTexSubImage2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.gl_texture_image** }
%struct.gl_texture_image = type { i64, i64, i64, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage2D\00", align 1
@GL_TEXTURE_2D = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"glCopyTexSubImage2D(target)\00", align 1
@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"glCopyTexSubImage2D(level)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"glCopyTexSubImage2D(width)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"glCopyTexSubImage2D(height)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"glCopyTexSubImage2D(xoffset)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"glCopyTexSubImage2D(yoffset)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"glCopyTexSubImage2D(xoffset+width)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"glCopyTexSubImage2D(yoffset+height)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_CopyTexSubImage2D(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.gl_texture_image*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_10__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %26 = call i32 @gl_error(%struct.TYPE_10__* %24, i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %146

27:                                               ; preds = %9
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @GL_TEXTURE_2D, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = load i32, i32* @GL_INVALID_ENUM, align 4
  %34 = call i32 @gl_error(%struct.TYPE_10__* %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %146

35:                                               ; preds = %27
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = load i32, i32* @GL_INVALID_VALUE, align 4
  %45 = call i32 @gl_error(%struct.TYPE_10__* %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %146

46:                                               ; preds = %38
  %47 = load i64, i64* %17, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = load i32, i32* @GL_INVALID_VALUE, align 4
  %52 = call i32 @gl_error(%struct.TYPE_10__* %50, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %146

53:                                               ; preds = %46
  %54 = load i64, i64* %18, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = load i32, i32* @GL_INVALID_VALUE, align 4
  %59 = call i32 @gl_error(%struct.TYPE_10__* %57, i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %146

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %66, i64 %67
  %69 = load %struct.gl_texture_image*, %struct.gl_texture_image** %68, align 8
  store %struct.gl_texture_image* %69, %struct.gl_texture_image** %19, align 8
  %70 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %71 = icmp ne %struct.gl_texture_image* %70, null
  br i1 %71, label %72, label %142

72:                                               ; preds = %60
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %75 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 0, %76
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = load i32, i32* @GL_INVALID_VALUE, align 4
  %82 = call i32 @gl_error(%struct.TYPE_10__* %80, i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %146

83:                                               ; preds = %72
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %86 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 0, %87
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = load i32, i32* @GL_INVALID_VALUE, align 4
  %93 = call i32 @gl_error(%struct.TYPE_10__* %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %146

94:                                               ; preds = %83
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %17, align 8
  %97 = add i64 %95, %96
  %98 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %99 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %102 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = icmp ugt i64 %97, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = load i32, i32* @GL_INVALID_VALUE, align 4
  %109 = call i32 @gl_error(%struct.TYPE_10__* %107, i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %146

110:                                              ; preds = %94
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %18, align 8
  %113 = add i64 %111, %112
  %114 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %115 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %118 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = icmp ugt i64 %113, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = load i32, i32* @GL_INVALID_VALUE, align 4
  %125 = call i32 @gl_error(%struct.TYPE_10__* %123, i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %146

126:                                              ; preds = %110
  %127 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %128 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %133 = load %struct.gl_texture_image*, %struct.gl_texture_image** %19, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @copy_tex_sub_image(%struct.TYPE_10__* %132, %struct.gl_texture_image* %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %131, %126
  br label %146

142:                                              ; preds = %60
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %145 = call i32 @gl_error(%struct.TYPE_10__* %143, i32 %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %23, %31, %42, %49, %56, %79, %90, %106, %122, %142, %141
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_10__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @copy_tex_sub_image(%struct.TYPE_10__*, %struct.gl_texture_image*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
