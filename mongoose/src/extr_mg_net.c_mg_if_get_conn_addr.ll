; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_get_conn_addr.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_net.c_mg_if_get_conn_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mg_connection*, i32, %union.socket_address*)* }
%union.socket_address = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_if_get_conn_addr(%struct.mg_connection* %0, i32 %1, %union.socket_address* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.socket_address*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.socket_address* %2, %union.socket_address** %6, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mg_connection*, i32, %union.socket_address*)*, i32 (%struct.mg_connection*, i32, %union.socket_address*)** %12, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %union.socket_address*, %union.socket_address** %6, align 8
  %17 = call i32 %13(%struct.mg_connection* %14, i32 %15, %union.socket_address* %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
