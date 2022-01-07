; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_fq.c_nn_fq_recv.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_fq.c_nn_fq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_fq = type { i32 }
%struct.nn_msg = type { i32 }
%struct.nn_pipe = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NN_PIPE_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_fq_recv(%struct.nn_fq* %0, %struct.nn_msg* %1, %struct.nn_pipe** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_fq*, align 8
  %6 = alloca %struct.nn_msg*, align 8
  %7 = alloca %struct.nn_pipe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nn_pipe*, align 8
  store %struct.nn_fq* %0, %struct.nn_fq** %5, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %6, align 8
  store %struct.nn_pipe** %2, %struct.nn_pipe*** %7, align 8
  %10 = load %struct.nn_fq*, %struct.nn_fq** %5, align 8
  %11 = getelementptr inbounds %struct.nn_fq, %struct.nn_fq* %10, i32 0, i32 0
  %12 = call %struct.nn_pipe* @nn_priolist_getpipe(i32* %11)
  store %struct.nn_pipe* %12, %struct.nn_pipe** %9, align 8
  %13 = load %struct.nn_pipe*, %struct.nn_pipe** %9, align 8
  %14 = icmp ne %struct.nn_pipe* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @nn_slow(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.nn_pipe*, %struct.nn_pipe** %9, align 8
  %24 = load %struct.nn_msg*, %struct.nn_msg** %6, align 8
  %25 = call i32 @nn_pipe_recv(%struct.nn_pipe* %23, %struct.nn_msg* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @errnum_assert(i32 %28, i32 %30)
  %32 = load %struct.nn_pipe**, %struct.nn_pipe*** %7, align 8
  %33 = icmp ne %struct.nn_pipe** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.nn_pipe*, %struct.nn_pipe** %9, align 8
  %36 = load %struct.nn_pipe**, %struct.nn_pipe*** %7, align 8
  store %struct.nn_pipe* %35, %struct.nn_pipe** %36, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.nn_fq*, %struct.nn_fq** %5, align 8
  %39 = getelementptr inbounds %struct.nn_fq, %struct.nn_fq* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NN_PIPE_RELEASE, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @nn_priolist_advance(i32* %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NN_PIPE_RELEASE, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.nn_pipe* @nn_priolist_getpipe(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_pipe_recv(%struct.nn_pipe*, %struct.nn_msg*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_priolist_advance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
