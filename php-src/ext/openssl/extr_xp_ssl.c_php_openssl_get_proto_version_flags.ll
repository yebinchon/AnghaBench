; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_get_proto_version_flags.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_get_proto_version_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_OPENSSL_MIN_PROTO_VERSION = common dso_local global i32 0, align 4
@PHP_OPENSSL_MAX_PROTO_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @php_openssl_get_proto_version_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_get_proto_version_flags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @php_openssl_get_min_proto_version_flag(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @php_openssl_get_max_proto_version_flag(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @PHP_OPENSSL_MIN_PROTO_VERSION, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %55, %19
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PHP_OPENSSL_MAX_PROTO_VERSION, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %33
  br label %54

43:                                               ; preds = %29, %25
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %21

58:                                               ; preds = %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @php_openssl_get_min_proto_version_flag(i32) #1

declare dso_local i32 @php_openssl_get_max_proto_version_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
