; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_lwip_post_signal.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/lwip/extr_mg_lwip_ev_mgr.c_mg_lwip_post_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mg_ev_mgr_lwip_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.mg_connection* }

@MG_SIG_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_lwip_post_signal(i32 %0, %struct.mg_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %struct.mg_ev_mgr_lwip_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mg_connection* %1, %struct.mg_connection** %4, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mg_ev_mgr_lwip_data*
  store %struct.mg_ev_mgr_lwip_data* %12, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %13 = call i32 (...) @mgos_lock()
  %14 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %15 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MG_SIG_QUEUE_LEN, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @mgos_unlock()
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %23 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %26 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  %29 = load i32, i32* @MG_SIG_QUEUE_LEN, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %33 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 8
  %39 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %40 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %41 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store %struct.mg_connection* %39, %struct.mg_connection** %46, align 8
  %47 = load %struct.mg_ev_mgr_lwip_data*, %struct.mg_ev_mgr_lwip_data** %5, align 8
  %48 = getelementptr inbounds %struct.mg_ev_mgr_lwip_data, %struct.mg_ev_mgr_lwip_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mg_lwip_mgr_schedule_poll(i32 %53)
  %55 = call i32 (...) @mgos_unlock()
  br label %56

56:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @mgos_lock(...) #1

declare dso_local i32 @mgos_unlock(...) #1

declare dso_local i32 @mg_lwip_mgr_schedule_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
