; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_encode_tls_sct.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_encode_tls_sct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@__const.test_encode_tls_sct.log_id = private unnamed_addr constant [45 x i8] c"3xwuwRUAlFJHqWFoMl3cXHlZ6PfG04j8AC4LvT9012Q=\00", align 16
@__const.test_encode_tls_sct.signature = private unnamed_addr constant [101 x i8] c"BAMARzBAMiBIL2dRrzXbplQ2vh/WZA89v5pBQpSVkkUwKI+j5eI+BgIhAOTtwNs6xXKx4vXoq2poBlOYfc9BAn3+/6EFUZ2J7b8I\00", align 16
@fixture = common dso_local global %struct.TYPE_2__* null, align 8
@SCT_VERSION_V1 = common dso_local global i32 0, align 4
@CT_LOG_ENTRY_TYPE_X509 = common dso_local global i32 0, align 4
@ct_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tls1.sct\00", align 1
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_encode_tls_sct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_encode_tls_sct() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [45 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [101 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = bitcast [45 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([45 x i8], [45 x i8]* @__const.test_encode_tls_sct.log_id, i32 0, i32 0), i64 45, i1 false)
  store i32 1, i32* %3, align 4
  %8 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 1, i1 false)
  %9 = bitcast [101 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([101 x i8], [101 x i8]* @__const.test_encode_tls_sct.signature, i32 0, i32 0), i64 101, i1 false)
  store i32* null, i32** %6, align 8
  %10 = call i32 (...) @SETUP_CT_TEST_FIXTURE()
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %40

14:                                               ; preds = %0
  %15 = call i32 (...) @sk_SCT_new_null()
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @SCT_VERSION_V1, align 4
  %19 = getelementptr inbounds [45 x i8], [45 x i8]* %2, i64 0, i64 0
  %20 = load i32, i32* @CT_LOG_ENTRY_TYPE_X509, align 4
  %21 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %23 = call i32* @SCT_new_from_base64(i32 %18, i8* %19, i32 %20, i32 1, i8* %21, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %40

27:                                               ; preds = %14
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @sk_SCT_push(i32 %30, i32* %31)
  %33 = load i32, i32* @ct_dir, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = call i32 (...) @EXECUTE_CT_TEST()
  %39 = load i32, i32* @result, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %27, %26, %13
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SETUP_CT_TEST_FIXTURE(...) #2

declare dso_local i32 @sk_SCT_new_null(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @SCT_new_from_base64(i32, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @sk_SCT_push(i32, i32*) #2

declare dso_local i32 @EXECUTE_CT_TEST(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
