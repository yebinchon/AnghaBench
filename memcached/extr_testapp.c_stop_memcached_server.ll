; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_stop_memcached_server.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_stop_memcached_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server_pid = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stop_memcached_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_memcached_server() #0 {
  %1 = call i32 (...) @close_conn()
  %2 = load i32, i32* @server_pid, align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @server_pid, align 4
  %6 = load i32, i32* @SIGTERM, align 4
  %7 = call i64 @kill(i32 %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  br label %11

11:                                               ; preds = %4, %0
  %12 = load i32, i32* @TEST_PASS, align 4
  ret i32 %12
}

declare dso_local i32 @close_conn(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
