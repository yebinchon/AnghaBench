; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_ev_mgr_lwip_process_signals.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_ev_mgr_lwip_process_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.mg_ev_mgr_lwip_data = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.mg_connection* }
%struct.mg_connection = type { i32, i32*, i32*, i64 }
%struct.mg_lwip_conn_state = type { i32, i32 }

@MG_MAIN_IFACE = common dso_local global i64 0, align 8
@MG_SIG_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_ev_mgr_lwip_process_signals(%struct.mg_mgr* %0) #0 {
  %2 = alloca %struct.mg_mgr*, align 8
  %3 = alloca %struct.mg_ev_mgr_lwip_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca %struct.mg_lwip_conn_state*, align 8
  store %struct.mg_mgr* %0, %struct.mg_mgr** %2, align 8
  %8 = load %struct.mg_mgr*, %struct.mg_mgr** %2, align 8
  %9 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = load i64, i64* @MG_MAIN_IFACE, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mg_ev_mgr_lwip_data*
  store %struct.mg_ev_mgr_lwip_data* %16, %struct.mg_ev_mgr_lwip_data** %3, align 8
  br label %17

17:                                               ; preds = %91, %67, %1
  %18 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %19 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %17
  %23 = call i32 (...) @mgos_lock()
  %24 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %25 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %28 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %36 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.mg_connection*, %struct.mg_connection** %41, align 8
  store %struct.mg_connection* %42, %struct.mg_connection** %6, align 8
  %43 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %44 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.mg_lwip_conn_state*
  store %struct.mg_lwip_conn_state* %46, %struct.mg_lwip_conn_state** %7, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @MG_SIG_QUEUE_LEN, align 4
  %50 = srem i32 %48, %49
  %51 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %52 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %3, align 8
  %54 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = call i32 (...) @mgos_unlock()
  %58 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %59 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %22
  %63 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %64 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %22
  br label %17

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %91 [
    i32 130, label %70
    i32 131, label %76
    i32 129, label %79
    i32 128, label %87
    i32 132, label %88
  ]

70:                                               ; preds = %68
  %71 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %72 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %7, align 8
  %73 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mg_if_connect_cb(%struct.mg_connection* %71, i32 %74)
  br label %91

76:                                               ; preds = %68
  %77 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %78 = call i32 @mg_close_conn(%struct.mg_connection* %77)
  br label %91

79:                                               ; preds = %68
  %80 = load %struct.mg_lwip_conn_state*, %struct.mg_lwip_conn_state** %7, align 8
  %81 = getelementptr inbounds %struct.mg_lwip_conn_state, %struct.mg_lwip_conn_state* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %83 = call i32 @mg_if_can_recv_cb(%struct.mg_connection* %82)
  %84 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %85 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %84, i32 0, i32 0
  %86 = call i32 @mbuf_trim(i32* %85)
  br label %91

87:                                               ; preds = %68
  br label %91

88:                                               ; preds = %68
  %89 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %90 = call i32 @mg_lwip_handle_accept(%struct.mg_connection* %89)
  br label %91

91:                                               ; preds = %68, %88, %87, %79, %76, %70
  br label %17

92:                                               ; preds = %17
  ret void
}

declare dso_local i32 @mgos_lock(...) #1

declare dso_local i32 @mgos_unlock(...) #1

declare dso_local i32 @mg_if_connect_cb(%struct.mg_connection*, i32) #1

declare dso_local i32 @mg_close_conn(%struct.mg_connection*) #1

declare dso_local i32 @mg_if_can_recv_cb(%struct.mg_connection*) #1

declare dso_local i32 @mbuf_trim(i32*) #1

declare dso_local i32 @mg_lwip_handle_accept(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
