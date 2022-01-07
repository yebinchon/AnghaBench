; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_concat_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_concat_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_9__, [1016 x i8] }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"world\00", align 1
@PROTOCOL_BINARY_RESPONSE_NOT_STORED = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_APPEND = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_PREPEND = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_NOOP = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_GETK = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_concat_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_concat_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = bitcast %union.anon* %5 to [1024 x i8]*
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i64 @raw_command(i8* %11, i32 1024, i32 %12, i8* %13, i32 %15, i8* %16, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = bitcast %union.anon* %5 to [1024 x i8]*
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @safe_send(i8* %21, i64 %22, i32 0)
  %24 = bitcast %union.anon* %6 to [1024 x i8]*
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %26 = call i32 @safe_recv_packet(i8* %25, i32 1024)
  %27 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_NOT_STORED, align 4
  %30 = call i32 @validate_response_header(%struct.TYPE_9__* %27, i32 %28, i32 %29)
  %31 = bitcast %union.anon* %5 to [1024 x i8]*
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %33 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i64 @storage_command(i8* %32, i32 1024, i32 %33, i8* %34, i32 %36, i8* %37, i32 %39, i32 0, i32 0)
  store i64 %40, i64* %8, align 8
  %41 = bitcast %union.anon* %5 to [1024 x i8]*
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %41, i64 0, i64 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @safe_send(i8* %42, i64 %43, i32 0)
  %45 = bitcast %union.anon* %6 to [1024 x i8]*
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %45, i64 0, i64 0
  %47 = call i32 @safe_recv_packet(i8* %46, i32 1024)
  %48 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %49 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %50 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %51 = call i32 @validate_response_header(%struct.TYPE_9__* %48, i32 %49, i32 %50)
  %52 = bitcast %union.anon* %5 to [1024 x i8]*
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %52, i64 0, i64 0
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i64 @raw_command(i8* %53, i32 1024, i32 %54, i8* %55, i32 %57, i8* %58, i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = bitcast %union.anon* %5 to [1024 x i8]*
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %62, i64 0, i64 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @safe_send(i8* %63, i64 %64, i32 0)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PROTOCOL_BINARY_CMD_APPEND, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PROTOCOL_BINARY_CMD_PREPEND, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69, %2
  %74 = bitcast %union.anon* %6 to [1024 x i8]*
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %74, i64 0, i64 0
  %76 = call i32 @safe_recv_packet(i8* %75, i32 1024)
  %77 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %80 = call i32 @validate_response_header(%struct.TYPE_9__* %77, i32 %78, i32 %79)
  br label %97

81:                                               ; preds = %69
  %82 = bitcast %union.anon* %5 to [1024 x i8]*
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* @PROTOCOL_BINARY_CMD_NOOP, align 4
  %85 = call i64 @raw_command(i8* %83, i32 1024, i32 %84, i8* null, i32 0, i8* null, i32 0)
  store i64 %85, i64* %8, align 8
  %86 = bitcast %union.anon* %5 to [1024 x i8]*
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %86, i64 0, i64 0
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @safe_send(i8* %87, i64 %88, i32 0)
  %90 = bitcast %union.anon* %6 to [1024 x i8]*
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %90, i64 0, i64 0
  %92 = call i32 @safe_recv_packet(i8* %91, i32 1024)
  %93 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %94 = load i32, i32* @PROTOCOL_BINARY_CMD_NOOP, align 4
  %95 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %96 = call i32 @validate_response_header(%struct.TYPE_9__* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %81, %73
  %98 = bitcast %union.anon* %5 to [1024 x i8]*
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %98, i64 0, i64 0
  %100 = load i32, i32* @PROTOCOL_BINARY_CMD_GETK, align 4
  %101 = load i8*, i8** %3, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i64 @raw_command(i8* %99, i32 1024, i32 %100, i8* %101, i32 %103, i8* null, i32 0)
  store i64 %104, i64* %8, align 8
  %105 = bitcast %union.anon* %5 to [1024 x i8]*
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %105, i64 0, i64 0
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @safe_send(i8* %106, i64 %107, i32 0)
  %109 = bitcast %union.anon* %6 to [1024 x i8]*
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %109, i64 0, i64 0
  %111 = call i32 @safe_recv_packet(i8* %110, i32 1024)
  %112 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %113 = load i32, i32* @PROTOCOL_BINARY_CMD_GETK, align 4
  %114 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %115 = call i32 @validate_response_header(%struct.TYPE_9__* %112, i32 %113, i32 %114)
  %116 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = bitcast %union.anon* %6 to %struct.TYPE_9__*
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %134, %137
  %139 = add nsw i32 %138, 4
  %140 = icmp eq i32 %132, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = bitcast %union.anon* %6 to [1024 x i8]*
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %143, i64 0, i64 0
  store i8* %144, i8** %9, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 8
  store i8* %146, i8** %9, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 4
  store i8* %148, i8** %9, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load i8*, i8** %3, align 8
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = call i64 @memcmp(i8* %149, i8* %150, i32 %152)
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = load i8*, i8** %9, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = call i64 @memcmp(i8* %162, i8* %163, i32 %165)
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = load i8*, i8** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @strlen(i8* %177)
  %179 = call i64 @memcmp(i8* %175, i8* %176, i32 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* @TEST_PASS, align 4
  ret i32 %183
}

declare dso_local i64 @raw_command(i8*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
