; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_recv_data_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_recv_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.pbuf = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"[APPL]: >> TCP Data.\0D\0A\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@TCP_DATA_SIZE = common dso_local global i64 0, align 8
@ALL_APP_LED = common dso_local global i32 0, align 4
@DISPLAY_LED_0 = common dso_local global i32 0, align 4
@DISPLAY_LED_1 = common dso_local global i32 0, align 4
@DISPLAY_LED_2 = common dso_local global i32 0, align 4
@DISPLAY_LED_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"[APPL]: TCP data received in incorrect format.\0D\0A\00", align 1
@mp_tcp_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_recv_data_handler(i8* %0, %struct.tcp_pcb* %1, %struct.pbuf* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store %struct.pbuf* %2, %struct.pbuf** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @APPL_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @ERR_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %4
  %16 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_DATA_SIZE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 24
  %29 = and i32 %28, -16777216
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = and i32 %33, 16711680
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = and i32 %40, 65280
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @ALL_APP_LED, align 4
  %51 = call i32 @LEDS_OFF(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %24
  %56 = load i32, i32* @DISPLAY_LED_0, align 4
  %57 = call i32 @LEDS_ON(i32 %56)
  br label %58

58:                                               ; preds = %55, %24
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @DISPLAY_LED_1, align 4
  %64 = call i32 @LEDS_ON(i32 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @DISPLAY_LED_2, align 4
  %71 = call i32 @LEDS_ON(i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @DISPLAY_LED_3, align 4
  %78 = call i32 @LEDS_ON(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @tcp_send_data(%struct.tcp_pcb* %80, i32 %81)
  br label %85

83:                                               ; preds = %15
  %84 = call i32 @APPL_LOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %87 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tcp_recved(%struct.tcp_pcb* %86, i32 %89)
  %91 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %92 = call i32 @pbuf_free(%struct.pbuf* %91)
  %93 = call i32 @UNUSED_VARIABLE(i32 %92)
  br label %104

94:                                               ; preds = %4
  %95 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %96 = icmp ne %struct.pbuf* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %99 = call i32 @pbuf_free(%struct.pbuf* %98)
  %100 = call i32 @UNUSED_VARIABLE(i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* @mp_tcp_port, align 4
  %103 = call i32 @tcp_port_close(i32 %102)
  br label %104

104:                                              ; preds = %101, %85
  %105 = load i64, i64* @ERR_OK, align 8
  ret i64 %105
}

declare dso_local i32 @APPL_LOG(i8*) #1

declare dso_local i32 @LEDS_OFF(i32) #1

declare dso_local i32 @LEDS_ON(i32) #1

declare dso_local i32 @tcp_send_data(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_recved(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @UNUSED_VARIABLE(i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @tcp_port_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
