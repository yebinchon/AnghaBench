; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_ctx_pair.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_ctx_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_ssl_ctx_pair(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32** %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32** %5, i32*** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32* @SSL_CTX_new(i32* %20)
  store i32* %21, i32** %18, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load i32**, i32*** %15, align 8
  %26 = icmp ne i32** %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @SSL_CTX_new(i32* %28)
  store i32* %29, i32** %19, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %8
  br label %112

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @SSL_CTX_set_min_proto_version(i32* %37, i32 %38)
  %40 = call i32 @TEST_true(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %18, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @SSL_CTX_set_max_proto_version(i32* %46, i32 %47)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %36
  br label %112

52:                                               ; preds = %45, %42
  %53 = load i32*, i32** %19, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @SSL_CTX_set_min_proto_version(i32* %59, i32 %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @SSL_CTX_set_max_proto_version(i32* %68, i32 %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67, %58
  br label %112

74:                                               ; preds = %67, %64, %52
  %75 = load i8*, i8** %16, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load i8*, i8** %17, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32*, i32** %18, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %84 = call i32 @SSL_CTX_use_certificate_file(i32* %81, i8* %82, i32 %83)
  %85 = call i32 @TEST_int_eq(i32 %84, i32 1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32*, i32** %18, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %91 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %88, i8* %89, i32 %90)
  %92 = call i32 @TEST_int_eq(i32 %91, i32 1)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32*, i32** %18, align 8
  %96 = call i32 @SSL_CTX_check_private_key(i32* %95)
  %97 = call i32 @TEST_int_eq(i32 %96, i32 1)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94, %87, %80
  br label %112

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %77, %74
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @SSL_CTX_set_dh_auto(i32* %102, i32 1)
  %104 = load i32*, i32** %18, align 8
  %105 = load i32**, i32*** %14, align 8
  store i32* %104, i32** %105, align 8
  %106 = load i32**, i32*** %15, align 8
  %107 = icmp ne i32** %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32*, i32** %19, align 8
  %110 = load i32**, i32*** %15, align 8
  store i32* %109, i32** %110, align 8
  br label %111

111:                                              ; preds = %108, %101
  store i32 1, i32* %9, align 4
  br label %117

112:                                              ; preds = %99, %73, %51, %32
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @SSL_CTX_free(i32* %113)
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @SSL_CTX_free(i32* %115)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %112, %111
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_CTX_new(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_CTX_set_min_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_CTX_use_certificate_file(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

declare dso_local i32 @SSL_CTX_set_dh_auto(i32*, i32) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
