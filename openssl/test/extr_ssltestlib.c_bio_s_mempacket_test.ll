; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_bio_s_mempacket_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_bio_s_mempacket_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@meth_mem = common dso_local global i32* null, align 8
@BIO_TYPE_MEMPACKET_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Mem Packet Test\00", align 1
@mempacket_test_write = common dso_local global i32 0, align 4
@mempacket_test_read = common dso_local global i32 0, align 4
@mempacket_test_puts = common dso_local global i32 0, align 4
@mempacket_test_gets = common dso_local global i32 0, align 4
@mempacket_test_ctrl = common dso_local global i32 0, align 4
@mempacket_test_new = common dso_local global i32 0, align 4
@mempacket_test_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bio_s_mempacket_test() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @meth_mem, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %53

4:                                                ; preds = %0
  %5 = load i32, i32* @BIO_TYPE_MEMPACKET_TEST, align 4
  %6 = call i32* @BIO_meth_new(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** @meth_mem, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %4
  %10 = load i32*, i32** @meth_mem, align 8
  %11 = load i32, i32* @mempacket_test_write, align 4
  %12 = call i32 @BIO_meth_set_write(i32* %10, i32 %11)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load i32*, i32** @meth_mem, align 8
  %17 = load i32, i32* @mempacket_test_read, align 4
  %18 = call i32 @BIO_meth_set_read(i32* %16, i32 %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %15
  %22 = load i32*, i32** @meth_mem, align 8
  %23 = load i32, i32* @mempacket_test_puts, align 4
  %24 = call i32 @BIO_meth_set_puts(i32* %22, i32 %23)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i32*, i32** @meth_mem, align 8
  %29 = load i32, i32* @mempacket_test_gets, align 4
  %30 = call i32 @BIO_meth_set_gets(i32* %28, i32 %29)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i32*, i32** @meth_mem, align 8
  %35 = load i32, i32* @mempacket_test_ctrl, align 4
  %36 = call i32 @BIO_meth_set_ctrl(i32* %34, i32 %35)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32*, i32** @meth_mem, align 8
  %41 = load i32, i32* @mempacket_test_new, align 4
  %42 = call i32 @BIO_meth_set_create(i32* %40, i32 %41)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** @meth_mem, align 8
  %47 = load i32, i32* @mempacket_test_free, align 4
  %48 = call i32 @BIO_meth_set_destroy(i32* %46, i32 %47)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %39, %33, %27, %21, %15, %9, %4
  store i32* null, i32** %1, align 8
  br label %55

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %0
  %54 = load i32*, i32** @meth_mem, align 8
  store i32* %54, i32** %1, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32*, i32** %1, align 8
  ret i32* %56
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_meth_new(i32, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BIO_meth_set_write(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_read(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_puts(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_gets(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_create(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
