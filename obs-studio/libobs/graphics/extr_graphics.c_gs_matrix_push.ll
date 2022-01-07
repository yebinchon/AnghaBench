; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_push.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.matrix4 = type { i32 }

@thread_graphics = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_matrix_push\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_matrix_push() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.matrix4, align 4
  %3 = alloca %struct.matrix4*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %1, align 8
  %5 = call i32 @gs_valid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = call %struct.matrix4* @top_matrix(%struct.TYPE_4__* %9)
  store %struct.matrix4* %10, %struct.matrix4** %3, align 8
  %11 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %12 = call i32 @memcpy(%struct.matrix4* %2, %struct.matrix4* %11, i32 4)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @da_push_back(i32 %15, %struct.matrix4* %2)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local %struct.matrix4* @top_matrix(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%struct.matrix4*, %struct.matrix4*, i32) #1

declare dso_local i32 @da_push_back(i32, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
