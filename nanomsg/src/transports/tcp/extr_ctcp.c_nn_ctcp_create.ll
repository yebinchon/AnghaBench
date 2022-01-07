; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_ctcp.c_nn_ctcp_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_ctcp.c_nn_ctcp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.nn_ctcp = type { i32, i32, i32, i32, i32, i32, %struct.nn_ep* }

@.str = private unnamed_addr constant [5 x i8] c"ctcp\00", align 1
@nn_ctcp_ep_ops = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nn_ctcp_handler = common dso_local global i32 0, align 4
@nn_ctcp_shutdown = common dso_local global i32 0, align 4
@NN_CTCP_STATE_IDLE = common dso_local global i32 0, align 4
@NN_CTCP_SRC_USOCK = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL = common dso_local global i32 0, align 4
@NN_RECONNECT_IVL_MAX = common dso_local global i32 0, align 4
@NN_CTCP_SRC_RECONNECT_TIMER = common dso_local global i32 0, align 4
@NN_CTCP_SRC_STCP = common dso_local global i32 0, align 4
@NN_CTCP_SRC_DNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ctcp_create(%struct.nn_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.nn_ctcp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.nn_ep* %0, %struct.nn_ep** %3, align 8
  %19 = call %struct.nn_ctcp* @nn_alloc(i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_ctcp* %19, %struct.nn_ctcp** %15, align 8
  %20 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %21 = call i32 @alloc_assert(%struct.nn_ctcp* %20)
  %22 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %23 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %24 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %23, i32 0, i32 6
  store %struct.nn_ep* %22, %struct.nn_ep** %24, align 8
  %25 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %26 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %27 = call i32 @nn_ep_tran_setup(%struct.nn_ep* %25, i32* @nn_ctcp_ep_ops, %struct.nn_ctcp* %26)
  store i64 4, i64* %14, align 8
  %28 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %29 = load i32, i32* @NN_SOL_SOCKET, align 4
  %30 = load i32, i32* @NN_IPV4ONLY, align 4
  %31 = call i32 @nn_ep_getopt(%struct.nn_ep* %28, i32 %29, i32 %30, i32* %13, i64* %14)
  %32 = load i64, i64* %14, align 8
  %33 = icmp eq i64 %32, 4
  %34 = zext i1 %33 to i32
  %35 = call i32 @nn_assert(i32 %34)
  %36 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %37 = call i8* @nn_ep_getaddr(%struct.nn_ep* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 59)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  br label %49

47:                                               ; preds = %1
  %48 = load i8*, i8** %5, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i8* [ %46, %44 ], [ %48, %47 ]
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 58)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %60 = call i32 @nn_free(%struct.nn_ctcp* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %190

63:                                               ; preds = %49
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sub nsw i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = call i32 @nn_port_resolve(i8* %65, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %78 = call i32 @nn_free(%struct.nn_ctcp* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %190

81:                                               ; preds = %63
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i64 @nn_dns_check_hostname(i8* %82, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %81
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = call i64 @nn_literal_resolve(i8* %92, i32 %98, i32 %99, %struct.sockaddr_storage* %11, i64* %12)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %104 = call i32 @nn_free(%struct.nn_ctcp* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %190

107:                                              ; preds = %91, %81
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @nn_iface_resolve(i8* %111, i32 %117, i32 %118, %struct.sockaddr_storage* %11, i64* %12)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %124 = call i32 @nn_free(%struct.nn_ctcp* %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %190

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %130 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %129, i32 0, i32 0
  %131 = load i32, i32* @nn_ctcp_handler, align 4
  %132 = load i32, i32* @nn_ctcp_shutdown, align 4
  %133 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %134 = call i32 @nn_ep_getctx(%struct.nn_ep* %133)
  %135 = call i32 @nn_fsm_init_root(i32* %130, i32 %131, i32 %132, i32 %134)
  %136 = load i32, i32* @NN_CTCP_STATE_IDLE, align 4
  %137 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %138 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %140 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %139, i32 0, i32 4
  %141 = load i32, i32* @NN_CTCP_SRC_USOCK, align 4
  %142 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %143 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %142, i32 0, i32 0
  %144 = call i32 @nn_usock_init(i32* %140, i32 %141, i32* %143)
  store i64 4, i64* %18, align 8
  %145 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %146 = load i32, i32* @NN_SOL_SOCKET, align 4
  %147 = load i32, i32* @NN_RECONNECT_IVL, align 4
  %148 = call i32 @nn_ep_getopt(%struct.nn_ep* %145, i32 %146, i32 %147, i32* %16, i64* %18)
  %149 = load i64, i64* %18, align 8
  %150 = icmp eq i64 %149, 4
  %151 = zext i1 %150 to i32
  %152 = call i32 @nn_assert(i32 %151)
  store i64 4, i64* %18, align 8
  %153 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %154 = load i32, i32* @NN_SOL_SOCKET, align 4
  %155 = load i32, i32* @NN_RECONNECT_IVL_MAX, align 4
  %156 = call i32 @nn_ep_getopt(%struct.nn_ep* %153, i32 %154, i32 %155, i32* %17, i64* %18)
  %157 = load i64, i64* %18, align 8
  %158 = icmp eq i64 %157, 4
  %159 = zext i1 %158 to i32
  %160 = call i32 @nn_assert(i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %128
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %163, %128
  %166 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %167 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %166, i32 0, i32 3
  %168 = load i32, i32* @NN_CTCP_SRC_RECONNECT_TIMER, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %172 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %171, i32 0, i32 0
  %173 = call i32 @nn_backoff_init(i32* %167, i32 %168, i32 %169, i32 %170, i32* %172)
  %174 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %175 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %174, i32 0, i32 2
  %176 = load i32, i32* @NN_CTCP_SRC_STCP, align 4
  %177 = load %struct.nn_ep*, %struct.nn_ep** %3, align 8
  %178 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %179 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %178, i32 0, i32 0
  %180 = call i32 @nn_stcp_init(i32* %175, i32 %176, %struct.nn_ep* %177, i32* %179)
  %181 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %182 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %181, i32 0, i32 1
  %183 = load i32, i32* @NN_CTCP_SRC_DNS, align 4
  %184 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %185 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %184, i32 0, i32 0
  %186 = call i32 @nn_dns_init(i32* %182, i32 %183, i32* %185)
  %187 = load %struct.nn_ctcp*, %struct.nn_ctcp** %15, align 8
  %188 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %187, i32 0, i32 0
  %189 = call i32 @nn_fsm_start(i32* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %165, %122, %102, %76, %58
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.nn_ctcp* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_ctcp*) #1

declare dso_local i32 @nn_ep_tran_setup(%struct.nn_ep*, i32*, %struct.nn_ctcp*) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @nn_ep_getaddr(%struct.nn_ep*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nn_free(%struct.nn_ctcp*) #1

declare dso_local i32 @nn_port_resolve(i8*, i32) #1

declare dso_local i64 @nn_dns_check_hostname(i8*, i32) #1

declare dso_local i64 @nn_literal_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_iface_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_ep_getctx(%struct.nn_ep*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_backoff_init(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nn_stcp_init(i32*, i32, %struct.nn_ep*, i32*) #1

declare dso_local i32 @nn_dns_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
