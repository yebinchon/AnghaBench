; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_check_allowed_versions.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_check_allowed_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTLS1_BAD_VER = common dso_local global i32 0, align 4
@DTLS1_VERSION_MAJOR = common dso_local global i32 0, align 4
@DTLS1_VERSION = common dso_local global i32 0, align 4
@DTLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ssl_check_allowed_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_allowed_versions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DTLS1_BAD_VER, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* @DTLS1_VERSION_MAJOR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DTLS1_BAD_VER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 8
  %24 = load i32, i32* @DTLS1_VERSION_MAJOR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %30, %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %33
  store i32 0, i32* %3, align 4
  br label %75

46:                                               ; preds = %42, %39, %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @DTLS1_VERSION, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @DTLS1_2_VERSION, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %57
  br label %74

63:                                               ; preds = %49
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @SSL3_VERSION, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @TLS1_3_VERSION, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %62
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
