; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_texcoord2v.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_texcoord2v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vec2 = type { i32 }

@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"gs_texcoord2v\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gs_texcoord\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_texcoord2v(%struct.vec2* %0, i32 %1) #0 {
  %3 = alloca %struct.vec2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.vec2* %0, %struct.vec2** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %5, align 8
  %7 = call i32 @gs_valid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @validvertsize(%struct.TYPE_5__* %11, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %34

23:                                               ; preds = %10
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = load %struct.vec2*, %struct.vec2** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @da_push_back(i32 %32, %struct.vec2* %30)
  br label %34

34:                                               ; preds = %23, %22, %9
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local i32 @validvertsize(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @da_push_back(i32, %struct.vec2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
