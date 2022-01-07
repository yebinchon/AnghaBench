; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_priolist = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@NN_PRIOLIST_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_init(%struct.nn_priolist* %0) #0 {
  %2 = alloca %struct.nn_priolist*, align 8
  %3 = alloca i32, align 4
  store %struct.nn_priolist* %0, %struct.nn_priolist** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NN_PRIOLIST_SLOTS, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load %struct.nn_priolist*, %struct.nn_priolist** %2, align 8
  %10 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @nn_list_init(i32* %15)
  %17 = load %struct.nn_priolist*, %struct.nn_priolist** %2, align 8
  %18 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.nn_priolist*, %struct.nn_priolist** %2, align 8
  %29 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  ret void
}

declare dso_local i32 @nn_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
