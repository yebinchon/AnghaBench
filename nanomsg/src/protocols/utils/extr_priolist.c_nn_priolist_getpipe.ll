; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_getpipe.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_getpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipe = type { i32 }
%struct.nn_priolist = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nn_pipe* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_pipe* @nn_priolist_getpipe(%struct.nn_priolist* %0) #0 {
  %2 = alloca %struct.nn_pipe*, align 8
  %3 = alloca %struct.nn_priolist*, align 8
  store %struct.nn_priolist* %0, %struct.nn_priolist** %3, align 8
  %4 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %5 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i64 @nn_slow(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.nn_pipe* null, %struct.nn_pipe** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %14 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %17 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.nn_pipe*, %struct.nn_pipe** %24, align 8
  store %struct.nn_pipe* %25, %struct.nn_pipe** %2, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.nn_pipe*, %struct.nn_pipe** %2, align 8
  ret %struct.nn_pipe* %27
}

declare dso_local i64 @nn_slow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
