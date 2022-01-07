; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson06/1/xdfm1/src/extr_fork.c_copy_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson06/1/xdfm1/src/extr_fork.c_copy_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.pt_regs = type { i64* }

@PF_KTHREAD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@nr_tasks = common dso_local global i32 0, align 4
@task = common dso_local global %struct.task_struct** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_process(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = call i32 (...) @preempt_disable()
  %14 = call i64 (...) @allocate_kernel_page()
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %15 to %struct.task_struct*
  store %struct.task_struct* %16, %struct.task_struct** %8, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %18 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %17)
  store %struct.pt_regs* %18, %struct.pt_regs** %10, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @PF_KTHREAD, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  br label %49

36:                                               ; preds = %22
  %37 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %38 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %37)
  store %struct.pt_regs* %38, %struct.pt_regs** %11, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %41 = bitcast %struct.pt_regs* %39 to i8*
  %42 = bitcast %struct.pt_regs* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %48 = call i32 @copy_virt_memory(%struct.task_struct* %47)
  br label %49

49:                                               ; preds = %36, %27
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @TASK_RUNNING, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load i64, i64* @ret_from_fork, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %73 = ptrtoint %struct.pt_regs* %72 to i64
  %74 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* @nr_tasks, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @nr_tasks, align 4
  store i32 %77, i32* %12, align 4
  %79 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %80 = load %struct.task_struct**, %struct.task_struct*** @task, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %80, i64 %82
  store %struct.task_struct* %79, %struct.task_struct** %83, align 8
  %84 = call i32 (...) @preempt_enable()
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %49, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @allocate_kernel_page(...) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copy_virt_memory(%struct.task_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
