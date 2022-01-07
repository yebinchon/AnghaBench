; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_basic_auth_helpers.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_basic_auth_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, i32 }
%struct.mbuf = type { i32, i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Authorization: Basic Zm9vOmJhcg==\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"foo:bar\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Basic Zm9vOmJhcg==\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Basic Zm9v\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Basic Zm9vOmJhcjpiYXo=\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bar:baz\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Basic Zm9vOg==\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Basic OmJhcg==\00", align 1
@__const.test_basic_auth_helpers.cases = private unnamed_addr constant [5 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 -1 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_basic_auth_helpers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_basic_auth_helpers() #0 {
  %1 = alloca %struct.mbuf, align 4
  %2 = alloca %struct.mg_str, align 4
  %3 = alloca %struct.mg_str, align 4
  %4 = alloca %struct.mg_str, align 4
  %5 = alloca %struct.mg_str, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca [5 x %struct.anon], align 16
  %10 = alloca %struct.mg_str, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @mbuf_init(%struct.mbuf* %1, i32 0)
  %13 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = call i32 @mg_mk_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mg_basic_auth_header(i32 %18, i32 %20, %struct.mbuf* %1)
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ASSERT_EQ(i32 %23, i32 35)
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcmp(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 35)
  %28 = call i32 @ASSERT_EQ(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = call i32 @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = call i32 @mg_mk_str_n(i32* null, i32 0)
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mg_basic_auth_header(i32 %35, i32 %37, %struct.mbuf* %1)
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ASSERT_EQ(i32 %40, i32 35)
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcmp(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 35)
  %45 = call i32 @ASSERT_EQ(i32 %44, i32 0)
  %46 = call i32 @mbuf_free(%struct.mbuf* %1)
  %47 = bitcast [5 x %struct.anon]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 bitcast ([5 x %struct.anon]* @__const.test_basic_auth_helpers.cases to i8*), i64 160, i1 false)
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %85, %0
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %49, 5
  br i1 %50, label %51, label %88

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 16
  %56 = call i32 @mg_mk_str(i8* %55)
  %57 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %59 = call i32 @memset(i8* %58, i32 0, i32 256)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i32 0, i32 256)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = call i32 @mg_parse_http_basic_auth(%struct.mg_str* %10, i8* %62, i32 256, i8* %63, i32 256)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ASSERT_EQ(i32 %65, i32 %69)
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %71, i8* %75)
  %77 = call i32 @ASSERT_EQ(i32 %76, i32 0)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 16
  %83 = call i32 @strcmp(i8* %78, i8* %82)
  %84 = call i32 @ASSERT_EQ(i32 %83, i32 0)
  br label %85

85:                                               ; preds = %51
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %48

88:                                               ; preds = %48
  ret i8* null
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_basic_auth_header(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @mg_mk_str(i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @mg_mk_str_n(i32*, i32) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mg_parse_http_basic_auth(%struct.mg_str*, i8*, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
