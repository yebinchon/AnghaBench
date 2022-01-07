; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_End_Response_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_End_Response_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }

@LSAPI_ST_BACKGROUND = common dso_local global i32 0, align 4
@LSAPI_ST_RESP_HEADER = common dso_local global i32 0, align 4
@finish_close = common dso_local global i64 0, align 8
@LSAPI_PACKET_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_End_Response_r(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LSAPI_ST_BACKGROUND, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %89

15:                                               ; preds = %7
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LSAPI_ST_RESP_HEADER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %89

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_9__* %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @Flush_RespBuf_r(%struct.TYPE_9__* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i64, i64* @finish_close, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* @LSAPI_PACKET_HEADER_LEN, align 4
  %63 = shl i32 %62, 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @LSAPI_PACKET_HEADER_LEN, align 4
  %69 = shl i32 %68, 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 1
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %75, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @LSAPI_Flush_r(%struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = call i32 @lsapi_close_connection(%struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %55, %20
  %83 = load i32, i32* @LSAPI_ST_BACKGROUND, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %15
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %40, %14, %6
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_9__*) #1

declare dso_local i32 @Flush_RespBuf_r(%struct.TYPE_9__*) #1

declare dso_local i32 @LSAPI_Flush_r(%struct.TYPE_9__*) #1

declare dso_local i32 @lsapi_close_connection(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
