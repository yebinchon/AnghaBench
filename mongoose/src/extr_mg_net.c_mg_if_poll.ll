; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_poll.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@MG_F_RECV_AND_CLOSE = common dso_local global i32 0, align 4
@MG_EV_POLL = common dso_local global i32 0, align 4
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_LISTENING = common dso_local global i32 0, align 4
@MG_F_SSL = common dso_local global i32 0, align 4
@MG_F_WANT_READ = common dso_local global i32 0, align 4
@MG_F_WANT_WRITE = common dso_local global i32 0, align 4
@MG_TCP_IO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_if_poll(%struct.mg_connection* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store double %1, double* %5, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = call i32 @mg_close_conn(%struct.mg_connection* %14)
  store i32 0, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %25 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %31 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %32 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = call i32 @mg_close_conn(%struct.mg_connection* %35)
  store i32 0, i32* %3, align 4
  br label %62

37:                                               ; preds = %23
  br label %49

38:                                               ; preds = %16
  %39 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %40 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MG_F_RECV_AND_CLOSE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %47 = call i32 @mg_close_conn(%struct.mg_connection* %46)
  store i32 0, i32* %3, align 4
  br label %62

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %52 = load double, double* %5, align 8
  %53 = call i32 @mg_timer(%struct.mg_connection* %51, double %52)
  %54 = load double, double* %5, align 8
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %57 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %58 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MG_EV_POLL, align 4
  %61 = call i32 @mg_call(%struct.mg_connection* %56, i32* null, i32 %59, i32 %60, i32* %6)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %50, %45, %29, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @mg_close_conn(%struct.mg_connection*) #1

declare dso_local i32 @mg_timer(%struct.mg_connection*, double) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
