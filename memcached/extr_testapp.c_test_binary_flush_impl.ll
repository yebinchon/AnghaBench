; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_flush_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_flush_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_FLUSH = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_GET = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_flush_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_flush_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %union.anon* %5 to [1024 x i8]*
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i64 @storage_command(i8* %10, i32 1024, i32 %11, i8* %12, i32 %14, i32* null, i32 0, i32 0, i32 0)
  store i64 %15, i64* %7, align 8
  %16 = bitcast %union.anon* %5 to [1024 x i8]*
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @safe_send(i8* %17, i64 %18, i32 0)
  %20 = bitcast %union.anon* %6 to [1024 x i8]*
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %22 = call i32 @safe_recv_packet(i8* %21, i32 1024)
  %23 = bitcast %union.anon* %6 to i32*
  %24 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %25 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %26 = call i32 @validate_response_header(i32* %23, i32 %24, i32 %25)
  %27 = bitcast %union.anon* %5 to [1024 x i8]*
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @flush_command(i8* %28, i32 1024, i32 %29, i32 2, i32 1)
  store i64 %30, i64* %7, align 8
  %31 = bitcast %union.anon* %5 to [1024 x i8]*
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @safe_send(i8* %32, i64 %33, i32 0)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PROTOCOL_BINARY_CMD_FLUSH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = bitcast %union.anon* %6 to [1024 x i8]*
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %39, i64 0, i64 0
  %41 = call i32 @safe_recv_packet(i8* %40, i32 1024)
  %42 = bitcast %union.anon* %6 to i32*
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %45 = call i32 @validate_response_header(i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %2
  %47 = bitcast %union.anon* %5 to [1024 x i8]*
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %47, i64 0, i64 0
  %49 = load i32, i32* @PROTOCOL_BINARY_CMD_GET, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i64 @raw_command(i8* %48, i32 1024, i32 %49, i8* %50, i32 %52, i32* null, i32 0)
  store i64 %53, i64* %7, align 8
  %54 = bitcast %union.anon* %5 to [1024 x i8]*
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %54, i64 0, i64 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @safe_send(i8* %55, i64 %56, i32 0)
  %58 = bitcast %union.anon* %6 to [1024 x i8]*
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %58, i64 0, i64 0
  %60 = call i32 @safe_recv_packet(i8* %59, i32 1024)
  %61 = bitcast %union.anon* %6 to i32*
  %62 = load i32, i32* @PROTOCOL_BINARY_CMD_GET, align 4
  %63 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %64 = call i32 @validate_response_header(i32* %61, i32 %62, i32 %63)
  %65 = call i32 @sleep(i32 2)
  %66 = bitcast %union.anon* %5 to [1024 x i8]*
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %66, i64 0, i64 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @safe_send(i8* %67, i64 %68, i32 0)
  %70 = bitcast %union.anon* %6 to [1024 x i8]*
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %70, i64 0, i64 0
  %72 = call i32 @safe_recv_packet(i8* %71, i32 1024)
  %73 = bitcast %union.anon* %6 to i32*
  %74 = load i32, i32* @PROTOCOL_BINARY_CMD_GET, align 4
  %75 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %76 = call i32 @validate_response_header(i32* %73, i32 %74, i32 %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %140, %46
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %143

80:                                               ; preds = %77
  %81 = bitcast %union.anon* %5 to [1024 x i8]*
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %81, i64 0, i64 0
  %83 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = call i64 @storage_command(i8* %82, i32 1024, i32 %83, i8* %84, i32 %86, i32* null, i32 0, i32 0, i32 0)
  store i64 %87, i64* %7, align 8
  %88 = bitcast %union.anon* %5 to [1024 x i8]*
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %88, i64 0, i64 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @safe_send(i8* %89, i64 %90, i32 0)
  %92 = bitcast %union.anon* %6 to [1024 x i8]*
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %92, i64 0, i64 0
  %94 = call i32 @safe_recv_packet(i8* %93, i32 1024)
  %95 = bitcast %union.anon* %6 to i32*
  %96 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %97 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %98 = call i32 @validate_response_header(i32* %95, i32 %96, i32 %97)
  %99 = bitcast %union.anon* %5 to [1024 x i8]*
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %99, i64 0, i64 0
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i64 @flush_command(i8* %100, i32 1024, i32 %101, i32 0, i32 %104)
  store i64 %105, i64* %7, align 8
  %106 = bitcast %union.anon* %5 to [1024 x i8]*
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %106, i64 0, i64 0
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @safe_send(i8* %107, i64 %108, i32 0)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @PROTOCOL_BINARY_CMD_FLUSH, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %80
  %114 = bitcast %union.anon* %6 to [1024 x i8]*
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %114, i64 0, i64 0
  %116 = call i32 @safe_recv_packet(i8* %115, i32 1024)
  %117 = bitcast %union.anon* %6 to i32*
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %120 = call i32 @validate_response_header(i32* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %80
  %122 = bitcast %union.anon* %5 to [1024 x i8]*
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %122, i64 0, i64 0
  %124 = load i32, i32* @PROTOCOL_BINARY_CMD_GET, align 4
  %125 = load i8*, i8** %3, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = call i64 @raw_command(i8* %123, i32 1024, i32 %124, i8* %125, i32 %127, i32* null, i32 0)
  store i64 %128, i64* %7, align 8
  %129 = bitcast %union.anon* %5 to [1024 x i8]*
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %129, i64 0, i64 0
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @safe_send(i8* %130, i64 %131, i32 0)
  %133 = bitcast %union.anon* %6 to [1024 x i8]*
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %133, i64 0, i64 0
  %135 = call i32 @safe_recv_packet(i8* %134, i32 1024)
  %136 = bitcast %union.anon* %6 to i32*
  %137 = load i32, i32* @PROTOCOL_BINARY_CMD_GET, align 4
  %138 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %139 = call i32 @validate_response_header(i32* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %77

143:                                              ; preds = %77
  %144 = load i32, i32* @TEST_PASS, align 4
  ret i32 %144
}

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

declare dso_local i64 @flush_command(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @raw_command(i8*, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
