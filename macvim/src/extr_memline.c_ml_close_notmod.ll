; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_memline.c_ml_close_notmod.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_memline.c_ml_close_notmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@firstbuf = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_close_notmod() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @firstbuf, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  br label %3

3:                                                ; preds = %15, %0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = call i32 @bufIsChanged(%struct.TYPE_5__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @ml_close(%struct.TYPE_5__* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %1, align 8
  br label %3

19:                                               ; preds = %3
  ret void
}

declare dso_local i32 @bufIsChanged(%struct.TYPE_5__*) #1

declare dso_local i32 @ml_close(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
