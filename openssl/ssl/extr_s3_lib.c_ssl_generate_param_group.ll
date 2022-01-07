; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_param_group.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_param_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TLS_GROUP_TYPE = common dso_local global i32 0, align 4
@TLS_GROUP_CURVE_CUSTOM = common dso_local global i32 0, align 4
@TLS_GROUP_FFDHE = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_generate_param_group(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_3__* @tls1_group_id_lookup(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TLS_GROUP_TYPE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @TLS_GROUP_CURVE_CUSTOM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = call i32* (...) @EVP_PKEY_new()
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @EVP_PKEY_set_type(i32* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  store i32* %33, i32** %2, align 8
  br label %97

34:                                               ; preds = %25, %21
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @EVP_PKEY_free(i32* %35)
  store i32* null, i32** %2, align 8
  br label %97

37:                                               ; preds = %13
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TLS_GROUP_FFDHE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @EVP_PKEY_DH, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @EVP_PKEY_EC, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @EVP_PKEY_CTX_new_id(i32 %50, i32* null)
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %93

55:                                               ; preds = %48
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @EVP_PKEY_paramgen_init(i32* %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %93

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TLS_GROUP_FFDHE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @EVP_PKEY_CTX_set_dh_nid(i32* %68, i32 %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %93

75:                                               ; preds = %67
  br label %85

76:                                               ; preds = %60
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %77, i32 %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %93

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %75
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @EVP_PKEY_paramgen(i32* %86, i32** %5)
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @EVP_PKEY_free(i32* %90)
  store i32* null, i32** %5, align 8
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %83, %74, %59, %54, %12
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @EVP_PKEY_CTX_free(i32* %94)
  %96 = load i32*, i32** %5, align 8
  store i32* %96, i32** %2, align 8
  br label %97

97:                                               ; preds = %93, %34, %32
  %98 = load i32*, i32** %2, align 8
  ret i32* %98
}

declare dso_local %struct.TYPE_3__* @tls1_group_id_lookup(i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_set_type(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_paramgen_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_dh_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_paramgen(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
