; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_setup_loopback_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_setup_loopback_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i8*, i32, i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i8*, i32, i32, i8*, %struct.TYPE_2__, i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"illegal family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr_storage*)* @setup_loopback_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_loopback_addr(i32 %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %8 = bitcast %struct.sockaddr_storage* %7 to i8*
  %9 = bitcast i8* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %9, %struct.sockaddr_in6** %5, align 8
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %11 = bitcast %struct.sockaddr_storage* %10 to i8*
  %12 = bitcast i8* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %6, align 8
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %43 [
    i32 129, label %14
    i32 128, label %30
  ]

14:                                               ; preds = %2
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %16 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr_in6*
  %17 = call i32 @memset(%struct.sockaddr_in6* %16, i32 0, i32 32)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @INADDR_LOOPBACK, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @port, align 4
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  br label %45

30:                                               ; preds = %2
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %32 = call i32 @memset(%struct.sockaddr_in6* %31, i32 0, i32 32)
  %33 = load i32, i32* @AF_INET6, align 4
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @in6addr_loopback, align 4
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @port, align 4
  %40 = call i8* @htons(i32 %39)
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %45

43:                                               ; preds = %2
  %44 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %30, %14
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
