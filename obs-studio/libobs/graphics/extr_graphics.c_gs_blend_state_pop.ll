; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_blend_state_pop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_blend_state_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.blend_state = type { i32, i32, i32, i32, i32 }

@thread_graphics = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"gs_blend_state_pop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_blend_state_pop() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.blend_state*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_graphics, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = call i32 @gs_valid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %37

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.blend_state* @da_end(i32 %10)
  store %struct.blend_state* %11, %struct.blend_state** %2, align 8
  %12 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %13 = icmp ne %struct.blend_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %37

15:                                               ; preds = %7
  %16 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %17 = getelementptr inbounds %struct.blend_state, %struct.blend_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gs_enable_blending(i32 %18)
  %20 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %21 = getelementptr inbounds %struct.blend_state, %struct.blend_state* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %24 = getelementptr inbounds %struct.blend_state, %struct.blend_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %27 = getelementptr inbounds %struct.blend_state, %struct.blend_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.blend_state*, %struct.blend_state** %2, align 8
  %30 = getelementptr inbounds %struct.blend_state, %struct.blend_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gs_blend_function_separate(i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @da_pop_back(i32 %35)
  br label %37

37:                                               ; preds = %15, %14, %6
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local %struct.blend_state* @da_end(i32) #1

declare dso_local i32 @gs_enable_blending(i32) #1

declare dso_local i32 @gs_blend_function_separate(i32, i32, i32, i32) #1

declare dso_local i32 @da_pop_back(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
