; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_stat.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_9__, [1016 x i8] }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PROTOCOL_BINARY_CMD_STAT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_binary_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_stat() #0 {
  %1 = alloca %union.anon, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %union.anon* %1 to [1024 x i8]*
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %5 = load i32, i32* @PROTOCOL_BINARY_CMD_STAT, align 4
  %6 = call i64 @raw_command(i8* %4, i32 1024, i32 %5, i32* null, i32 0, i32* null, i32 0)
  store i64 %6, i64* %2, align 8
  %7 = bitcast %union.anon* %1 to [1024 x i8]*
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @safe_send(i8* %8, i64 %9, i32 0)
  br label %11

11:                                               ; preds = %19, %0
  %12 = bitcast %union.anon* %1 to [1024 x i8]*
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %14 = call i32 @safe_recv_packet(i8* %13, i32 1024)
  %15 = bitcast %union.anon* %1 to %struct.TYPE_9__*
  %16 = load i32, i32* @PROTOCOL_BINARY_CMD_STAT, align 4
  %17 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %18 = call i32 @validate_response_header(%struct.TYPE_9__* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = bitcast %union.anon* %1 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @TEST_PASS, align 4
  ret i32 %28
}

declare dso_local i64 @raw_command(i8*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
