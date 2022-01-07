; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh3_srv.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh3_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.mbuf, %struct.TYPE_2__* }
%struct.mbuf = type { i8*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.udp_res = type { i32 }

@MG_F_LISTENING = common dso_local global i32 0, align 4
@MG_EV_POLL = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"BUG\00", align 1
@MG_EV_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@MG_EV_RECV = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" RECV \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" CLOSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @eh3_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eh3_srv(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
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
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MG_F_LISTENING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MG_EV_POLL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MG_EV_CLOSE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %34 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %33, i32 0, i32 0
  %35 = call i32 @mbuf_append(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %36

36:                                               ; preds = %32, %28, %24
  br label %96

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MG_EV_ACCEPT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %43 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %42, i32 0, i32 0
  %44 = call i32 @mbuf_append(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  br label %96

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MG_EV_RECV, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %51 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %50, i32 0, i32 0
  %52 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %53 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 @mbuf_append(i32* %51, i8* %59, i32 1)
  %61 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %62 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %61, i32 0, i32 0
  %63 = call i32 @mbuf_append(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %64 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %65 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %64, i32 0, i32 0
  %66 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mbuf_append(i32* %65, i8* %68, i32 %71)
  %73 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mg_send(%struct.mg_connection* %73, i8* %76, i32 %79)
  %81 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mbuf_remove(%struct.mbuf* %81, i32 %84)
  br label %95

86:                                               ; preds = %45
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MG_EV_CLOSE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.udp_res*, %struct.udp_res** %7, align 8
  %92 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %91, i32 0, i32 0
  %93 = call i32 @mbuf_append(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %49
  br label %96

96:                                               ; preds = %36, %95, %41
  ret void
}

declare dso_local i32 @mbuf_append(i32*, i8*, i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
