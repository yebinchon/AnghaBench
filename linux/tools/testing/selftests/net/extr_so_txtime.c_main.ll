; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i8*, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@cfg_do_ipv6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@cfg_port = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@cfg_do_ipv4 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in6, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @parse_opts(i32 %8, i8** %9)
  %11 = load i64, i64* @cfg_do_ipv6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = bitcast %struct.sockaddr_in6* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load i32, i32* @AF_INET6, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @cfg_port, align 4
  %18 = call i8* @htons(i32 %17)
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @in6addr_loopback, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = bitcast %struct.sockaddr_in6* %6 to i8*
  %23 = call i32 @do_test(i8* %22, i32 24)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i64, i64* @cfg_do_ipv4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 24, i1 false)
  %29 = load i32, i32* @AF_INET, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @cfg_port, align 4
  %32 = call i8* @htons(i32 %31)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @INADDR_LOOPBACK, align 4
  %35 = call i32 @htonl(i32 %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = bitcast %struct.sockaddr_in* %7 to i8*
  %39 = call i32 @do_test(i8* %38, i32 24)
  br label %40

40:                                               ; preds = %27, %24
  ret i32 0
}

declare dso_local i32 @parse_opts(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @do_test(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
