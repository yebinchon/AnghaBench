; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_test_tls_crypt_setup.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_test_tls_crypt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i8*, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@TESTBUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"1234567890\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"012345678\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @test_tls_crypt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls_crypt_setup(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.test_tls_crypt_context*, align 8
  %5 = alloca %struct.key, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = call %struct.test_tls_crypt_context* @calloc(i32 1, i32 48)
  store %struct.test_tls_crypt_context* %9, %struct.test_tls_crypt_context** %4, align 8
  %10 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %11 = bitcast %struct.test_tls_crypt_context* %10 to i8*
  %12 = load i8**, i8*** %3, align 8
  store i8* %11, i8** %12, align 8
  %13 = bitcast %struct.key* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %15 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %14, i32 0, i32 4
  %16 = call i64 (...) @tls_crypt_kt()
  %17 = bitcast %struct.TYPE_7__* %6 to i64*
  store i64 %16, i64* %17, align 4
  %18 = bitcast %struct.TYPE_7__* %15 to i8*
  %19 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %21 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %27 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %1
  store i32 0, i32* %2, align 4
  br label %75

32:                                               ; preds = %25
  %33 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %34 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %38 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %37, i32 0, i32 4
  %39 = call i32 @init_key_ctx(i32* %36, %struct.key* %5, %struct.TYPE_7__* %38, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %41 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 4
  %46 = call i32 @init_key_ctx(i32* %43, %struct.key* %5, %struct.TYPE_7__* %45, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %48 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @packet_id_init(i32* %49, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %51 = load i32, i32* @TESTBUF_SIZE, align 4
  %52 = call i8* @alloc_buf(i32 %51)
  %53 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %54 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @TESTBUF_SIZE, align 4
  %56 = call i8* @alloc_buf(i32 %55)
  %57 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %58 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @TESTBUF_SIZE, align 4
  %60 = call i8* @alloc_buf(i32 %59)
  %61 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %62 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %63 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %64 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %63, i32 0, i32 1
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @buf_write(i8** %64, i8* %65, i32 %67)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %69 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %4, align 8
  %70 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %69, i32 0, i32 0
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @buf_write(i8** %70, i8* %71, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %32, %31
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.test_tls_crypt_context* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @tls_crypt_kt(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @packet_id_init(i32*, i32, i32, i8*, i32) #1

declare dso_local i8* @alloc_buf(i32) #1

declare dso_local i32 @buf_write(i8**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
