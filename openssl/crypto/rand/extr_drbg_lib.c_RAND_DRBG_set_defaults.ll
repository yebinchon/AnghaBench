; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set_defaults.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_F_RAND_DRBG_SET_DEFAULTS = common dso_local global i32 0, align 4
@RAND_R_UNSUPPORTED_DRBG_TYPE = common dso_local global i32 0, align 4
@rand_drbg_used_flags = common dso_local global i32 0, align 4
@RAND_R_UNSUPPORTED_DRBG_FLAGS = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_FLAGS = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_MASTER = common dso_local global i32 0, align 4
@rand_drbg_type = common dso_local global i32* null, align 8
@RAND_DRBG_TYPE_MASTER = common dso_local global i64 0, align 8
@rand_drbg_flags = common dso_local global i32* null, align 8
@RAND_DRBG_FLAG_PUBLIC = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_PUBLIC = common dso_local global i64 0, align 8
@RAND_DRBG_FLAG_PRIVATE = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_PRIVATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_set_defaults(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @is_digest(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @is_ctr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @RAND_F_RAND_DRBG_SET_DEFAULTS, align 4
  %16 = load i32, i32* @RAND_R_UNSUPPORTED_DRBG_TYPE, align 4
  %17 = call i32 @RANDerr(i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %91

18:                                               ; preds = %10, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @rand_drbg_used_flags, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @RAND_F_RAND_DRBG_SET_DEFAULTS, align 4
  %26 = load i32, i32* @RAND_R_UNSUPPORTED_DRBG_FLAGS, align 4
  %27 = call i32 @RANDerr(i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %91

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RAND_DRBG_TYPE_FLAGS, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** @rand_drbg_type, align 8
  %44 = load i64, i64* @RAND_DRBG_TYPE_MASTER, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** @rand_drbg_flags, align 8
  %50 = load i64, i64* @RAND_DRBG_TYPE_MASTER, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32*, i32** @rand_drbg_type, align 8
  %63 = load i64, i64* @RAND_DRBG_TYPE_PUBLIC, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** @rand_drbg_flags, align 8
  %69 = load i64, i64* @RAND_DRBG_TYPE_PUBLIC, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %55
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** @rand_drbg_type, align 8
  %82 = load i64, i64* @RAND_DRBG_TYPE_PRIVATE, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %86 = or i32 %84, %85
  %87 = load i32*, i32** @rand_drbg_flags, align 8
  %88 = load i64, i64* @RAND_DRBG_TYPE_PRIVATE, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %74
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %24, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @is_digest(i32) #1

declare dso_local i64 @is_ctr(i32) #1

declare dso_local i32 @RANDerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
