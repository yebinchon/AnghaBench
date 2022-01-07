; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_io.c_coap_send_confirmed.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_io.c_coap_send_confirmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32*, %struct.espconn*, i64 }

@.str = private unnamed_addr constant [42 x i8] c"coap_send_confirmed: insufficient memory\0A\00", align 1
@COAP_INVALID_TID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"coap_send_confirmed: error sending pdu\0A\00", align 1
@COAP_DEFAULT_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@COAP_TICKS_PER_SECOND = common dso_local global i32 0, align 4
@gQueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coap_send_confirmed(%struct.espconn* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.espconn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.espconn* %0, %struct.espconn** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call %struct.TYPE_5__* (...) @coap_new_node()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @NODE_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @COAP_INVALID_TID, align 8
  store i64 %14, i64* %3, align 8
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.espconn*, %struct.espconn** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @coap_send(%struct.espconn* %18, i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @COAP_INVALID_TID, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = call i32 @NODE_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i32 @coap_free_node(%struct.TYPE_5__* %30)
  %32 = load i64, i64* @COAP_INVALID_TID, align 8
  store i64 %32, i64* %3, align 8
  br label %68

33:                                               ; preds = %15
  %34 = call i32 (...) @rand()
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @COAP_DEFAULT_RESPONSE_TIMEOUT, align 4
  %36 = load i32, i32* @COAP_TICKS_PER_SECOND, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @COAP_DEFAULT_RESPONSE_TIMEOUT, align 4
  %39 = ashr i32 %38, 1
  %40 = load i32, i32* @COAP_TICKS_PER_SECOND, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 255
  %43 = mul nsw i32 %40, %42
  %44 = ashr i32 %43, 8
  %45 = mul nsw i32 %39, %44
  %46 = add nsw i32 %37, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.espconn*, %struct.espconn** %4, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store %struct.espconn* %49, %struct.espconn** %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = call i32 (...) @coap_timer_stop()
  %56 = call i32 @coap_timer_update(i32* @gQueue)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = call i32 @coap_insert_node(i32* @gQueue, %struct.TYPE_5__* %62)
  %64 = call i32 @coap_timer_start(i32* @gQueue)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %33, %28, %12
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_5__* @coap_new_node(...) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @coap_send(%struct.espconn*, i32*) #1

declare dso_local i32 @coap_free_node(%struct.TYPE_5__*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @coap_timer_stop(...) #1

declare dso_local i32 @coap_timer_update(i32*) #1

declare dso_local i32 @coap_insert_node(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @coap_timer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
