; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_setup_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_rx.c_setup_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i8*, i8* }
%struct.sockaddr_in = type { i32, i8*, i8* }

@AF_INET = common dso_local global i8* null, align 8
@cfg_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ipv4 parse error: %s\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ipv6 parse error: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"illegal domain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @setup_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sockaddr(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %8, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %50 [
    i32 129, label %14
    i32 128, label %32
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** @AF_INET, align 8
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @cfg_port, align 4
  %19 = call i8* @htons(i32 %18)
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @AF_INET, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = call i32 @inet_pton(i8* %22, i8* %23, i32* %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %14
  br label %52

32:                                               ; preds = %3
  %33 = load i8*, i8** @AF_INET6, align 8
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @cfg_port, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @AF_INET6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = call i32 @inet_pton(i8* %40, i8* %41, i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %32
  br label %52

50:                                               ; preds = %3
  %51 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %49, %31
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
