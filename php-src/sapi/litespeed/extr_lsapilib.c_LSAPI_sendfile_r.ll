; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_sendfile_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_sendfile_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.lsapi_packet_header* }
%struct.lsapi_packet_header = type { i32 }

@LSAPI_ST_RESP_HEADER = common dso_local global i32 0, align 4
@LSAPI_ST_RESP_BODY = common dso_local global i32 0, align 4
@LSAPI_RESP_STREAM = common dso_local global i32 0, align 4
@LSAPI_PACKET_HEADER_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_sendfile_r(%struct.TYPE_5__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lsapi_packet_header*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %12, align 8
  store %struct.lsapi_packet_header* %13, %struct.lsapi_packet_header** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %16, %4
  store i32 -1, i32* %5, align 4
  br label %67

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LSAPI_ST_RESP_HEADER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = call i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @LSAPI_ST_RESP_BODY, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = call i32 @LSAPI_Flush_r(%struct.TYPE_5__* %41)
  %43 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %10, align 8
  %44 = load i32, i32* @LSAPI_RESP_STREAM, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @LSAPI_PACKET_HEADER_LEN, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header* %43, i32 %44, i64 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %10, align 8
  %53 = bitcast %struct.lsapi_packet_header* %52 to i8*
  %54 = load i64, i64* @LSAPI_PACKET_HEADER_LEN, align 8
  %55 = call i64 @write(i32 %51, i8* %53, i64 %54)
  %56 = load i64, i64* @LSAPI_PACKET_HEADER_LEN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %67

59:                                               ; preds = %35
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @gsendfile(i32 %62, i32 %63, i32* %64, i64 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %58, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @LSAPI_FinalizeRespHeaders_r(%struct.TYPE_5__*) #1

declare dso_local i32 @LSAPI_Flush_r(%struct.TYPE_5__*) #1

declare dso_local i32 @lsapi_buildPacketHeader(%struct.lsapi_packet_header*, i32, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @gsendfile(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
