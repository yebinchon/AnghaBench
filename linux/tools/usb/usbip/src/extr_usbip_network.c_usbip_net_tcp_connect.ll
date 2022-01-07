; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_net_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_net_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"getaddrinfo: %s service %s: %s\00", align 1
@EAI_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_net_tcp_connect(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 32)
  %12 = load i32, i32* @AF_UNSPEC, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @getaddrinfo(i8* %16, i8* %17, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @gai_strerror(i32 %24)
  %26 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23, i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %29, %struct.addrinfo** %8, align 8
  br label %30

30:                                               ; preds = %65, %28
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = icmp ne %struct.addrinfo* %31, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @socket(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %65

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @usbip_net_set_nodelay(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @usbip_net_set_keepalive(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @connect(i32 %52, i32 %55, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %69

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %46
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 5
  %68 = load %struct.addrinfo*, %struct.addrinfo** %67, align 8
  store %struct.addrinfo* %68, %struct.addrinfo** %8, align 8
  br label %30

69:                                               ; preds = %61, %30
  %70 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %71 = call i32 @freeaddrinfo(%struct.addrinfo* %70)
  %72 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %73 = icmp ne %struct.addrinfo* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %74, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @dbg(i8*, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @usbip_net_set_nodelay(i32) #1

declare dso_local i32 @usbip_net_set_keepalive(i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
