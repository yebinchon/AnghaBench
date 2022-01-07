; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_tap_bio.c_BIO_f_tap.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_tap_bio.c_BIO_f_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_f_tap.tap = internal global i32* null, align 8
@BIO_TYPE_START = common dso_local global i32 0, align 4
@BIO_TYPE_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tap\00", align 1
@tap_write_ex = common dso_local global i32 0, align 4
@tap_read_ex = common dso_local global i32 0, align 4
@tap_puts = common dso_local global i32 0, align 4
@tap_gets = common dso_local global i32 0, align 4
@tap_ctrl = common dso_local global i32 0, align 4
@tap_new = common dso_local global i32 0, align 4
@tap_free = common dso_local global i32 0, align 4
@tap_callback_ctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BIO_f_tap() #0 {
  %1 = load i32*, i32** @BIO_f_tap.tap, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %36

3:                                                ; preds = %0
  %4 = load i32, i32* @BIO_TYPE_START, align 4
  %5 = load i32, i32* @BIO_TYPE_FILTER, align 4
  %6 = or i32 %4, %5
  %7 = call i32* @BIO_meth_new(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** @BIO_f_tap.tap, align 8
  %8 = load i32*, i32** @BIO_f_tap.tap, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32*, i32** @BIO_f_tap.tap, align 8
  %12 = load i32, i32* @tap_write_ex, align 4
  %13 = call i32 @BIO_meth_set_write_ex(i32* %11, i32 %12)
  %14 = load i32*, i32** @BIO_f_tap.tap, align 8
  %15 = load i32, i32* @tap_read_ex, align 4
  %16 = call i32 @BIO_meth_set_read_ex(i32* %14, i32 %15)
  %17 = load i32*, i32** @BIO_f_tap.tap, align 8
  %18 = load i32, i32* @tap_puts, align 4
  %19 = call i32 @BIO_meth_set_puts(i32* %17, i32 %18)
  %20 = load i32*, i32** @BIO_f_tap.tap, align 8
  %21 = load i32, i32* @tap_gets, align 4
  %22 = call i32 @BIO_meth_set_gets(i32* %20, i32 %21)
  %23 = load i32*, i32** @BIO_f_tap.tap, align 8
  %24 = load i32, i32* @tap_ctrl, align 4
  %25 = call i32 @BIO_meth_set_ctrl(i32* %23, i32 %24)
  %26 = load i32*, i32** @BIO_f_tap.tap, align 8
  %27 = load i32, i32* @tap_new, align 4
  %28 = call i32 @BIO_meth_set_create(i32* %26, i32 %27)
  %29 = load i32*, i32** @BIO_f_tap.tap, align 8
  %30 = load i32, i32* @tap_free, align 4
  %31 = call i32 @BIO_meth_set_destroy(i32* %29, i32 %30)
  %32 = load i32*, i32** @BIO_f_tap.tap, align 8
  %33 = load i32, i32* @tap_callback_ctrl, align 4
  %34 = call i32 @BIO_meth_set_callback_ctrl(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %10, %3
  br label %36

36:                                               ; preds = %35, %0
  %37 = load i32*, i32** @BIO_f_tap.tap, align 8
  ret i32* %37
}

declare dso_local i32* @BIO_meth_new(i32, i8*) #1

declare dso_local i32 @BIO_meth_set_write_ex(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_read_ex(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_puts(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_gets(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_create(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_destroy(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_callback_ctrl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
