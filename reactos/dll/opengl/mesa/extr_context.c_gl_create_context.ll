; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_create_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_gl_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_20__, %struct.TYPE_19__, i32*, %struct.TYPE_21__*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8* }

@GL_BACK = common dso_local global i8* null, align 8
@GL_FRONT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @gl_create_context(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i32 @assert(i32 0)
  %10 = call i32 @assert(i32 1)
  %11 = call i32 @assert(i32 1)
  %12 = call i32 @assert(i32 0)
  %13 = call i32 @assert(i32 1)
  %14 = call i32 @assert(i32 1)
  %15 = call i32 (...) @gl_init_math()
  %16 = call i32 (...) @gl_init_lists()
  %17 = call i32 (...) @gl_init_eval()
  %18 = call i64 @calloc(i32 1, i32 72)
  %19 = inttoptr i64 %18 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %21 = icmp ne %struct.TYPE_22__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %126

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %29, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 7
  store i32* null, i32** %31, align 8
  %32 = call %struct.TYPE_22__* (...) @gl_alloc_vb()
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 3
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %34, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = icmp ne %struct.TYPE_22__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %23
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %41 = call i32 @free(%struct.TYPE_22__* %40)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %126

42:                                               ; preds = %23
  %43 = call %struct.TYPE_22__* (...) @gl_alloc_pb()
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %45, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_22__* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = call i32 @free(%struct.TYPE_22__* %55)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %126

57:                                               ; preds = %42
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = icmp ne %struct.TYPE_22__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 4
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %65, align 8
  br label %86

66:                                               ; preds = %57
  %67 = call %struct.TYPE_18__* (...) @alloc_shared_state()
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 4
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = icmp ne %struct.TYPE_18__* %72, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = call i32 @free(%struct.TYPE_22__* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_22__* %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = call i32 @free(%struct.TYPE_22__* %83)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %126

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %94 = call i32 @initialize_context(%struct.TYPE_22__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %86
  %100 = load i8*, i8** @GL_BACK, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @GL_BACK, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %117

108:                                              ; preds = %86
  %109 = load i8*, i8** @GL_FRONT, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @GL_FRONT, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %99
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = call i32 @gl_init_api_function_pointers(%struct.TYPE_22__* %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %4, align 8
  br label %126

126:                                              ; preds = %117, %74, %50, %39, %22
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %127
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gl_init_math(...) #1

declare dso_local i32 @gl_init_lists(...) #1

declare dso_local i32 @gl_init_eval(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.TYPE_22__* @gl_alloc_vb(...) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @gl_alloc_pb(...) #1

declare dso_local %struct.TYPE_18__* @alloc_shared_state(...) #1

declare dso_local i32 @initialize_context(%struct.TYPE_22__*) #1

declare dso_local i32 @gl_init_api_function_pointers(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
