; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_pdo_oci_sanitize_prefetch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_pdo_oci_sanitize_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UB4MAXVAL = common dso_local global i64 0, align 8
@PDO_OCI_PREFETCH_ROWSIZE = common dso_local global i64 0, align 8
@PDO_OCI_PREFETCH_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pdo_oci_sanitize_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_oci_sanitize_prefetch(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %15

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @UB4MAXVAL, align 8
  %9 = load i64, i64* @PDO_OCI_PREFETCH_ROWSIZE, align 8
  %10 = sdiv i64 %8, %9
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i64, i64* @PDO_OCI_PREFETCH_DEFAULT, align 8
  store i64 %13, i64* %2, align 8
  br label %14

14:                                               ; preds = %12, %6
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i64, i64* %2, align 8
  %17 = trunc i64 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
