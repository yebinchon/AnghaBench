; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_dup_bio_out.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_dup_bio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_FP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"HARNESS_OSSL_PREFIX\00", align 1
@PREFIX_CTRL_SET_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dup_bio_out(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @stdout, align 4
  %6 = load i32, i32* @BIO_NOCLOSE, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @FMT_istext(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BIO_FP_TEXT, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = or i32 %6, %14
  %16 = call i32* @BIO_new_fp(i32 %5, i32 %15)
  store i32* %16, i32** %3, align 8
  store i8* null, i8** %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @FMT_istext(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = call i32 (...) @apps_bf_prefix()
  %25 = call i32 @BIO_new(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @BIO_push(i32 %25, i32* %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @PREFIX_CTRL_SET_PREFIX, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @BIO_ctrl(i32* %28, i32 %29, i32 0, i8* %30)
  br label %32

32:                                               ; preds = %23, %20, %13
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32* @BIO_new_fp(i32, i32) #1

declare dso_local i64 @FMT_istext(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @BIO_push(i32, i32*) #1

declare dso_local i32 @BIO_new(i32) #1

declare dso_local i32 @apps_bf_prefix(...) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
