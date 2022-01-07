; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c__php_mcast_source_op.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c__php_mcast_source_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.ip_mreq_source = type { %struct.in_addr, i32, i32, i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Option %s is inapplicable to this socket type\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i32)* @_php_mcast_source_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_php_mcast_source_op(%struct.TYPE_5__* %0, i32 %1, %struct.sockaddr* %2, i32 %3, %struct.sockaddr* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip_mreq_source, align 4
  %19 = alloca %struct.in_addr, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %8
  %26 = bitcast %struct.ip_mreq_source* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %18, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_in*
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %18, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 4
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 4
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %25
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = call i64 @php_if_index_to_addr4(i32 %50, %struct.TYPE_5__* %51, %struct.in_addr* %19)
  %53 = load i64, i64* @FAILURE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -2, i32* %9, align 4
  br label %79

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %18, i32 0, i32 0
  %58 = bitcast %struct.in_addr* %57 to i8*
  %59 = bitcast %struct.in_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %65

60:                                               ; preds = %25
  %61 = load i32, i32* @INADDR_ANY, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %18, i32 0, i32 0
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @_php_source_op_to_ipv4_op(i32 %70)
  %72 = bitcast %struct.ip_mreq_source* %18 to i8*
  %73 = call i32 @setsockopt(i32 %68, i32 %69, i32 %71, i8* %72, i32 16)
  store i32 %73, i32* %9, align 4
  br label %79

74:                                               ; preds = %8
  %75 = load i32, i32* @E_WARNING, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @_php_source_op_to_string(i32 %76)
  %78 = call i32 @php_error_docref(i32* null, i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 -2, i32* %9, align 4
  br label %79

79:                                               ; preds = %74, %65, %55
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @php_if_index_to_addr4(i32, %struct.TYPE_5__*, %struct.in_addr*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @_php_source_op_to_ipv4_op(i32) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #2

declare dso_local i32 @_php_source_op_to_string(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
