; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_serverinfo.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_serverinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@serverinfo_sct = common dso_local global i64 0, align 8
@serverinfo_sct_seen = common dso_local global i64 0, align 8
@serverinfo_tack = common dso_local global i64 0, align 8
@serverinfo_tack_seen = common dso_local global i64 0, align 8
@serverinfo_other_seen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @verify_serverinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_serverinfo() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @serverinfo_sct, align 8
  %3 = load i64, i64* @serverinfo_sct_seen, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %16

6:                                                ; preds = %0
  %7 = load i64, i64* @serverinfo_tack, align 8
  %8 = load i64, i64* @serverinfo_tack_seen, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %16

11:                                               ; preds = %6
  %12 = load i64, i64* @serverinfo_other_seen, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %16

15:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %14, %10, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
