; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_mac_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_mac_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32 }

@NID_undef = common dso_local global i32 0, align 4
@mac_test_init.epilogue = internal constant [13 x i8] c" by EVP_PKEY\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@EVP_PKEY_CMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Poly1305\00", align 1
@EVP_PKEY_POLY1305 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"SipHash\00", align 1
@EVP_PKEY_SIPHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @mac_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_test_init(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @NID_undef, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @EVP_MAC_fetch(i32* null, i8* %11, i32* null)
  store i32* %12, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp uge i64 %17, 13
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -12
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @mac_test_init.epilogue, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 12
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %26, %19, %14
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EVP_PKEY_HMAC, align 4
  store i32 %35, i32* %7, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EVP_PKEY_CMAC, align 4
  store i32 %42, i32* %7, align 4
  br label %73

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EVP_PKEY_POLY1305, align 4
  store i32 %49, i32* %7, align 4
  br label %72

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @EVP_PKEY_SIPHASH, align 4
  store i32 %56, i32* %7, align 4
  br label %71

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @OBJ_sn2nid(i8* %58)
  %60 = load i32, i32* @NID_undef, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @OBJ_ln2nid(i8* %63)
  %65 = load i32, i32* @NID_undef, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  store i32 1, i32* %3, align 4
  br label %93

70:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %93

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73, %34
  br label %75

75:                                               ; preds = %74, %2
  %76 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @OPENSSL_strdup(i8* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = call i32 (...) @sk_OPENSSL_STRING_new_null()
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %92, align 8
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %75, %70, %67
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32* @EVP_MAC_fetch(i32*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OPENSSL_strdup(i8*) #1

declare dso_local i32 @sk_OPENSSL_STRING_new_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
