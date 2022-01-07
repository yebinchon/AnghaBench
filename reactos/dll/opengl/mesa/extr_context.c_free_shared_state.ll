; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_free_shared_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_free_shared_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shared_state = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.gl_shared_state*)* @free_shared_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_shared_state(i32* %0, %struct.gl_shared_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gl_shared_state*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.gl_shared_state* %1, %struct.gl_shared_state** %4, align 8
  br label %6

6:                                                ; preds = %2, %18
  %7 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %8 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @HashFirstEntry(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @gl_destroy_list(i32* %14, i64 %15)
  br label %18

17:                                               ; preds = %6
  br label %19

18:                                               ; preds = %13
  br label %6

19:                                               ; preds = %17
  %20 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %21 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DeleteHashTable(i32 %22)
  br label %24

24:                                               ; preds = %29, %19
  %25 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %26 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %31 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %32 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gl_free_texture_object(%struct.gl_shared_state* %30, i64 %33)
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %37 = getelementptr inbounds %struct.gl_shared_state, %struct.gl_shared_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DeleteHashTable(i32 %38)
  %40 = load %struct.gl_shared_state*, %struct.gl_shared_state** %4, align 8
  %41 = call i32 @free(%struct.gl_shared_state* %40)
  ret void
}

declare dso_local i64 @HashFirstEntry(i32) #1

declare dso_local i32 @gl_destroy_list(i32*, i64) #1

declare dso_local i32 @DeleteHashTable(i32) #1

declare dso_local i32 @gl_free_texture_object(%struct.gl_shared_state*, i64) #1

declare dso_local i32 @free(%struct.gl_shared_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
