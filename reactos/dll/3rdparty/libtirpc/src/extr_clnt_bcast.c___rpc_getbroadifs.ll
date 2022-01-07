; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_bcast.c___rpc_getbroadifs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_bcast.c___rpc_getbroadifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadif = type { i32, i32 }
%struct.ifaddrs = type { i32, i64, i32, %struct.TYPE_2__*, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@RPCB_MULTICAST_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_getbroadifs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.broadif*, align 8
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.ifaddrs*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 24)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = call i64 @getaddrinfo(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %15, %struct.addrinfo** %16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  store %struct.ifaddrs* %28, %struct.ifaddrs** %12, align 8
  br label %29

29:                                               ; preds = %102, %27
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %31 = icmp ne %struct.ifaddrs* %30, null
  br i1 %31, label %32, label %106

32:                                               ; preds = %29
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %34 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %42 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40, %32
  br label %102

48:                                               ; preds = %40
  %49 = call i64 @malloc(i32 8)
  %50 = inttoptr i64 %49 to %struct.broadif*
  store %struct.broadif* %50, %struct.broadif** %11, align 8
  %51 = load %struct.broadif*, %struct.broadif** %11, align 8
  %52 = icmp eq %struct.broadif* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %106

54:                                               ; preds = %48
  %55 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %56 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @if_nametoindex(i32 %57)
  %59 = load %struct.broadif*, %struct.broadif** %11, align 8
  %60 = getelementptr inbounds %struct.broadif, %struct.broadif* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IFF_BROADCAST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %54
  %68 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %69 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.broadif*, %struct.broadif** %11, align 8
  %74 = getelementptr inbounds %struct.broadif, %struct.broadif* %73, i32 0, i32 1
  %75 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %76 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i32* %74, i64 %77, i32 4)
  %79 = load %struct.broadif*, %struct.broadif** %11, align 8
  %80 = getelementptr inbounds %struct.broadif, %struct.broadif* %79, i32 0, i32 1
  %81 = bitcast i32* %80 to i8*
  %82 = bitcast i8* %81 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %82, %struct.sockaddr_in** %14, align 8
  %83 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = bitcast i8* %86 to %struct.sockaddr_in*
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %95

92:                                               ; preds = %67, %54
  %93 = load %struct.broadif*, %struct.broadif** %11, align 8
  %94 = call i32 @free(%struct.broadif* %93)
  br label %102

95:                                               ; preds = %72
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.broadif*, %struct.broadif** %11, align 8
  %98 = load i32, i32* @link, align 4
  %99 = call i32 @TAILQ_INSERT_TAIL(i32* %96, %struct.broadif* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %95, %92, %47
  %103 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %104 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %103, i32 0, i32 4
  %105 = load %struct.ifaddrs*, %struct.ifaddrs** %104, align 8
  store %struct.ifaddrs* %105, %struct.ifaddrs** %12, align 8
  br label %29

106:                                              ; preds = %53, %29
  %107 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %108 = call i32 @freeifaddrs(%struct.ifaddrs* %107)
  %109 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %110 = call i32 @freeaddrinfo(%struct.addrinfo* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %26
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @if_nametoindex(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @free(%struct.broadif*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.broadif*, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
