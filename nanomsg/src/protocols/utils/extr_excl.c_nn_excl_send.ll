; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_send.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_excl = type { i32* }
%struct.nn_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NN_PIPE_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_send(%struct.nn_excl* %0, %struct.nn_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_excl*, align 8
  %5 = alloca %struct.nn_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.nn_excl* %0, %struct.nn_excl** %4, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %5, align 8
  %7 = load %struct.nn_excl*, %struct.nn_excl** %4, align 8
  %8 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @nn_slow(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.nn_excl*, %struct.nn_excl** %4, align 8
  %20 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %23 = call i32 @nn_pipe_send(i32* %21, %struct.nn_msg* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @errnum_assert(i32 %26, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NN_PIPE_RELEASE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load %struct.nn_excl*, %struct.nn_excl** %4, align 8
  %36 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NN_PIPE_RELEASE, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_pipe_send(i32*, %struct.nn_msg*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
