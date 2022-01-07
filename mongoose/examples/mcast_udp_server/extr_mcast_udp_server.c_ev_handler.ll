; ModuleID = '/home/carl/AnghaBench/mongoose/examples/mcast_udp_server/extr_mcast_udp_server.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/mcast_udp_server/extr_mcast_udp_server.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_3__, %struct.mbuf }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"nc->sa: %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Received (%zu bytes): '%.*s'\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 2
  store %struct.mbuf* %10, %struct.mbuf** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %28
  ]

13:                                               ; preds = %3
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @inet_ntoa(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %26)
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %36, i32 %39)
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mbuf_remove(%struct.mbuf* %41, i64 %44)
  %46 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %47 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %48 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %52

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %51, %28, %13
  ret void
}

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
