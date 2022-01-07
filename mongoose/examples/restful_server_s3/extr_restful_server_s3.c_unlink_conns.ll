; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_unlink_conns.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_unlink_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*)* @unlink_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_conns(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %4 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %5 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.mg_connection*
  store %struct.mg_connection* %7, %struct.mg_connection** %3, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
