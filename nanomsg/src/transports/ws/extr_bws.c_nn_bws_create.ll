; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_bws.c_nn_bws_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_bws.c_nn_bws_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_bws = type { i32, i32, i32, i32*, i32, %struct.nn_ep* }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bws\00", align 1
@nn_bws_ep_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nn_bws_handler = common dso_local global i32 0, align 4
@nn_bws_shutdown = common dso_local global i32 0, align 4
@NN_BWS_STATE_IDLE = common dso_local global i32 0, align 4
@NN_BWS_SRC_USOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_bws_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_bws*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %13 = call %struct.nn_bws* @nn_alloc(i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_bws* %13, %struct.nn_bws** %5, align 8
  %14 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %15 = call i32 @alloc_assert(%struct.nn_bws* %14)
  %16 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %17 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %18 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %17, i32 0, i32 5
  store %struct.nn_ep* %16, %struct.nn_ep** %18, align 8
  %19 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %20 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %21 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %19, i32* @nn_bws_ep_ops, %struct.nn_bws* %20)
  %22 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %23 = call i8* @nn_ep_getaddr(%struct.nn_ep* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 58)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %108

36:                                               ; preds = %1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @nn_port_resolve(i8* %39, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %108

52:                                               ; preds = %36
  store i64 4, i64* %12, align 8
  %53 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %54 = load i32, i32* @NN_SOL_SOCKET, align 4
  %55 = load i32, i32* @NN_IPV4ONLY, align 4
  %56 = call i32 @nn_ep_getopt(%struct.nn_ep* %53, i32 %54, i32 %55, i32* %11, i64* %12)
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %57, 4
  %59 = zext i1 %58 to i32
  %60 = call i32 @nn_assert(i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sub nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @nn_iface_resolve(i8* %61, i32 %68, i32 %69, %struct.sockaddr_storage* %9, i64* %10)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %108

76:                                               ; preds = %52
  %77 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %78 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %77, i32 0, i32 0
  %79 = load i32, i32* @nn_bws_handler, align 4
  %80 = load i32, i32* @nn_bws_shutdown, align 4
  %81 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %82 = call i32 @nn_ep_getctx(%struct.nn_ep* %81)
  %83 = call i32 @nn_fsm_init_root(i32* %78, i32 %79, i32 %80, i32 %82)
  %84 = load i32, i32* @NN_BWS_STATE_IDLE, align 4
  %85 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %86 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %88 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %90 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %89, i32 0, i32 2
  %91 = call i32 @nn_list_init(i32* %90)
  %92 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %93 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %92, i32 0, i32 0
  %94 = call i32 @nn_fsm_start(i32* %93)
  %95 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %96 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %95, i32 0, i32 1
  %97 = load i32, i32* @NN_BWS_SRC_USOCK, align 4
  %98 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %99 = getelementptr inbounds %struct.nn_bws, %struct.nn_bws* %98, i32 0, i32 0
  %100 = call i32 @nn_usock_init(i32* %96, i32 %97, i32* %99)
  %101 = load %struct.nn_bws*, %struct.nn_bws** %5, align 8
  %102 = call i32 @nn_bws_listen(%struct.nn_bws* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %76
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %105, %73, %49, %33
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.nn_bws* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_bws*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_bws*) #1

declare dso_local i8* @nn_ep_getaddr(%struct.nn_ep*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nn_port_resolve(i8*, i32) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_iface_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_bws_listen(%struct.nn_bws*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
