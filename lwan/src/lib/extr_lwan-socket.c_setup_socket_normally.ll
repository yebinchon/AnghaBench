; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_setup_socket_normally.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_setup_socket_normally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.addrinfo = type { i64, i32, i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not parse listener: %s\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan*)* @setup_socket_normally to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_socket_normally(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  %11 = load %struct.lwan*, %struct.lwan** %2, align 8
  %12 = getelementptr inbounds %struct.lwan, %struct.lwan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @strdupa(i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @parse_listener(i8* %16, i8** %3, i8** %4)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @AF_UNSPEC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.lwan*, %struct.lwan** %2, align 8
  %23 = getelementptr inbounds %struct.lwan, %struct.lwan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %31 = load i32, i32* @AI_PASSIVE, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  %33 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @getaddrinfo(i8* %34, i8* %35, %struct.addrinfo* %8, %struct.addrinfo** %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @gai_strerror(i32 %40)
  %42 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %45 = load %struct.lwan*, %struct.lwan** %2, align 8
  %46 = getelementptr inbounds %struct.lwan, %struct.lwan* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bind_and_listen_addrinfos(%struct.addrinfo* %44, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %51 = call i32 @freeaddrinfo(%struct.addrinfo* %50)
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i8* @strdupa(i32) #1

declare dso_local i64 @parse_listener(i8*, i8**, i8**) #1

declare dso_local i32 @lwan_status_critical(i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @bind_and_listen_addrinfos(%struct.addrinfo*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
