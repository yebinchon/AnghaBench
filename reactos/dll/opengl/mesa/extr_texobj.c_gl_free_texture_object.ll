; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_free_texture_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texobj.c_gl_free_texture_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shared_state = type { i32, %struct.gl_texture_object* }
%struct.gl_texture_object = type { i64*, i64, %struct.gl_texture_object* }

@MAX_TEXTURE_LEVELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_free_texture_object(%struct.gl_shared_state* %0, %struct.gl_texture_object* %1) #0 {
  %3 = alloca %struct.gl_shared_state*, align 8
  %4 = alloca %struct.gl_texture_object*, align 8
  %5 = alloca %struct.gl_texture_object*, align 8
  %6 = alloca %struct.gl_texture_object*, align 8
  %7 = alloca i64, align 8
  store %struct.gl_shared_state* %0, %struct.gl_shared_state** %3, align 8
  store %struct.gl_texture_object* %1, %struct.gl_texture_object** %4, align 8
  %8 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %9 = call i32 @assert(%struct.gl_texture_object* %8)
  %10 = load %struct.gl_shared_state*, %struct.gl_shared_state** %3, align 8
  %11 = icmp ne %struct.gl_shared_state* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  store %struct.gl_texture_object* null, %struct.gl_texture_object** %5, align 8
  %13 = load %struct.gl_shared_state*, %struct.gl_shared_state** %3, align 8
  %14 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %13, i32 0, i32 1
  %15 = load %struct.gl_texture_object*, %struct.gl_texture_object** %14, align 8
  store %struct.gl_texture_object* %15, %struct.gl_texture_object** %6, align 8
  br label %16

16:                                               ; preds = %39, %12
  %17 = load %struct.gl_texture_object*, %struct.gl_texture_object** %6, align 8
  %18 = icmp ne %struct.gl_texture_object* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.gl_texture_object*, %struct.gl_texture_object** %6, align 8
  %21 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %22 = icmp eq %struct.gl_texture_object* %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.gl_texture_object*, %struct.gl_texture_object** %5, align 8
  %25 = icmp ne %struct.gl_texture_object* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %28 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %27, i32 0, i32 2
  %29 = load %struct.gl_texture_object*, %struct.gl_texture_object** %28, align 8
  %30 = load %struct.gl_texture_object*, %struct.gl_texture_object** %5, align 8
  %31 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %30, i32 0, i32 2
  store %struct.gl_texture_object* %29, %struct.gl_texture_object** %31, align 8
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %34 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %33, i32 0, i32 2
  %35 = load %struct.gl_texture_object*, %struct.gl_texture_object** %34, align 8
  %36 = load %struct.gl_shared_state*, %struct.gl_shared_state** %3, align 8
  %37 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %36, i32 0, i32 1
  store %struct.gl_texture_object* %35, %struct.gl_texture_object** %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %44

39:                                               ; preds = %19
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %6, align 8
  store %struct.gl_texture_object* %40, %struct.gl_texture_object** %5, align 8
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %6, align 8
  %42 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %41, i32 0, i32 2
  %43 = load %struct.gl_texture_object*, %struct.gl_texture_object** %42, align 8
  store %struct.gl_texture_object* %43, %struct.gl_texture_object** %6, align 8
  br label %16

44:                                               ; preds = %38, %16
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %47 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.gl_shared_state*, %struct.gl_shared_state** %3, align 8
  %52 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %55 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @HashRemove(i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %50, %45
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @MAX_TEXTURE_LEVELS, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %65 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %73 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @gl_free_texture_image(i64 %77)
  br label %79

79:                                               ; preds = %71, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.gl_texture_object*, %struct.gl_texture_object** %4, align 8
  %85 = call i32 @free(%struct.gl_texture_object* %84)
  ret void
}

declare dso_local i32 @assert(%struct.gl_texture_object*) #1

declare dso_local i32 @HashRemove(i32, i64) #1

declare dso_local i32 @gl_free_texture_image(i64) #1

declare dso_local i32 @free(%struct.gl_texture_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
