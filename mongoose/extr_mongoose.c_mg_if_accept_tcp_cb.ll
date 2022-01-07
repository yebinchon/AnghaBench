; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_if_accept_tcp_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_if_accept_tcp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %union.socket_address, i32, %struct.TYPE_4__* }
%union.socket_address = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p %s://%s:%hu\00", align 1
@MG_F_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@MG_EV_ACCEPT = common dso_local global i32 0, align 4
@MG_F_SSL = common dso_local global i32 0, align 4
@MG_SSL_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_if_accept_tcp_cb(%struct.mg_connection* %0, %union.socket_address* %1, i64 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %union.socket_address*, align 8
  %6 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %union.socket_address* %1, %union.socket_address** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @LL_DEBUG, align 4
  %8 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MG_F_UDP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %union.socket_address*, %union.socket_address** %5, align 8
  %18 = bitcast %union.socket_address* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @inet_ntoa(i32 %20)
  %22 = load %union.socket_address*, %union.socket_address** %5, align 8
  %23 = bitcast %union.socket_address* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @LOG(i32 %7, i8* %28)
  %30 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %31 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %30, i32 0, i32 1
  %32 = load %union.socket_address*, %union.socket_address** %5, align 8
  %33 = bitcast %union.socket_address* %31 to i8*
  %34 = bitcast %union.socket_address* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MG_EV_ACCEPT, align 4
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 1
  %42 = call i32 @mg_call(%struct.mg_connection* %35, i32* null, i32 %38, i32 %39, %union.socket_address* %41)
  %43 = load i64, i64* %6, align 8
  ret void
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, %union.socket_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
