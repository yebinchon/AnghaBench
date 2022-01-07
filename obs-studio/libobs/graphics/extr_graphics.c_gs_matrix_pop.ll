; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_pop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@thread_graphics = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"gs_matrix_pop\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Tried to pop last matrix on stack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_matrix_pop() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_graphics, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = call i32 @gs_valid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* @LOG_ERROR, align 4
  %13 = call i32 @blog(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %26

14:                                               ; preds = %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @da_erase(i32 %17, i64 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %14, %11, %5
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @da_erase(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
