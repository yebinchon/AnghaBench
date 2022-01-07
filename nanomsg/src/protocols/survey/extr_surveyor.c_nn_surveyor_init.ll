; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/survey/extr_surveyor.c_nn_surveyor_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/survey/extr_surveyor.c_nn_surveyor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_surveyor = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nn_sockbase_vfptr = type { i32 }

@nn_surveyor_handler = common dso_local global i32 0, align 4
@nn_surveyor_shutdown = common dso_local global i32 0, align 4
@NN_SURVEYOR_STATE_IDLE = common dso_local global i32 0, align 4
@NN_SURVEYOR_SRC_DEADLINE_TIMER = common dso_local global i32 0, align 4
@NN_SURVEYOR_DEFAULT_DEADLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_surveyor*, %struct.nn_sockbase_vfptr*, i8*)* @nn_surveyor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_init(%struct.nn_surveyor* %0, %struct.nn_sockbase_vfptr* %1, i8* %2) #0 {
  %4 = alloca %struct.nn_surveyor*, align 8
  %5 = alloca %struct.nn_sockbase_vfptr*, align 8
  %6 = alloca i8*, align 8
  store %struct.nn_surveyor* %0, %struct.nn_surveyor** %4, align 8
  store %struct.nn_sockbase_vfptr* %1, %struct.nn_sockbase_vfptr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %8 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %7, i32 0, i32 7
  %9 = load %struct.nn_sockbase_vfptr*, %struct.nn_sockbase_vfptr** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @nn_xsurveyor_init(%struct.TYPE_2__* %8, %struct.nn_sockbase_vfptr* %9, i8* %10)
  %12 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %13 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %12, i32 0, i32 0
  %14 = load i32, i32* @nn_surveyor_handler, align 4
  %15 = load i32, i32* @nn_surveyor_shutdown, align 4
  %16 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %17 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @nn_sockbase_getctx(i32* %18)
  %20 = call i32 @nn_fsm_init_root(i32* %13, i32 %14, i32 %15, i32 %19)
  %21 = load i32, i32* @NN_SURVEYOR_STATE_IDLE, align 4
  %22 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %23 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %25 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %24, i32 0, i32 5
  %26 = call i32 @nn_random_generate(i32* %25, i32 4)
  %27 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %28 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %27, i32 0, i32 4
  %29 = load i32, i32* @NN_SURVEYOR_SRC_DEADLINE_TIMER, align 4
  %30 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %31 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %30, i32 0, i32 0
  %32 = call i32 @nn_timer_init(i32* %28, i32 %29, i32* %31)
  %33 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %34 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %33, i32 0, i32 3
  %35 = call i32 @nn_msg_init(i32* %34, i32 0)
  %36 = load i32, i32* @NN_SURVEYOR_DEFAULT_DEADLINE, align 4
  %37 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %38 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %40 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.nn_surveyor*, %struct.nn_surveyor** %4, align 8
  %42 = getelementptr inbounds %struct.nn_surveyor, %struct.nn_surveyor* %41, i32 0, i32 0
  %43 = call i32 @nn_fsm_start(i32* %42)
  ret void
}

declare dso_local i32 @nn_xsurveyor_init(%struct.TYPE_2__*, %struct.nn_sockbase_vfptr*, i8*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_sockbase_getctx(i32*) #1

declare dso_local i32 @nn_random_generate(i32*, i32) #1

declare dso_local i32 @nn_timer_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_msg_init(i32*, i32) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
