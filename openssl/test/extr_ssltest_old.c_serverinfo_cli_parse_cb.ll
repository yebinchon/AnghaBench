; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_serverinfo_cli_parse_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_serverinfo_cli_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLSEXT_TYPE_signed_certificate_timestamp = common dso_local global i32 0, align 4
@serverinfo_sct_seen = common dso_local global i32 0, align 4
@TACK_EXT_TYPE = common dso_local global i32 0, align 4
@serverinfo_tack_seen = common dso_local global i32 0, align 4
@serverinfo_other_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i32*, i8*)* @serverinfo_cli_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverinfo_cli_parse_cb(i32* %0, i32 %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i32, i32* @serverinfo_sct_seen, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @serverinfo_sct_seen, align 4
  br label %30

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TACK_EXT_TYPE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @serverinfo_tack_seen, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @serverinfo_tack_seen, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @serverinfo_other_seen, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @serverinfo_other_seen, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
