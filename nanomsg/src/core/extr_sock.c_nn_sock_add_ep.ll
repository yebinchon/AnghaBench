; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_add_ep.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_add_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32, i32, i32 }
%struct.nn_transport = type { i32 }
%struct.nn_ep = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@NN_SOCK_SRC_EP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_add_ep(%struct.nn_sock* %0, %struct.nn_transport* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_sock*, align 8
  %7 = alloca %struct.nn_transport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nn_ep*, align 8
  %12 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %6, align 8
  store %struct.nn_transport* %1, %struct.nn_transport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %14 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %13, i32 0, i32 1
  %15 = call i32 @nn_ctx_enter(i32* %14)
  %16 = call %struct.nn_ep* @nn_alloc(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_ep* %16, %struct.nn_ep** %11, align 8
  %17 = load %struct.nn_ep*, %struct.nn_ep** %11, align 8
  %18 = load i32, i32* @NN_SOCK_SRC_EP, align 4
  %19 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %20 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %21 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nn_transport*, %struct.nn_transport** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @nn_ep_init(%struct.nn_ep* %17, i32 %18, %struct.nn_sock* %19, i32 %22, %struct.nn_transport* %23, i32 %24, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @nn_slow(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.nn_ep*, %struct.nn_ep** %11, align 8
  %34 = call i32 @nn_free(%struct.nn_ep* %33)
  %35 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %36 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %35, i32 0, i32 1
  %37 = call i32 @nn_ctx_leave(i32* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %61

39:                                               ; preds = %4
  %40 = load %struct.nn_ep*, %struct.nn_ep** %11, align 8
  %41 = call i32 @nn_ep_start(%struct.nn_ep* %40)
  %42 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %43 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %46 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %50 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %49, i32 0, i32 2
  %51 = load %struct.nn_ep*, %struct.nn_ep** %11, align 8
  %52 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %51, i32 0, i32 0
  %53 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %54 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %53, i32 0, i32 2
  %55 = call i32 @nn_list_end(i32* %54)
  %56 = call i32 @nn_list_insert(i32* %50, i32* %52, i32 %55)
  %57 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %58 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %57, i32 0, i32 1
  %59 = call i32 @nn_ctx_leave(i32* %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %39, %32
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @nn_ctx_enter(i32*) #1

declare dso_local %struct.nn_ep* @nn_alloc(i32, i8*) #1

declare dso_local i32 @nn_ep_init(%struct.nn_ep*, i32, %struct.nn_sock*, i32, %struct.nn_transport*, i32, i8*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_free(%struct.nn_ep*) #1

declare dso_local i32 @nn_ctx_leave(i32*) #1

declare dso_local i32 @nn_ep_start(%struct.nn_ep*) #1

declare dso_local i32 @nn_list_insert(i32*, i32*, i32) #1

declare dso_local i32 @nn_list_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
