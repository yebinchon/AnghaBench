; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_setup_socket_from_systemd.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_setup_socket_from_systemd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Passed file descriptor is not a listening TCP socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_socket_from_systemd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_socket_from_systemd() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @AF_UNSPEC, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @sd_is_socket_inet(i32 %3, i32 %4, i32 %5, i32 1, i32 0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @set_socket_flags(i32 %11)
  ret i32 %12
}

declare dso_local i32 @sd_is_socket_inet(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local i32 @set_socket_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
