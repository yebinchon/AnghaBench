; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_setup.c_test_shm_mq_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_setup.c_test_shm_mq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@cleanup_background_workers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_shm_mq_setup(i32 %0, i32 %1, i32** %2, i32** %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @setup_dynamic_shared_memory(i32 %16, i32 %17, i32** %11, i32** %12, i32** %13, i32** %14)
  %19 = load i32*, i32** %11, align 8
  %20 = load i32**, i32*** %8, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.TYPE_6__* @setup_background_workers(i32 %21, i32* %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %15, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @shm_mq_attach(i32* %24, i32* %25, i32 %30)
  %32 = load i32**, i32*** %9, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @shm_mq_attach(i32* %33, i32* %34, i32 %42)
  %44 = load i32**, i32*** %10, align 8
  store i32* %43, i32** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @wait_for_workers_to_become_ready(%struct.TYPE_6__* %45, i32* %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @cleanup_background_workers, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %51 = call i32 @PointerGetDatum(%struct.TYPE_6__* %50)
  %52 = call i32 @cancel_on_dsm_detach(i32* %48, i32 %49, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %54 = call i32 @pfree(%struct.TYPE_6__* %53)
  ret void
}

declare dso_local i32 @setup_dynamic_shared_memory(i32, i32, i32**, i32**, i32**, i32**) #1

declare dso_local %struct.TYPE_6__* @setup_background_workers(i32, i32*) #1

declare dso_local i32* @shm_mq_attach(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_workers_to_become_ready(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cancel_on_dsm_detach(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_6__*) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
