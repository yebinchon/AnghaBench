; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_change_plan_targetlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_change_plan_targetlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @change_plan_targetlist(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @is_projection_capable_plan(%struct.TYPE_7__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @tlist_same_exprs(i32* %11, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i1 [ false, %17 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call %struct.TYPE_7__* @inject_projection_plan(%struct.TYPE_7__* %18, i32* %19, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %4, align 8
  br label %40

31:                                               ; preds = %10, %3
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %41
}

declare dso_local i32 @is_projection_capable_plan(%struct.TYPE_7__*) #1

declare dso_local i32 @tlist_same_exprs(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @inject_projection_plan(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
