; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_basic_output.c_test_open_streams.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_basic_output.c_test_open_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_FP_TEXT = common dso_local global i32 0, align 4
@bio_out = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_open_streams() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = load i32, i32* @BIO_NOCLOSE, align 4
  %3 = load i32, i32* @BIO_FP_TEXT, align 4
  %4 = or i32 %2, %3
  %5 = call i32* @BIO_new_fp(i32 %1, i32 %4)
  store i32* %5, i32** @bio_out, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* @BIO_NOCLOSE, align 4
  %8 = load i32, i32* @BIO_FP_TEXT, align 4
  %9 = or i32 %7, %8
  %10 = call i32* @BIO_new_fp(i32 %6, i32 %9)
  store i32* %10, i32** @bio_err, align 8
  %11 = call i32 (...) @BIO_f_tap()
  %12 = call i32 @BIO_new(i32 %11)
  %13 = load i32*, i32** @bio_err, align 8
  %14 = call i32* @BIO_push(i32 %12, i32* %13)
  store i32* %14, i32** @bio_err, align 8
  %15 = load i32*, i32** @bio_out, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @OPENSSL_assert(i32 %17)
  %19 = load i32*, i32** @bio_err, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @OPENSSL_assert(i32 %21)
  ret void
}

declare dso_local i32* @BIO_new_fp(i32, i32) #1

declare dso_local i32* @BIO_push(i32, i32*) #1

declare dso_local i32 @BIO_new(i32) #1

declare dso_local i32 @BIO_f_tap(...) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
