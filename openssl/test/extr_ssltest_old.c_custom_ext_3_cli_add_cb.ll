; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_custom_ext_3_cli_add_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_custom_ext_3_cli_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CUSTOM_EXT_TYPE_3 = common dso_local global i32 0, align 4
@custom_ext_error = common dso_local global i32 0, align 4
@custom_ext_cli_string = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i64*, i32*, i8*)* @custom_ext_3_cli_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @custom_ext_3_cli_add_cb(i32* %0, i32 %1, i8** %2, i64* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @CUSTOM_EXT_TYPE_3, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* @custom_ext_error, align 4
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i64, i64* @custom_ext_cli_string, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8**, i8*** %9, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i64, i64* @custom_ext_cli_string, align 8
  %22 = call i64 @strlen(i64 %21)
  %23 = load i64*, i64** %10, align 8
  store i64 %22, i64* %23, align 8
  ret i32 1
}

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
