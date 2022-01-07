; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_viewport_pop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_viewport_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.gs_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gs_viewport_pop\00", align 1
@thread_graphics = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_viewport_pop() #0 {
  %1 = alloca %struct.gs_rect*, align 8
  %2 = call i32 @gs_valid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %36

5:                                                ; preds = %0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  br label %36

12:                                               ; preds = %5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gs_rect* @da_end(i32 %16)
  store %struct.gs_rect* %17, %struct.gs_rect** %1, align 8
  %18 = load %struct.gs_rect*, %struct.gs_rect** %1, align 8
  %19 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gs_rect*, %struct.gs_rect** %1, align 8
  %22 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gs_rect*, %struct.gs_rect** %1, align 8
  %25 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gs_rect*, %struct.gs_rect** %1, align 8
  %28 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gs_set_viewport(i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @da_pop_back(i32 %34)
  br label %36

36:                                               ; preds = %12, %11, %4
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local %struct.gs_rect* @da_end(i32) #1

declare dso_local i32 @gs_set_viewport(i32, i32, i32, i32) #1

declare dso_local i32 @da_pop_back(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
