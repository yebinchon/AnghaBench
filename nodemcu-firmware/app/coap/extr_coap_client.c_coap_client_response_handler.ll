; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_client.c_coap_client_response_handler.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_client.c_coap_client_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@.str = private unnamed_addr constant [41 x i8] c"coap_client_response_handler is called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad packet rc=%d\0A\00", align 1
@COAP_TYPE_CON = common dso_local global i64 0, align 8
@COAP_TYPE_NONCON = common dso_local global i64 0, align 8
@COAP_TYPE_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"got RST\0A\00", align 1
@COAP_INVALID_TID = common dso_local global i32 0, align 4
@gQueue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%d.%02d\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coap_client_response_handler(i8* %0, i16 zeroext %1, i16 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i16, i16* %7, align 2
  %21 = call i32 @coap_parse(%struct.TYPE_12__* %11, i8* %19, i16 zeroext %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 0, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %104

26:                                               ; preds = %5
  %27 = call i32 @check_token(%struct.TYPE_12__* %11)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COAP_TYPE_CON, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @COAP_TYPE_NONCON, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %35
  br label %105

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @COAP_TYPE_RESET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %105

51:                                               ; preds = %43
  %52 = load i32, i32* @COAP_INVALID_TID, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @coap_transaction_id(i32 %53, i32 %54, %struct.TYPE_12__* %11, i32* %13)
  %56 = call i32 (...) @coap_timer_stop()
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @coap_remove_node(i32* @gQueue, i32 %57)
  %59 = call i32 @coap_timer_update(i32* @gQueue)
  %60 = call i32 @coap_timer_start(i32* @gQueue)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @COAP_RESPONSE_CLASS(i32 %63)
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %81

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 5
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 31
  %75 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 (i8*, ...) @NODE_DBG(i8* %79)
  br label %103

81:                                               ; preds = %51
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @COAP_RESPONSE_CLASS(i32 %84)
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 5
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 31
  %96 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 (i8*, ...) @NODE_DBG(i8* %100)
  br label %102

102:                                              ; preds = %87, %81
  br label %103

103:                                              ; preds = %102, %66
  br label %104

104:                                              ; preds = %103, %23
  br label %105

105:                                              ; preds = %104, %49, %42
  %106 = load i32, i32* @gQueue, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108, %105
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @coap_parse(%struct.TYPE_12__*, i8*, i16 zeroext) #1

declare dso_local i32 @check_token(%struct.TYPE_12__*) #1

declare dso_local i32 @coap_transaction_id(i32, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @coap_timer_stop(...) #1

declare dso_local i32 @coap_remove_node(i32*, i32) #1

declare dso_local i32 @coap_timer_update(i32*) #1

declare dso_local i32 @coap_timer_start(i32*) #1

declare dso_local i32 @COAP_RESPONSE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
