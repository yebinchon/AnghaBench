; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls_get_ticket_from_client.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls_get_ticket_from_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@SSL3_VERSION = common dso_local global i64 0, align 8
@SSL_TICKET_NONE = common dso_local global i32 0, align 4
@TLSEXT_IDX_session_ticket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_ticket_from_client(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32**, i32*** %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSL3_VERSION, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = call i32 @tls_use_ticket(%struct.TYPE_10__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @SSL_TICKET_NONE, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i64, i64* @TLSEXT_IDX_session_ticket, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %29
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @SSL_TICKET_NONE, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %25
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = call i64 @PACKET_remaining(i32* %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = call i32 @PACKET_data(i32* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = call i32 @tls_decrypt_ticket(%struct.TYPE_10__* %41, i32 %44, i64 %45, i32 %48, i32 %51, i32** %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %37, %35, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @tls_use_ticket(%struct.TYPE_10__*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @tls_decrypt_ticket(%struct.TYPE_10__*, i32, i64, i32, i32, i32**) #1

declare dso_local i32 @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
