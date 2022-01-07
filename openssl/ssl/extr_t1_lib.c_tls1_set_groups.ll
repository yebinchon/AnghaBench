; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_groups.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_F_TLS1_SET_GROUPS = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_set_groups(i32** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* null, i64** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @SSL_F_TLS1_SET_GROUPS, align 4
  %21 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %22 = call i32 @SSLerr(i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = mul i64 %24, 4
  %26 = call i32* @OPENSSL_malloc(i64 %25)
  store i32* %26, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @SSL_F_TLS1_SET_GROUPS, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @SSLerr(i32 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %91

32:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %77, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tls1_nid2group_id(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = and i32 %43, 255
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %88

48:                                               ; preds = %37
  %49 = load i32, i32* %16, align 4
  %50 = and i32 %49, 255
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  store i64 %52, i64* %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 256
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %55
  %58 = phi i64* [ %13, %55 ], [ %14, %56 ]
  store i64* %58, i64** %12, align 8
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %57
  br label %88

68:                                               ; preds = %61
  %69 = load i64, i64* %15, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, %69
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %33

80:                                               ; preds = %33
  %81 = load i32**, i32*** %6, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @OPENSSL_free(i32* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32**, i32*** %6, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  store i32 1, i32* %5, align 4
  br label %91

88:                                               ; preds = %67, %47
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @OPENSSL_free(i32* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %80, %28, %19
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @tls1_nid2group_id(i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
