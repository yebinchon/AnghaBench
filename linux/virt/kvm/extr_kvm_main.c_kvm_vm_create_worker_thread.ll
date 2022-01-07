; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_create_worker_thread.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_vm_create_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.task_struct = type { i32 }
%struct.kvm_vm_worker_thread_context = type { i64, i32, i32, i32, i32, %struct.kvm* }

@current = common dso_local global i32 0, align 4
@kvm_vm_worker_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_create_worker_thread(%struct.kvm* %0, i32 %1, i64 %2, i8* %3, %struct.task_struct** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.task_struct**, align 8
  %12 = alloca %struct.kvm_vm_worker_thread_context, align 8
  %13 = alloca %struct.task_struct*, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.task_struct** %4, %struct.task_struct*** %11, align 8
  %14 = bitcast %struct.kvm_vm_worker_thread_context* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.task_struct**, %struct.task_struct*** %11, align 8
  store %struct.task_struct* null, %struct.task_struct** %15, align 8
  %16 = load %struct.kvm*, %struct.kvm** %7, align 8
  %17 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 5
  store %struct.kvm* %16, %struct.kvm** %17, align 8
  %18 = load i32, i32* @current, align 4
  %19 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 2
  %25 = call i32 @init_completion(i32* %24)
  %26 = load i32, i32* @kvm_vm_worker_thread, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @task_pid_nr(i32 %28)
  %30 = call %struct.task_struct* @kthread_run(i32 %26, %struct.kvm_vm_worker_thread_context* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  store %struct.task_struct* %30, %struct.task_struct** %13, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %32 = call i64 @IS_ERR(%struct.task_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %36 = call i32 @PTR_ERR(%struct.task_struct* %35)
  store i32 %36, i32* %6, align 4
  br label %53

37:                                               ; preds = %5
  %38 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %39 = icmp eq %struct.task_struct* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 2
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %49 = load %struct.task_struct**, %struct.task_struct*** %11, align 8
  store %struct.task_struct* %48, %struct.task_struct** %49, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds %struct.kvm_vm_worker_thread_context, %struct.kvm_vm_worker_thread_context* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %34
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_completion(i32*) #2

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.kvm_vm_worker_thread_context*, i8*, i8*, i32) #2

declare dso_local i32 @task_pid_nr(i32) #2

declare dso_local i64 @IS_ERR(%struct.task_struct*) #2

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @wait_for_completion(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
