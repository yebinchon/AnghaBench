; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh3_clnt.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh3_clnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.mbuf, %struct.TYPE_2__* }
%struct.mbuf = type { i8*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.udp_res = type { i32 }

@MG_EV_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"boo!\00", align 1
@MG_EV_RECV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" RECV \00", align 1
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" CLOSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @eh3_clnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eh3_clnt(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_res*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.udp_res*
  store %struct.udp_res* %14, %struct.udp_res** %7, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 1
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MG_EV_CONNECT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %23 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %22, i32 0, i32 0
  %24 = call i32 @mbuf_append(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = call i32 @mg_printf(%struct.mg_connection* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %64

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MG_EV_RECV, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %33 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %32, i32 0, i32 0
  %34 = call i32 @mbuf_append(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %35 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %36 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %35, i32 0, i32 0
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mbuf_append(i32* %36, i8* %39, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mbuf_remove(%struct.mbuf* %44, i32 %47)
  %49 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %50 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %51 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %63

54:                                               ; preds = %27
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MG_EV_CLOSE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %60 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %59, i32 0, i32 0
  %61 = call i32 @mbuf_append(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %31
  br label %64

64:                                               ; preds = %63, %21
  ret void
}

declare dso_local i32 @mbuf_append(i32*, i8*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
