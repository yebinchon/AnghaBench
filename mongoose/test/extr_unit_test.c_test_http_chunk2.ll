; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_chunk2.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_chunk2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32*, i32 (i32*)*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.mg_mgr* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mg_mgr = type { i32 }
%struct.http_message = type { i32*, i32 (i32*)*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.mg_mgr* }

@INVALID_SOCKET = common dso_local global i32 0, align 4
@eh_chunk2 = common dso_local global i32 0, align 4
@s_handle_chunk_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"llo\0D\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"5\0D\0Ahello\0D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"3\0D\0A:-)\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"3\0D\0A...\0D\0Aa\0D\0A0123456789\0D\0A0\0D\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"...01234567890\0D\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"...0123456789\00", align 1
@s_events = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"_102_102_102_102\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_chunk2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_chunk2() #0 {
  %1 = alloca %struct.mg_connection, align 8
  %2 = alloca %struct.http_message, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.mg_mgr, align 4
  %5 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = bitcast i8* %5 to [100 x i8]*
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 0
  store i8 53, i8* %7, align 16
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 1
  store i8 13, i8* %8, align 1
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 2
  store i8 10, i8* %9, align 2
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 3
  store i8 104, i8* %10, align 1
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 4
  store i8 101, i8* %11, align 4
  %12 = call i32 @mg_mgr_init(%struct.mg_mgr* %4, i32* null)
  %13 = call i32 @memset(%struct.mg_connection* %1, i32 0, i32 40)
  %14 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %15 = call i32 @memset(%struct.mg_connection* %14, i32 0, i32 40)
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 6
  store %struct.mg_mgr* %4, %struct.mg_mgr** %16, align 8
  %17 = load i32, i32* @INVALID_SOCKET, align 4
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @eh_chunk2, align 4
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = call i32 @mg_http_create_proto_data(%struct.mg_connection* %1)
  %22 = getelementptr inbounds %struct.http_message, %struct.http_message* %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.http_message, %struct.http_message* %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  store i32 0, i32* @s_handle_chunk_event, align 4
  %26 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %26, i8* %27, i32 %29)
  %31 = call i32 @ASSERT_EQ(i32 %30, i32 0)
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %33 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %34, i8* %35, i32 %37)
  %39 = call i32 @ASSERT_EQ(i32 %38, i32 0)
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %41 = call i32 @ASSERT_STREQ(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %44, i8* %45, i32 %47)
  %49 = call i32 @ASSERT_EQ(i32 %48, i32 5)
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %51 = call i32 @ASSERT_STREQ(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @s_handle_chunk_event, align 4
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %53 = call i32 @strcat(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %54 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %54, i8* %55, i32 %57)
  %59 = call i32 @ASSERT_EQ(i32 %58, i32 8)
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %61 = call i32 @ASSERT_STREQ(i8* %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @s_handle_chunk_event, align 4
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %63 = call i32 @strcat(i8* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %64 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %64, i8* %65, i32 %67)
  %69 = call i32 @ASSERT_EQ(i32 %68, i32 13)
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %71 = call i32 @ASSERT_STREQ(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.http_message, %struct.http_message* %2, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ASSERT_EQ64(i32 %74, i64 -1)
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %77 = call i32 @strcat(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %78 = bitcast %struct.http_message* %2 to %struct.mg_connection*
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  %82 = call i32 @mg_handle_chunked(%struct.mg_connection* %1, %struct.mg_connection* %78, i8* %79, i32 %81)
  %83 = call i32 @ASSERT_EQ(i32 %82, i32 13)
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %85 = call i32 @ASSERT_STREQ(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.http_message, %struct.http_message* %2, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ASSERT_EQ(i32 %88, i32 13)
  %90 = load i8*, i8** @s_events, align 8
  %91 = call i32 @ASSERT_STREQ(i8* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 1
  %98 = load i32 (i32*)*, i32 (i32*)** %97, align 8
  %99 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 %98(i32* %100)
  %102 = call i32 @mg_mgr_free(%struct.mg_mgr* %4)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @memset(%struct.mg_connection*, i32, i32) #2

declare dso_local i32 @mg_http_create_proto_data(%struct.mg_connection*) #2

declare dso_local i32 @ASSERT_EQ(i32, i32) #2

declare dso_local i32 @mg_handle_chunked(%struct.mg_connection*, %struct.mg_connection*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

declare dso_local i32 @ASSERT_EQ64(i32, i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
