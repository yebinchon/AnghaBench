; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_ctx_test.c_test_set_min_max_version.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_ctx_test.c_test_set_min_max_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@version_testdata = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_set_min_max_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_set_min_max_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @version_testdata, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  %11 = bitcast %struct.TYPE_3__* %6 to i8*
  %12 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 24, i1 false)
  %13 = call i32 (...) @TLS_server_method()
  %14 = call i32* @SSL_CTX_new(i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %97

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @SSL_new(i32* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %97

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SSL_CTX_set_min_proto_version(i32* %25, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TEST_int_eq(i32 %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %97

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SSL_CTX_set_max_proto_version(i32* %35, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @TEST_int_eq(i32 %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %97

44:                                               ; preds = %34
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @SSL_CTX_get_min_proto_version(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TEST_int_eq(i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %97

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @SSL_CTX_get_max_proto_version(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TEST_int_eq(i32 %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %97

60:                                               ; preds = %52
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SSL_set_min_proto_version(i32* %61, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @TEST_int_eq(i32 %64, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %97

70:                                               ; preds = %60
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SSL_set_max_proto_version(i32* %71, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TEST_int_eq(i32 %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %97

80:                                               ; preds = %70
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @SSL_get_min_proto_version(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @TEST_int_eq(i32 %82, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %97

88:                                               ; preds = %80
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @SSL_get_max_proto_version(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TEST_int_eq(i32 %90, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %97

96:                                               ; preds = %88
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %95, %87, %79, %69, %59, %51, %43, %33, %23, %17
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @SSL_free(i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @SSL_CTX_free(i32* %100)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @SSL_CTX_new(i32) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32* @SSL_new(i32*) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @SSL_CTX_set_min_proto_version(i32*, i32) #2

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #2

declare dso_local i32 @SSL_CTX_get_min_proto_version(i32*) #2

declare dso_local i32 @SSL_CTX_get_max_proto_version(i32*) #2

declare dso_local i32 @SSL_set_min_proto_version(i32*, i32) #2

declare dso_local i32 @SSL_set_max_proto_version(i32*, i32) #2

declare dso_local i32 @SSL_get_min_proto_version(i32*) #2

declare dso_local i32 @SSL_get_max_proto_version(i32*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
