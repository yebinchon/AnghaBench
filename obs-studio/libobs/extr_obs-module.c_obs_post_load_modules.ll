; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_post_load_modules.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_post_load_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (...)*, %struct.TYPE_3__* }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_post_load_modules() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  br label %5

5:                                                ; preds = %21, %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = icmp ne i32 (...)* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  br label %20

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %1, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
