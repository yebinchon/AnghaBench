; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_streamhdr.c_nn_streamhdr_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_streamhdr.c_nn_streamhdr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_streamhdr = type { i32, i64, %struct.nn_pipebase*, %struct.nn_usock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.nn_usock = type { i32 }
%struct.nn_pipebase = type { i32 }

@NN_STREAMHDR_SRC_USOCK = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\00SP\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_start(%struct.nn_streamhdr* %0, %struct.nn_usock* %1, %struct.nn_pipebase* %2) #0 {
  %4 = alloca %struct.nn_streamhdr*, align 8
  %5 = alloca %struct.nn_usock*, align 8
  %6 = alloca %struct.nn_pipebase*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nn_streamhdr* %0, %struct.nn_streamhdr** %4, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %5, align 8
  store %struct.nn_pipebase* %2, %struct.nn_pipebase** %6, align 8
  %9 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %10 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %9, i32 0, i32 3
  %11 = load %struct.nn_usock*, %struct.nn_usock** %10, align 8
  %12 = icmp eq %struct.nn_usock* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %15 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @nn_assert(i32 %21)
  %23 = load i32, i32* @NN_STREAMHDR_SRC_USOCK, align 4
  %24 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %25 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %28 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %27, i32 0, i32 0
  %29 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %30 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %33 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %34 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %33, i32 0, i32 4
  %35 = call i32 @nn_usock_swap_owner(%struct.nn_usock* %32, %struct.TYPE_2__* %34)
  %36 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %37 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %38 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %37, i32 0, i32 3
  store %struct.nn_usock* %36, %struct.nn_usock** %38, align 8
  %39 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %40 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %41 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %40, i32 0, i32 2
  store %struct.nn_pipebase* %39, %struct.nn_pipebase** %41, align 8
  store i64 4, i64* %7, align 8
  %42 = load %struct.nn_pipebase*, %struct.nn_pipebase** %6, align 8
  %43 = load i32, i32* @NN_SOL_SOCKET, align 4
  %44 = load i32, i32* @NN_PROTOCOL, align 4
  %45 = call i32 @nn_pipebase_getopt(%struct.nn_pipebase* %42, i32 %43, i32 %44, i32* %8, i64* %7)
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 4
  %48 = zext i1 %47 to i32
  %49 = call i32 @nn_assert(i32 %48)
  %50 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %51 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i64 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %54 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %55 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @nn_puts(i64 %57, i32 %58)
  %60 = load %struct.nn_streamhdr*, %struct.nn_streamhdr** %4, align 8
  %61 = getelementptr inbounds %struct.nn_streamhdr, %struct.nn_streamhdr* %60, i32 0, i32 0
  %62 = call i32 @nn_fsm_start(i32* %61)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_swap_owner(%struct.nn_usock*, %struct.TYPE_2__*) #1

declare dso_local i32 @nn_pipebase_getopt(%struct.nn_pipebase*, i32, i32, i32*, i64*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @nn_puts(i64, i32) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
