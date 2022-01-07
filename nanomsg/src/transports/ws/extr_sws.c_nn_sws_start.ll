; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sws = type { i32, i8*, i8*, i32, i32, %struct.nn_usock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.nn_usock = type { i32 }

@NN_SWS_SRC_USOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sws_start(%struct.nn_sws* %0, %struct.nn_usock* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.nn_sws*, align 8
  %8 = alloca %struct.nn_usock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nn_sws* %0, %struct.nn_sws** %7, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %14 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %13, i32 0, i32 5
  %15 = load %struct.nn_usock*, %struct.nn_usock** %14, align 8
  %16 = icmp eq %struct.nn_usock* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %19 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br label %23

23:                                               ; preds = %17, %6
  %24 = phi i1 [ false, %6 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @nn_assert(i32 %25)
  %27 = load i32, i32* @NN_SWS_SRC_USOCK, align 4
  %28 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %29 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %32 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %31, i32 0, i32 3
  %33 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %34 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.nn_usock*, %struct.nn_usock** %8, align 8
  %37 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %38 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %37, i32 0, i32 6
  %39 = call i32 @nn_usock_swap_owner(%struct.nn_usock* %36, %struct.TYPE_2__* %38)
  %40 = load %struct.nn_usock*, %struct.nn_usock** %8, align 8
  %41 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %42 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %41, i32 0, i32 5
  store %struct.nn_usock* %40, %struct.nn_usock** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %45 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %48 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %51 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %54 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nn_sws*, %struct.nn_sws** %7, align 8
  %56 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %55, i32 0, i32 3
  %57 = call i32 @nn_fsm_start(i32* %56)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_swap_owner(%struct.nn_usock*, %struct.TYPE_2__*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
