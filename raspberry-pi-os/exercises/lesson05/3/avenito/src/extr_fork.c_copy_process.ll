; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/avenito/src/extr_fork.c_copy_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/avenito/src/extr_fork.c_copy_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.pt_regs = type { i64, i64* }

@PF_KTHREAD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@nr_tasks = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_process(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = call i32 (...) @preempt_disable()
  %15 = call i64 (...) @get_free_page()
  %16 = inttoptr i64 %15 to %struct.task_struct*
  store %struct.task_struct* %16, %struct.task_struct** %10, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %99

20:                                               ; preds = %4
  %21 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %22 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %21)
  store %struct.pt_regs* %22, %struct.pt_regs** %11, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %24 = ptrtoint %struct.pt_regs* %23 to i64
  %25 = call i32 @memzero(i64 %24, i32 16)
  %26 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 3
  %28 = ptrtoint %struct.TYPE_2__* %27 to i64
  %29 = call i32 @memzero(i64 %28, i32 4)
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PF_KTHREAD, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  br label %62

43:                                               ; preds = %20
  %44 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %45 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %44)
  store %struct.pt_regs* %45, %struct.pt_regs** %12, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %48 = bitcast %struct.pt_regs* %46 to i8*
  %49 = bitcast %struct.pt_regs* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %43, %34
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @TASK_RUNNING, align 4
  %72 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i64, i64* @ret_from_fork, align 8
  %82 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i64 %81, i64* %84, align 8
  %85 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %86 = ptrtoint %struct.pt_regs* %85 to i64
  %87 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i64 %86, i64* %89, align 8
  %90 = load i32, i32* @nr_tasks, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @nr_tasks, align 4
  store i32 %90, i32* %13, align 4
  %92 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %93 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %93, i64 %95
  store %struct.task_struct* %92, %struct.task_struct** %96, align 8
  %97 = call i32 (...) @preempt_enable()
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %62, %19
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @get_free_page(...) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @memzero(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
