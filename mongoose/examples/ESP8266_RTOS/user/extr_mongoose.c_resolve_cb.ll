; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_resolve_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_resolve_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.mg_connection = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MG_F_RESOLVING = common dso_local global i32 0, align 4
@MG_DNS_A_RECORD = common dso_local global i64 0, align 8
@MG_F_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@MG_RESOLVE_TIMEOUT = common dso_local global i32 0, align 4
@MG_EV_TIMER = common dso_local global i32 0, align 4
@MG_EV_CONNECT = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_dns_message*, i8*, i32)* @resolve_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_cb(%struct.mg_dns_message* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mg_dns_message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store %struct.mg_dns_message* %0, %struct.mg_dns_message** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mg_connection*
  store %struct.mg_connection* %12, %struct.mg_connection** %7, align 8
  store i32 -1, i32* %9, align 4
  %13 = load i32, i32* @MG_F_RESOLVING, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mg_dns_message*, %struct.mg_dns_message** %4, align 8
  %20 = icmp ne %struct.mg_dns_message* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mg_dns_message*, %struct.mg_dns_message** %4, align 8
  %25 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.mg_dns_message*, %struct.mg_dns_message** %4, align 8
  %30 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MG_DNS_A_RECORD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %28
  %40 = load %struct.mg_dns_message*, %struct.mg_dns_message** %4, align 8
  %41 = load %struct.mg_dns_message*, %struct.mg_dns_message** %4, align 8
  %42 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %48 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %40, %struct.TYPE_6__* %46, i32* %50, i32 4)
  %52 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %53 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %54 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MG_F_UDP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @SOCK_DGRAM, align 4
  br label %63

61:                                               ; preds = %39
  %62 = load i32, i32* @SOCK_STREAM, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %66 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %65, i32 0, i32 2
  %67 = call i32 @mg_do_connect(%struct.mg_connection* %52, i32 %64, %struct.TYPE_5__* %66)
  br label %100

68:                                               ; preds = %28
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %22

72:                                               ; preds = %22
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MG_RESOLVE_TIMEOUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = call double (...) @mg_time()
  store double %78, double* %10, align 8
  %79 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %80 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %81 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MG_EV_TIMER, align 4
  %84 = call i32 (%struct.mg_connection*, i32*, i32, i32, ...) @mg_call(%struct.mg_connection* %79, i32* null, i32 %82, i32 %83, double* %10)
  br label %85

85:                                               ; preds = %77, %73
  %86 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %87 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %88 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MG_EV_CONNECT, align 4
  %91 = call i32 (%struct.mg_connection*, i32*, i32, i32, ...) @mg_call(%struct.mg_connection* %86, i32* null, i32 %89, i32 %90, i32* %9)
  %92 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %93 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %94 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MG_EV_CLOSE, align 4
  %97 = call i32 (%struct.mg_connection*, i32*, i32, i32, ...) @mg_call(%struct.mg_connection* %92, i32* null, i32 %95, i32 %96, i8* null)
  %98 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %99 = call i32 @mg_destroy_conn(%struct.mg_connection* %98, i32 1)
  br label %100

100:                                              ; preds = %85, %63
  ret void
}

declare dso_local i32 @mg_dns_parse_record_data(%struct.mg_dns_message*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @mg_do_connect(%struct.mg_connection*, i32, %struct.TYPE_5__*) #1

declare dso_local double @mg_time(...) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, ...) #1

declare dso_local i32 @mg_destroy_conn(%struct.mg_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
