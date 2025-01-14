; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_io.c_coap_send.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_io.c_coap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@COAP_INVALID_TID = common dso_local global i32 0, align 4
@ESPCONN_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_send(%struct.espconn* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.espconn*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.espconn* %0, %struct.espconn** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* @COAP_INVALID_TID, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.espconn*, %struct.espconn** %4, align 8
  %11 = icmp ne %struct.espconn* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %12
  %18 = load %struct.espconn*, %struct.espconn** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @espconn_sent(%struct.espconn* %18, i8* %23, i32 %27)
  %29 = load %struct.espconn*, %struct.espconn** %4, align 8
  %30 = getelementptr inbounds %struct.espconn, %struct.espconn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ESPCONN_TCP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %17
  %35 = load %struct.espconn*, %struct.espconn** %4, align 8
  %36 = getelementptr inbounds %struct.espconn, %struct.espconn* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %7, i32 %40, i32 4)
  %42 = load %struct.espconn*, %struct.espconn** %4, align 8
  %43 = getelementptr inbounds %struct.espconn, %struct.espconn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %62

48:                                               ; preds = %17
  %49 = load %struct.espconn*, %struct.espconn** %4, align 8
  %50 = getelementptr inbounds %struct.espconn, %struct.espconn* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32* %7, i32 %54, i32 4)
  %56 = load %struct.espconn*, %struct.espconn** %4, align 8
  %57 = getelementptr inbounds %struct.espconn, %struct.espconn* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %48, %34
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @coap_transaction_id(i32 %63, i32 %64, i32 %67, i32* %6)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @espconn_sent(%struct.espconn*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @coap_transaction_id(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
