; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_check_client_status.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_check_client_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.web_client*)* @web_server_check_client_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_server_check_client_status(%struct.web_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.web_client*, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  %4 = load %struct.web_client*, %struct.web_client** %3, align 8
  %5 = call i64 @web_client_check_dead(%struct.web_client* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.web_client*, %struct.web_client** %3, align 8
  %9 = call i32 @web_client_has_wait_receive(%struct.web_client* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load %struct.web_client*, %struct.web_client** %3, align 8
  %13 = call i32 @web_client_has_wait_send(%struct.web_client* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i1 [ false, %7 ], [ %15, %11 ]
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i1 [ true, %1 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @web_client_check_dead(%struct.web_client*) #1

declare dso_local i32 @web_client_has_wait_receive(%struct.web_client*) #1

declare dso_local i32 @web_client_has_wait_send(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
