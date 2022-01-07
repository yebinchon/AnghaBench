; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.sockaddr = type { i64 }

@__const.run_test.tv = private unnamed_addr constant %struct.timeval { i32 100000 }, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket r\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"setsockopt rcv timeout\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"socket t\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@cfg_do_connectionless = common dso_local global i64 0, align 8
@CONST_MTU_TEST = common dso_local global i32 0, align 4
@cfg_do_connected = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bad path mtu %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"close t\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"close r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timeval* @__const.run_test.tv to i8*), i64 4, i1 false)
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i64 %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @bind(i32 %21, %struct.sockaddr* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SOL_SOCKET, align 4
  %32 = load i32, i32* @SO_RCVTIMEO, align 4
  %33 = call i64 @setsockopt(i32 %30, i32 %31, i32 %32, %struct.timeval* %5, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SOCK_DGRAM, align 4
  %43 = call i32 @socket(i64 %41, i32 %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @set_pmtu_discover(i32 %50, i32 %56)
  %58 = load i64, i64* @cfg_do_connectionless, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CONST_MTU_TEST, align 4
  %63 = call i32 @set_device_mtu(i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @run_all(i32 %64, i32 %65, %struct.sockaddr* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %49
  %70 = load i64, i64* @cfg_do_connected, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CONST_MTU_TEST, align 4
  %75 = add nsw i32 %74, 100
  %76 = call i32 @set_device_mtu(i32 %73, i32 %75)
  %77 = load i32, i32* @CONST_MTU_TEST, align 4
  %78 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_INET, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @set_route_mtu(i32 %77, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @connect(i32 %85, %struct.sockaddr* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %72
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %72
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %96 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AF_INET, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @get_path_mtu(i32 %94, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @CONST_MTU_TEST, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %112 = call i32 @run_all(i32 %109, i32 %110, %struct.sockaddr* %111, i32 0)
  br label %113

113:                                              ; preds = %108, %69
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @close(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @errno, align 4
  %119 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @close(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket(i64, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #2

declare dso_local i32 @set_pmtu_discover(i32, i32) #2

declare dso_local i32 @set_device_mtu(i32, i32) #2

declare dso_local i32 @run_all(i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @set_route_mtu(i32, i32) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @get_path_mtu(i32, i32) #2

declare dso_local i64 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
