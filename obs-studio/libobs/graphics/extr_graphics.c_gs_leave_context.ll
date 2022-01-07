; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_leave_context.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_leave_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [17 x i8] c"gs_leave_context\00", align 1
@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_leave_context() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i64 @gs_valid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = call i32 @os_atomic_dec_long(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %1, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %14(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @thread_graphics, align 8
  br label %22

22:                                               ; preds = %9, %4
  br label %23

23:                                               ; preds = %22, %0
  ret void
}

declare dso_local i64 @gs_valid(i8*) #1

declare dso_local i32 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
