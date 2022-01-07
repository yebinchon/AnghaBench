; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_btcp.c_nn_btcp_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_btcp.c_nn_btcp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.nn_btcp = type { i32, i32, i32, i32, i32*, i32, %struct.nn_ep* }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"btcp\00", align 1
@nn_btcp_ep_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nn_btcp_handler = common dso_local global i32 0, align 4
@nn_btcp_shutdown = common dso_local global i32 0, align 4
@NN_BTCP_STATE_IDLE = common dso_local global i32 0, align 4
@NN_BTCP_SRC_USOCK = common dso_local global i32 0, align 4
@NN_BTCP_SRC_BTCP = common dso_local global i32 0, align 4
@NN_BTCP_TYPE_LISTEN_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_btcp_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_btcp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %13 = call %struct.nn_btcp* @nn_alloc(i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_btcp* %13, %struct.nn_btcp** %5, align 8
  %14 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %15 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %16 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %15, i32 0, i32 6
  store %struct.nn_ep* %14, %struct.nn_ep** %16, align 8
  %17 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %18 = call i32 @alloc_assert(%struct.nn_btcp* %17)
  %19 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %20 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %21 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %19, i32* @nn_btcp_ep_ops, %struct.nn_btcp* %20)
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
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %35 = call i32 @nn_free(%struct.nn_btcp* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %127

38:                                               ; preds = %1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @nn_port_resolve(i8* %41, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %53 = call i32 @nn_free(%struct.nn_btcp* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %127

56:                                               ; preds = %38
  store i64 4, i64* %12, align 8
  %57 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %58 = load i32, i32* @NN_SOL_SOCKET, align 4
  %59 = load i32, i32* @NN_IPV4ONLY, align 4
  %60 = call i32 @nn_ep_getopt(%struct.nn_ep* %57, i32 %58, i32 %59, i32* %11, i64* %12)
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %61, 4
  %63 = zext i1 %62 to i32
  %64 = call i32 @nn_assert(i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sub nsw i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @nn_iface_resolve(i8* %65, i32 %72, i32 %73, %struct.sockaddr_storage* %9, i64* %10)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @nn_slow(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %82 = call i32 @nn_free(%struct.nn_btcp* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %127

85:                                               ; preds = %56
  %86 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %87 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %86, i32 0, i32 1
  %88 = load i32, i32* @nn_btcp_handler, align 4
  %89 = load i32, i32* @nn_btcp_shutdown, align 4
  %90 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %91 = call i32 @nn_ep_getctx(%struct.nn_ep* %90)
  %92 = call i32 @nn_fsm_init_root(i32* %87, i32 %88, i32 %89, i32 %91)
  %93 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %94 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %93, i32 0, i32 0
  %95 = call i32 @nn_fsm_event_init(i32* %94)
  %96 = load i32, i32* @NN_BTCP_STATE_IDLE, align 4
  %97 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %98 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %100 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %102 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %101, i32 0, i32 3
  %103 = call i32 @nn_list_init(i32* %102)
  %104 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %105 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %104, i32 0, i32 1
  %106 = call i32 @nn_fsm_start(i32* %105)
  %107 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %108 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %107, i32 0, i32 2
  %109 = load i32, i32* @NN_BTCP_SRC_USOCK, align 4
  %110 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %111 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %110, i32 0, i32 1
  %112 = call i32 @nn_usock_init(i32* %108, i32 %109, i32* %111)
  %113 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %114 = call i32 @nn_btcp_listen(%struct.nn_btcp* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %85
  %118 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %119 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %118, i32 0, i32 1
  %120 = load %struct.nn_btcp*, %struct.nn_btcp** %5, align 8
  %121 = getelementptr inbounds %struct.nn_btcp, %struct.nn_btcp* %120, i32 0, i32 0
  %122 = load i32, i32* @NN_BTCP_SRC_BTCP, align 4
  %123 = load i32, i32* @NN_BTCP_TYPE_LISTEN_ERR, align 4
  %124 = call i32 @nn_fsm_raise_from_src(i32* %119, i32* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %117, %80, %51, %33
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.nn_btcp* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_btcp*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_btcp*) #1

declare dso_local i8* @nn_ep_getaddr(%struct.nn_ep*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nn_free(%struct.nn_btcp*) #1

declare dso_local i32 @nn_port_resolve(i8*, i32) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_iface_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_btcp_listen(%struct.nn_btcp*) #1

declare dso_local i32 @nn_fsm_raise_from_src(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
