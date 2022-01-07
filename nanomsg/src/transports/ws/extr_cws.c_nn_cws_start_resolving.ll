; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_start_resolving.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_start_resolving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_cws = type { i32, i32, i32, i32, i32, i32 }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@NN_CWS_STATE_RESOLVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_cws*)* @nn_cws_start_resolving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cws_start_resolving(%struct.nn_cws* %0) #0 {
  %2 = alloca %struct.nn_cws*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.nn_cws* %0, %struct.nn_cws** %2, align 8
  store i64 4, i64* %4, align 8
  %6 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %7 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NN_SOL_SOCKET, align 4
  %10 = load i32, i32* @NN_IPV4ONLY, align 4
  %11 = call i32 @nn_ep_getopt(i32 %8, i32 %9, i32 %10, i32* %3, i64* %4)
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i32 @nn_assert(i32 %14)
  %16 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %17 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %16, i32 0, i32 4
  %18 = call i8* @nn_chunkref_data(i32* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @nn_assert(i32 %22)
  %24 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %25 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %24, i32 0, i32 3
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %28 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %32 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %31, i32 0, i32 1
  %33 = call i32 @nn_dns_start(i32* %25, i8* %26, i32 %29, i32 %30, i32* %32)
  %34 = load i32, i32* @NN_CWS_STATE_RESOLVING, align 4
  %35 = load %struct.nn_cws*, %struct.nn_cws** %2, align 8
  %36 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @nn_ep_getopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @nn_chunkref_data(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nn_dns_start(i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
