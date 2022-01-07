; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_tcp_states.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_net_inet_tcp_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_net_inet_tcp_states.mib = internal global [4 x i32] zeroinitializer, align 16
@TCP_NSTATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"net.inet.tcp.states\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DISABLED: ipv4.tcpsock chart\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DISABLED: net.inet.tcp.states module\00", align 1
@do_net_inet_tcp_states.st = internal global i32* null, align 8
@do_net_inet_tcp_states.rd = internal global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tcpsock\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"IPv4 TCP Connections\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"active connections\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"CurrEstab\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_net_inet_tcp_states(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TCP_NSTATES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_net_inet_tcp_states.mib, i64 0, i64 0), i32* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load i32*, i32** @do_net_inet_tcp_states.st, align 8
  %22 = icmp ne i32* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %30 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 2500, i32 %28, i32 %29)
  store i32* %30, i32** @do_net_inet_tcp_states.st, align 8
  %31 = load i32*, i32** @do_net_inet_tcp_states.st, align 8
  %32 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %33 = call i32* @rrddim_add(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 1, i32 1, i32 %32)
  store i32* %33, i32** @do_net_inet_tcp_states.rd, align 8
  br label %37

34:                                               ; preds = %20
  %35 = load i32*, i32** @do_net_inet_tcp_states.st, align 8
  %36 = call i32 @rrdset_next(i32* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32*, i32** @do_net_inet_tcp_states.st, align 8
  %39 = load i32*, i32** @do_net_inet_tcp_states.rd, align 8
  %40 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %41 = getelementptr inbounds i32, i32* %13, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rrddim_set_by_pointer(i32* %38, i32* %39, i32 %42)
  %44 = load i32*, i32** @do_net_inet_tcp_states.st, align 8
  %45 = call i32 @rrdset_done(i32* %44)
  br label %46

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32* @rrddim_add(i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rrdset_next(i32*) #2

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #2

declare dso_local i32 @rrdset_done(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
