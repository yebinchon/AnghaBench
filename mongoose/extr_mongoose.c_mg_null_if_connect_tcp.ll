; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_null_if_connect_tcp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_null_if_connect_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%union.socket_address = type { i32 }

@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %union.socket_address*)* @mg_null_if_connect_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_null_if_connect_tcp(%struct.mg_connection* %0, %union.socket_address* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %union.socket_address*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %union.socket_address* %1, %union.socket_address** %4, align 8
  %5 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %6 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %7 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %union.socket_address*, %union.socket_address** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
