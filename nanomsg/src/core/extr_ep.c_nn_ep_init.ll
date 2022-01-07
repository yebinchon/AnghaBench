; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_ep.c_nn_ep_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_ep.c_nn_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32, i32, i32, i32, i32, i64, %struct.nn_sock*, i32 }
%struct.nn_sock = type { i32, i32 }
%struct.nn_transport = type { i32 (%struct.nn_ep.0*)*, i32 (%struct.nn_ep.1*)* }
%struct.nn_ep.0 = type opaque
%struct.nn_ep.1 = type opaque

@nn_ep_handler = common dso_local global i32 0, align 4
@nn_ep_shutdown = common dso_local global i32 0, align 4
@NN_EP_STATE_IDLE = common dso_local global i32 0, align 4
@NN_SOCKADDR_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ep_init(%struct.nn_ep* %0, i32 %1, %struct.nn_sock* %2, i32 %3, %struct.nn_transport* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nn_ep*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nn_sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nn_transport*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.nn_ep* %0, %struct.nn_ep** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nn_sock* %2, %struct.nn_sock** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.nn_transport* %4, %struct.nn_transport** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %18 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %17, i32 0, i32 1
  %19 = load i32, i32* @nn_ep_handler, align 4
  %20 = load i32, i32* @nn_ep_shutdown, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %23 = load %struct.nn_sock*, %struct.nn_sock** %11, align 8
  %24 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %23, i32 0, i32 1
  %25 = call i32 @nn_fsm_init(i32* %18, i32 %19, i32 %20, i32 %21, %struct.nn_ep* %22, i32* %24)
  %26 = load i32, i32* @NN_EP_STATE_IDLE, align 4
  %27 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %28 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nn_sock*, %struct.nn_sock** %11, align 8
  %30 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %31 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %30, i32 0, i32 6
  store %struct.nn_sock* %29, %struct.nn_sock** %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %34 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %36 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %38 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %37, i32 0, i32 2
  %39 = call i32 @nn_list_item_init(i32* %38)
  %40 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %41 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %40, i32 0, i32 4
  %42 = load %struct.nn_sock*, %struct.nn_sock** %11, align 8
  %43 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %42, i32 0, i32 0
  %44 = call i32 @memcpy(i32* %41, i32* %43, i32 4)
  %45 = load i8*, i8** %15, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64, i64* @NN_SOCKADDR_MAX, align 8
  %48 = icmp sle i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @nn_assert(i32 %49)
  %51 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %52 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @strcpy(i32 %53, i8* %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %7
  %59 = load %struct.nn_transport*, %struct.nn_transport** %13, align 8
  %60 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %59, i32 0, i32 0
  %61 = load i32 (%struct.nn_ep.0*)*, i32 (%struct.nn_ep.0*)** %60, align 8
  %62 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %63 = bitcast %struct.nn_ep* %62 to %struct.nn_ep.0*
  %64 = call i32 %61(%struct.nn_ep.0* %63)
  store i32 %64, i32* %16, align 4
  br label %72

65:                                               ; preds = %7
  %66 = load %struct.nn_transport*, %struct.nn_transport** %13, align 8
  %67 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %66, i32 0, i32 1
  %68 = load i32 (%struct.nn_ep.1*)*, i32 (%struct.nn_ep.1*)** %67, align 8
  %69 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %70 = bitcast %struct.nn_ep* %69 to %struct.nn_ep.1*
  %71 = call i32 %68(%struct.nn_ep.1* %70)
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %77 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %76, i32 0, i32 2
  %78 = call i32 @nn_list_item_term(i32* %77)
  %79 = load %struct.nn_ep*, %struct.nn_ep** %9, align 8
  %80 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %79, i32 0, i32 1
  %81 = call i32 @nn_fsm_term(i32* %80)
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %8, align 4
  br label %84

83:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_ep*, i32*) #1

declare dso_local i32 @nn_list_item_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @nn_list_item_term(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
