; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_lwip_if_poll.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_lwip_if_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_iface = type { %struct.mg_mgr* }
%struct.mg_mgr = type { %struct.mg_connection* }
%struct.mg_connection = type { i64, i32, double, i32, %struct.mg_connection* }
%struct.mg_lwip_conn_state = type { i64, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@MG_F_UDP = common dso_local global i32 0, align 4
@MG_F_LISTENING = common dso_local global i32 0, align 4
@tcp_output_tcpip = common dso_local global i32 0, align 4
@MG_SIG_CLOSE_CONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mg_lwip_if_poll(%struct.mg_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.mg_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca %struct.mg_connection*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mg_lwip_conn_state*, align 8
  store %struct.mg_iface* %0, %struct.mg_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.mg_iface*, %struct.mg_iface** %3, align 8
  %14 = getelementptr inbounds %struct.mg_iface, %struct.mg_iface* %13, i32 0, i32 0
  %15 = load %struct.mg_mgr*, %struct.mg_mgr** %14, align 8
  store %struct.mg_mgr* %15, %struct.mg_mgr** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = call double (...) @mg_time()
  store double %16, double* %7, align 8
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %18 = call i32 @mg_ev_mgr_lwip_process_signals(%struct.mg_mgr* %17)
  %19 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %20 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %19, i32 0, i32 0
  %21 = load %struct.mg_connection*, %struct.mg_connection** %20, align 8
  store %struct.mg_connection* %21, %struct.mg_connection** %8, align 8
  br label %22

22:                                               ; preds = %134, %2
  %23 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %24 = icmp ne %struct.mg_connection* %23, null
  br i1 %24, label %25, label %136

25:                                               ; preds = %22
  %26 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.mg_lwip_conn_state*
  store %struct.mg_lwip_conn_state* %29, %struct.mg_lwip_conn_state** %12, align 8
  %30 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %31 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %30, i32 0, i32 4
  %32 = load %struct.mg_connection*, %struct.mg_connection** %31, align 8
  store %struct.mg_connection* %32, %struct.mg_connection** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %36 = load double, double* %7, align 8
  %37 = call i32 @mg_if_poll(%struct.mg_connection* %35, double %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %134

40:                                               ; preds = %25
  %41 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INVALID_SOCKET, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  %47 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %48 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MG_F_UDP, align 4
  %51 = load i32, i32* @MG_F_LISTENING, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %46
  %56 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %57 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %63 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32, i32* @tcp_output_tcpip, align 4
  %71 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %72 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @mg_lwip_netif_run_on_tcpip(i32 %70, %struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %69, %61, %55, %46, %40
  %77 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %78 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %77, i32 0, i32 2
  %79 = load double, double* %78, align 8
  %80 = fcmp ogt double %79, 0.000000e+00
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %86 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %85, i32 0, i32 2
  %87 = load double, double* %86, align 8
  %88 = load double, double* %10, align 8
  %89 = fcmp olt double %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84, %81
  %91 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %92 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %91, i32 0, i32 2
  %93 = load double, double* %92, align 8
  store double %93, double* %10, align 8
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %76
  %98 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %99 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @INVALID_SOCKET, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %105 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %106 = call i64 @mg_lwip_if_can_send(%struct.mg_connection* %104, %struct.mg_lwip_conn_state* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %110 = call i32 @mg_if_can_send_cb(%struct.mg_connection* %109)
  %111 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %112 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %111, i32 0, i32 3
  %113 = call i32 @mbuf_trim(i32* %112)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %116 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %121 = call i32 @mg_if_can_recv_cb(%struct.mg_connection* %120)
  br label %132

122:                                              ; preds = %114
  %123 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %12, align 8
  %124 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @MG_SIG_CLOSE_CONN, align 4
  %129 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %130 = call i32 @mg_lwip_post_signal(i32 %128, %struct.mg_connection* %129)
  br label %131

131:                                              ; preds = %127, %122
  br label %132

132:                                              ; preds = %131, %119
  br label %133

133:                                              ; preds = %132, %97
  br label %134

134:                                              ; preds = %133, %39
  %135 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  store %struct.mg_connection* %135, %struct.mg_connection** %8, align 8
  br label %22

136:                                              ; preds = %22
  %137 = load i32, i32* %4, align 4
  %138 = load double, double* %7, align 8
  ret double %138
}

declare dso_local double @mg_time(...) #1

declare dso_local i32 @mg_ev_mgr_lwip_process_signals(%struct.mg_mgr*) #1

declare dso_local i32 @mg_if_poll(%struct.mg_connection*, double) #1

declare dso_local i32 @mg_lwip_netif_run_on_tcpip(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @mg_lwip_if_can_send(%struct.mg_connection*, %struct.mg_lwip_conn_state*) #1

declare dso_local i32 @mg_if_can_send_cb(%struct.mg_connection*) #1

declare dso_local i32 @mbuf_trim(i32*) #1

declare dso_local i32 @mg_if_can_recv_cb(%struct.mg_connection*) #1

declare dso_local i32 @mg_lwip_post_signal(i32, %struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
