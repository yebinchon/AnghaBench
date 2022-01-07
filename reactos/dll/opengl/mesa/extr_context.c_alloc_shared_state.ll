; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_alloc_shared_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_alloc_shared_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shared_state = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gl_shared_state* ()* @alloc_shared_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gl_shared_state* @alloc_shared_state() #0 {
  %1 = alloca %struct.gl_shared_state*, align 8
  %2 = alloca %struct.gl_shared_state*, align 8
  %3 = call i64 @calloc(i32 1, i32 32)
  %4 = inttoptr i64 %3 to %struct.gl_shared_state*
  store %struct.gl_shared_state* %4, %struct.gl_shared_state** %2, align 8
  %5 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %6 = icmp ne %struct.gl_shared_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.gl_shared_state* null, %struct.gl_shared_state** %1, align 8
  br label %89

8:                                                ; preds = %0
  %9 = call i8* (...) @NewHashTable()
  %10 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %11 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = call i8* (...) @NewHashTable()
  %13 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %14 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %16 = call i8* @gl_alloc_texture_object(%struct.gl_shared_state* %15, i32 0, i32 1)
  %17 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %18 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %20 = call i8* @gl_alloc_texture_object(%struct.gl_shared_state* %19, i32 0, i32 2)
  %21 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %22 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %24 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %8
  %28 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %29 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %34 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %39 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %87, label %42

42:                                               ; preds = %37, %32, %27, %8
  %43 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %44 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %49 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @DeleteHashTable(i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %54 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %59 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @DeleteHashTable(i8* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %64 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %69 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %70 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @gl_free_texture_object(%struct.gl_shared_state* %68, i8* %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %75 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %80 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %81 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @gl_free_texture_object(%struct.gl_shared_state* %79, i8* %82)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  %86 = call i32 @free(%struct.gl_shared_state* %85)
  store %struct.gl_shared_state* null, %struct.gl_shared_state** %1, align 8
  br label %89

87:                                               ; preds = %37
  %88 = load %struct.gl_shared_state*, %struct.gl_shared_state** %2, align 8
  store %struct.gl_shared_state* %88, %struct.gl_shared_state** %1, align 8
  br label %89

89:                                               ; preds = %87, %84, %7
  %90 = load %struct.gl_shared_state*, %struct.gl_shared_state** %1, align 8
  ret %struct.gl_shared_state* %90
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @NewHashTable(...) #1

declare dso_local i8* @gl_alloc_texture_object(%struct.gl_shared_state*, i32, i32) #1

declare dso_local i32 @DeleteHashTable(i8*) #1

declare dso_local i32 @gl_free_texture_object(%struct.gl_shared_state*, i8*) #1

declare dso_local i32 @free(%struct.gl_shared_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
