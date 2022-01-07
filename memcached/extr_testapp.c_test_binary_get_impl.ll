; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_get_impl.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_get_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }
%union.anon.0 = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_CMD_GAT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_GATK = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_ADD = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test_binary_get_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_get_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.anon.0, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i32 @htonl(i32 3600)
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PROTOCOL_BINARY_CMD_GAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PROTOCOL_BINARY_CMD_GATK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i64 4, i64* %8, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = bitcast %union.anon* %5 to [1024 x i8]*
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32* [ %7, %28 ], [ null, %29 ]
  %32 = load i64, i64* %8, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i64 @ext_command(i8* %24, i32 1024, i32 %25, i32* %31, i64 %32, i8* %33, i32 %35, i32* null, i32 0)
  store i64 %36, i64* %9, align 8
  %37 = bitcast %union.anon* %5 to [1024 x i8]*
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %37, i64 0, i64 0
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @safe_send(i8* %38, i64 %39, i32 0)
  %41 = bitcast %union.anon* %6 to [1024 x i8]*
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %41, i64 0, i64 0
  %43 = call i32 @safe_recv_packet(i8* %42, i32 1024)
  %44 = bitcast %union.anon* %6 to i32*
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %47 = call i32 @validate_response_header(i32* %44, i32 %45, i32 %46)
  %48 = bitcast %union.anon* %5 to [1024 x i8]*
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %48, i64 0, i64 0
  %50 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i64 @storage_command(i8* %49, i32 1024, i32 %50, i8* %51, i32 %53, i32* null, i32 0, i32 0, i32 0)
  store i64 %54, i64* %9, align 8
  %55 = bitcast %union.anon* %5 to [1024 x i8]*
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %55, i64 0, i64 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @safe_send(i8* %56, i64 %57, i32 0)
  %59 = bitcast %union.anon* %6 to [1024 x i8]*
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %59, i64 0, i64 0
  %61 = call i32 @safe_recv_packet(i8* %60, i32 1024)
  %62 = bitcast %union.anon* %6 to i32*
  %63 = load i32, i32* @PROTOCOL_BINARY_CMD_ADD, align 4
  %64 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %65 = call i32 @validate_response_header(i32* %62, i32 %63, i32 %64)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %95, %30
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %98

69:                                               ; preds = %66
  %70 = bitcast %union.anon.0* %11 to [1024 x i8]*
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %70, i64 0, i64 0
  %72 = load i32, i32* %4, align 4
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %75
  %78 = phi i32* [ %7, %75 ], [ null, %76 ]
  %79 = load i64, i64* %8, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i64 @ext_command(i8* %71, i32 1024, i32 %72, i32* %78, i64 %79, i8* %80, i32 %82, i32* null, i32 0)
  store i64 %83, i64* %12, align 8
  %84 = bitcast %union.anon* %5 to [1024 x i8]*
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %84, i64 0, i64 0
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = bitcast %union.anon.0* %11 to [1024 x i8]*
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %88, i64 0, i64 0
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @memcpy(i8* %87, i8* %89, i64 %90)
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %77
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %66

98:                                               ; preds = %66
  %99 = bitcast %union.anon* %5 to [1024 x i8]*
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %99, i64 0, i64 0
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @safe_send(i8* %100, i64 %101, i32 0)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %114, %98
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = bitcast %union.anon* %6 to [1024 x i8]*
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %107, i64 0, i64 0
  %109 = call i32 @safe_recv_packet(i8* %108, i32 1024)
  %110 = bitcast %union.anon* %6 to i32*
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_SUCCESS, align 4
  %113 = call i32 @validate_response_header(i32* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %103

117:                                              ; preds = %103
  %118 = load i32, i32* @TEST_PASS, align 4
  ret i32 %118
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ext_command(i8*, i32, i32, i32*, i64, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

declare dso_local i64 @storage_command(i8*, i32, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
