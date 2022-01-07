; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_my_inet_aton.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_my_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo_data = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo_data*)* @my_inet_aton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_inet_aton(i8* %0, %struct.addrinfo_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo_data*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.addrinfo_data* %1, %struct.addrinfo_data** %5, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load %struct.addrinfo_data*, %struct.addrinfo_data** %5, align 8
  %9 = getelementptr inbounds %struct.addrinfo_data, %struct.addrinfo_data* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.sockaddr_in*
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %7, i32* %11, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.addrinfo_data*, %struct.addrinfo_data** %5, align 8
  %14 = getelementptr inbounds %struct.addrinfo_data, %struct.addrinfo_data* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.sockaddr_in*
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = call i32 @inet_aton(i8* %12, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @looks_like_numeric_ipv6(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %20
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.addrinfo_data*, %struct.addrinfo_data** %5, align 8
  %30 = getelementptr inbounds %struct.addrinfo_data, %struct.addrinfo_data* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.sockaddr_in6*
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = call i32 @inet_pton(i32 %27, i8* %28, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @AF_INET6, align 4
  %38 = load %struct.addrinfo_data*, %struct.addrinfo_data** %5, align 8
  %39 = getelementptr inbounds %struct.addrinfo_data, %struct.addrinfo_data* %38, i32 0, i32 0
  %40 = bitcast i32* %39 to %struct.sockaddr_in6*
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %26
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local i32 @looks_like_numeric_ipv6(i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
