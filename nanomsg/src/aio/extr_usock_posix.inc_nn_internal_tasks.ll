; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_internal_tasks.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_internal_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i32, i32, i32 }

@NN_WORKER_TASK_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_usock*, i32, i32)* @nn_internal_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_internal_tasks(%struct.nn_usock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_usock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %90 [
    i32 128, label %9
    i32 129, label %21
    i32 131, label %33
    i32 130, label %48
    i32 132, label %69
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NN_WORKER_TASK_EXECUTE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @nn_assert(i32 %13)
  %15 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %16 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %19 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %18, i32 0, i32 0
  %20 = call i32 @nn_worker_set_out(i32 %17, i32* %19)
  store i32 1, i32* %4, align 4
  br label %91

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NN_WORKER_TASK_EXECUTE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @nn_assert(i32 %25)
  %27 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %28 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %31 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %30, i32 0, i32 0
  %32 = call i32 @nn_worker_set_in(i32 %29, i32* %31)
  store i32 1, i32* %4, align 4
  br label %91

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NN_WORKER_TASK_EXECUTE, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @nn_assert(i32 %37)
  %39 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %40 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %43 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %46 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %45, i32 0, i32 0
  %47 = call i32 @nn_worker_add_fd(i32 %41, i32 %44, i32* %46)
  store i32 1, i32* %4, align 4
  br label %91

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NN_WORKER_TASK_EXECUTE, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @nn_assert(i32 %52)
  %54 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %55 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %58 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %61 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %60, i32 0, i32 0
  %62 = call i32 @nn_worker_add_fd(i32 %56, i32 %59, i32* %61)
  %63 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %64 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %67 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %66, i32 0, i32 0
  %68 = call i32 @nn_worker_set_out(i32 %65, i32* %67)
  store i32 1, i32* %4, align 4
  br label %91

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NN_WORKER_TASK_EXECUTE, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @nn_assert(i32 %73)
  %75 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %76 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %79 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %82 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %81, i32 0, i32 0
  %83 = call i32 @nn_worker_add_fd(i32 %77, i32 %80, i32* %82)
  %84 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %85 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %88 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %87, i32 0, i32 0
  %89 = call i32 @nn_worker_set_in(i32 %86, i32* %88)
  store i32 1, i32* %4, align 4
  br label %91

90:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %69, %48, %33, %21, %9
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_worker_set_out(i32, i32*) #1

declare dso_local i32 @nn_worker_set_in(i32, i32*) #1

declare dso_local i32 @nn_worker_add_fd(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
