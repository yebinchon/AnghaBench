; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/msgformat/extr_msgformat_format.c_msgfmt_do_format.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/msgformat/extr_msgformat_format.c_msgfmt_do_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETURN_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @msgfmt_do_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgfmt_do_format(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @Z_ARRVAL_P(i32* %10)
  %12 = call i32 @umsg_format_helper(i32* %9, i32 %11, i32** %7, i32* %8)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @INTL_DATA_ERROR_CODE(i32* %13)
  %15 = call i64 @U_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @efree(i32* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @RETURN_FALSE, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @INTL_METHOD_RETVAL_UTF8(i32* %26, i32* %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @umsg_format_helper(i32*, i32, i32**, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @INTL_DATA_ERROR_CODE(i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @INTL_METHOD_RETVAL_UTF8(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
