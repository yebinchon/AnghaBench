; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_getaddrname.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_getaddrname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i32*, i32)* @lwip_getaddrname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwip_getaddrname(i32 %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to i32*
  %15 = call i32 @lwIP_ASSERT(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @lwIP_ASSERT(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_3__* @get_socket(i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

23:                                               ; preds = %4
  %24 = call i32 @os_memset(%struct.sockaddr_in* %11, i32 0, i32 16)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i32 16, i32* %25, align 4
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @netconn_getaddr(i32 %30, i32* %12, i32* %31, i32 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %39 = call i32 @inet_addr_from_ipaddr(i32* %38, i32* %12)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %42, 16
  br i1 %43, label %44, label %46

44:                                               ; preds = %23
  %45 = load i32*, i32** %8, align 8
  store i32 16, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %23
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = bitcast %struct.sockaddr* %47 to i32*
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MEMCPY(i32* %48, %struct.sockaddr_in* %11, i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @lwIP_ASSERT(i32*) #1

declare dso_local %struct.TYPE_3__* @get_socket(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @netconn_getaddr(i32, i32*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_addr_from_ipaddr(i32*, i32*) #1

declare dso_local i32 @MEMCPY(i32*, %struct.sockaddr_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
