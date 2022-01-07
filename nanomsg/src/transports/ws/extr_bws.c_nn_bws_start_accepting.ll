; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_bws.c_nn_bws_start_accepting.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_bws.c_nn_bws_start_accepting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_bws = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"aws\00", align 1
@NN_BWS_SRC_AWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_bws*)* @nn_bws_start_accepting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bws_start_accepting(%struct.nn_bws* %0) #0 {
  %2 = alloca %struct.nn_bws*, align 8
  store %struct.nn_bws* %0, %struct.nn_bws** %2, align 8
  %3 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %4 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @nn_assert(i32 %7)
  %9 = call i32* @nn_alloc(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %11 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %13 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @alloc_assert(i32* %14)
  %16 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %17 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @NN_BWS_SRC_AWS, align 4
  %20 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %21 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %24 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %23, i32 0, i32 2
  %25 = call i32 @nn_aws_init(i32* %18, i32 %19, i32 %22, i32* %24)
  %26 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %27 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.nn_bws*, %struct.nn_bws** %2, align 8
  %30 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %29, i32 0, i32 0
  %31 = call i32 @nn_aws_start(i32* %28, i32* %30)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(i32*) #1

declare dso_local i32 @nn_aws_init(i32*, i32, i32, i32*) #1

declare dso_local i32 @nn_aws_start(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
