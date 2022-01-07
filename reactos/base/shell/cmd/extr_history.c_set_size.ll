; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_history.c_set_size.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_history.c_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Top = common dso_local global %struct.TYPE_2__* null, align 8
@Bottom = common dso_local global i64 0, align 8
@size = common dso_local global i64 0, align 8
@max_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_size(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Top, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @Bottom, align 8
  %8 = icmp ne i64 %7, 0
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ false, %1 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  br label %13

13:                                               ; preds = %17, %9
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @size, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Top, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @del(i32 %20)
  br label %13

22:                                               ; preds = %13
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* @max_size, align 8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
