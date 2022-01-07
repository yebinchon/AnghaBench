; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_init_responder.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_init_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_BIND_REUSEADDR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error setting up accept BIO\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Error starting accept\00", align 1
@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @init_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_responder(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = call i32 (...) @BIO_f_buffer()
  %7 = call i32* @BIO_new(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = call i32 (...) @BIO_s_accept()
  %13 = call i32* @BIO_new(i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @BIO_BIND_REUSEADDR, align 4
  %19 = call i64 @BIO_set_bind_mode(i32* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @BIO_set_accept_port(i32* %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %11
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @log_message(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %41

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @BIO_set_accept_bios(i32* %30, i32* %31)
  store i32* null, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @BIO_do_accept(i32* %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = call i32 @log_message(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %2, align 8
  br label %46

41:                                               ; preds = %36, %26, %10
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @BIO_free_all(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @BIO_free(i32* %44)
  store i32* null, i32** %2, align 8
  br label %46

46:                                               ; preds = %41, %39
  %47 = load i32*, i32** %2, align 8
  ret i32* %47
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32 @BIO_s_accept(...) #1

declare dso_local i64 @BIO_set_bind_mode(i32*, i32) #1

declare dso_local i64 @BIO_set_accept_port(i32*, i8*) #1

declare dso_local i32 @log_message(i32, i8*) #1

declare dso_local i32 @BIO_set_accept_bios(i32*, i32*) #1

declare dso_local i64 @BIO_do_accept(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
