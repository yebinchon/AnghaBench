; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c__php_mcast_join_leave.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c__php_mcast_join_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.ip_mreq = type { i32, i32, i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.ipv6_mreq = type { i32, i32, i32, %struct.in_addr }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Option %s is inapplicable to this socket type\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MCAST_JOIN_GROUP\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MCAST_LEAVE_GROUP\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@IPV6_LEAVE_GROUP = common dso_local global i32 0, align 4
@MCAST_JOIN_GROUP = common dso_local global i32 0, align 4
@MCAST_LEAVE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.sockaddr*, i32, i32, i32)* @_php_mcast_join_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_php_mcast_join_leave(%struct.TYPE_5__* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_mreq, align 4
  %15 = alloca %struct.in_addr, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %6
  %22 = bitcast %struct.ip_mreq* %14 to %struct.ipv6_mreq*
  %23 = call i32 @memset(%struct.ipv6_mreq* %22, i32 0, i32 16)
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 4
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = call i64 @php_if_index_to_addr4(i32 %32, %struct.TYPE_5__* %33, %struct.in_addr* %15)
  %35 = load i64, i64* @FAILURE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -2, i32* %7, align 4
  br label %74

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %14, i32 0, i32 3
  %40 = bitcast %struct.in_addr* %39 to i8*
  %41 = bitcast %struct.in_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %47

42:                                               ; preds = %21
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %14, i32 0, i32 3
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %14, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = bitcast %struct.ip_mreq* %14 to i8*
  %66 = call i32 @setsockopt(i32 %55, i32 %56, i32 %64, i8* %65, i32 16)
  store i32 %66, i32* %7, align 4
  br label %74

67:                                               ; preds = %6
  %68 = load i32, i32* @E_WARNING, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 @php_error_docref(i32* null, i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %72)
  store i32 -2, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %63, %37
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.ipv6_mreq*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @php_if_index_to_addr4(i32, %struct.TYPE_5__*, %struct.in_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
