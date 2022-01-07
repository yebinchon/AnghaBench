; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_alloc_texture_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_alloc_texture_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i32, i32, float, i32*, i32, %struct.gl_texture_object*, i8*, i8*, i32, i32, i8*, i8* }
%struct.gl_shared_state = type { i32, %struct.gl_texture_object* }

@GL_REPEAT = common dso_local global i8* null, align 8
@GL_NEAREST_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gl_texture_object* @gl_alloc_texture_object(%struct.gl_shared_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gl_shared_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gl_texture_object*, align 8
  store %struct.gl_shared_state* %0, %struct.gl_shared_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 2
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i1 [ false, %3 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i64 @calloc(i32 1, i32 80)
  %18 = inttoptr i64 %17 to %struct.gl_texture_object*
  store %struct.gl_texture_object* %18, %struct.gl_texture_object** %7, align 8
  %19 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %20 = icmp ne %struct.gl_texture_object* %19, null
  br i1 %20, label %21, label %88

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %24 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %27 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** @GL_REPEAT, align 8
  %29 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %30 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %29, i32 0, i32 11
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @GL_REPEAT, align 8
  %32 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %33 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @GL_NEAREST_MIPMAP_LINEAR, align 4
  %35 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %36 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @GL_LINEAR, align 4
  %38 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %39 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %41 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %40, i32 0, i32 2
  store float 0.000000e+00, float* %41, align 8
  %42 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %43 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 255, i32* %45, align 4
  %46 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %47 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 255, i32* %49, align 4
  %50 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %51 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 255, i32* %53, align 4
  %54 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %55 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 255, i32* %57, align 4
  %58 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %59 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %58, i32 0, i32 4
  store i32 1, i32* %59, align 8
  %60 = load i8*, i8** @GL_RGBA, align 8
  %61 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %62 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @GL_RGBA, align 8
  %64 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %65 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %67 = icmp ne %struct.gl_shared_state* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %21
  %69 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %70 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %69, i32 0, i32 1
  %71 = load %struct.gl_texture_object*, %struct.gl_texture_object** %70, align 8
  %72 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %73 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %72, i32 0, i32 5
  store %struct.gl_texture_object* %71, %struct.gl_texture_object** %73, align 8
  %74 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %75 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %76 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %75, i32 0, i32 1
  store %struct.gl_texture_object* %74, %struct.gl_texture_object** %76, align 8
  br label %77

77:                                               ; preds = %68, %21
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %82 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  %86 = call i32 @HashInsert(i32 %83, i32 %84, %struct.gl_texture_object* %85)
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %13
  %89 = load %struct.gl_texture_object*, %struct.gl_texture_object** %7, align 8
  ret %struct.gl_texture_object* %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @HashInsert(i32, i32, %struct.gl_texture_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
