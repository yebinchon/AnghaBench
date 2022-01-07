; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_sent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_10__* }

@ESPCONN_OK = common dso_local global i32 0, align 4
@MBEDTLS_SSL_PLAIN_ADD = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@lwIPThreadPrio = common dso_local global i32 0, align 4
@NETCONN_EVENT_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @espconn_ssl_sent(i8* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = call i32 @lwIP_ASSERT(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @lwIP_ASSERT(%struct.TYPE_10__* %17)
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  %21 = call i32 @lwIP_ASSERT(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %10, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = call i32 @lwIP_ASSERT(%struct.TYPE_10__* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MBEDTLS_SSL_PLAIN_ADD, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* @MBEDTLS_SSL_PLAIN_ADD, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @mbedtls_ssl_write(i32* %37, %struct.TYPE_10__* %38, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  br label %76

58:                                               ; preds = %32
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %58
  br label %75

66:                                               ; preds = %62
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @mbedtls_fail_info(%struct.TYPE_10__* %67, i32 %68)
  %70 = load i32, i32* @lwIPThreadPrio, align 4
  %71 = load i32, i32* @NETCONN_EVENT_CLOSE, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = ptrtoint %struct.TYPE_10__* %72 to i32
  %74 = call i32 @ets_post(i32 %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %66, %65
  br label %76

76:                                               ; preds = %75, %43
  ret void
}

declare dso_local i32 @lwIP_ASSERT(%struct.TYPE_10__*) #1

declare dso_local i32 @mbedtls_ssl_write(i32*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @mbedtls_fail_info(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ets_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
