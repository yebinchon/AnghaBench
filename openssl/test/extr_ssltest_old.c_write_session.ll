; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_write_session.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_write_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No session information\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't open session file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @write_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_session(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @BIO_new_file(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @bio_err, align 4
  %13 = call i32 (i32, i8*, ...) @BIO_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @bio_err, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i32, i8*, ...) @BIO_printf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @bio_err, align 4
  %22 = call i32 @ERR_print_errors(i32 %21)
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @PEM_write_bio_SSL_SESSION(i32* %24, i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @BIO_free(i32* %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %17, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @PEM_write_bio_SSL_SESSION(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
