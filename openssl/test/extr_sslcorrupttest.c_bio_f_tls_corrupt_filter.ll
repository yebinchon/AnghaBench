; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_bio_f_tls_corrupt_filter.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_bio_f_tls_corrupt_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@method_tls_corrupt = common dso_local global i32* null, align 8
@BIO_TYPE_CUSTOM_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TLS corrupt filter\00", align 1
@tls_corrupt_write = common dso_local global i32 0, align 4
@tls_corrupt_read = common dso_local global i32 0, align 4
@tls_corrupt_puts = common dso_local global i32 0, align 4
@tls_corrupt_gets = common dso_local global i32 0, align 4
@tls_corrupt_ctrl = common dso_local global i32 0, align 4
@tls_corrupt_new = common dso_local global i32 0, align 4
@tls_corrupt_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @bio_f_tls_corrupt_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bio_f_tls_corrupt_filter() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @method_tls_corrupt, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %46

4:                                                ; preds = %0
  %5 = load i32, i32* @BIO_TYPE_CUSTOM_FILTER, align 4
  %6 = call i32* @BIO_meth_new(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** @method_tls_corrupt, align 8
  %7 = load i32*, i32** @method_tls_corrupt, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %4
  %10 = load i32*, i32** @method_tls_corrupt, align 8
  %11 = load i32, i32* @tls_corrupt_write, align 4
  %12 = call i32 @BIO_meth_set_write(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = load i32*, i32** @method_tls_corrupt, align 8
  %16 = load i32, i32* @tls_corrupt_read, align 4
  %17 = call i32 @BIO_meth_set_read(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32*, i32** @method_tls_corrupt, align 8
  %21 = load i32, i32* @tls_corrupt_puts, align 4
  %22 = call i32 @BIO_meth_set_puts(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32*, i32** @method_tls_corrupt, align 8
  %26 = load i32, i32* @tls_corrupt_gets, align 4
  %27 = call i32 @BIO_meth_set_gets(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i32*, i32** @method_tls_corrupt, align 8
  %31 = load i32, i32* @tls_corrupt_ctrl, align 4
  %32 = call i32 @BIO_meth_set_ctrl(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32*, i32** @method_tls_corrupt, align 8
  %36 = load i32, i32* @tls_corrupt_new, align 4
  %37 = call i32 @BIO_meth_set_create(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** @method_tls_corrupt, align 8
  %41 = load i32, i32* @tls_corrupt_free, align 4
  %42 = call i32 @BIO_meth_set_destroy(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34, %29, %24, %19, %14, %9, %4
  store i32* null, i32** %1, align 8
  br label %48

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %0
  %47 = load i32*, i32** @method_tls_corrupt, align 8
  store i32* %47, i32** %1, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32*, i32** %1, align 8
  ret i32* %49
}

declare dso_local i32* @BIO_meth_new(i32, i8*) #1

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
