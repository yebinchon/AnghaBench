; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_write_config_header.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_write_config_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"openssl_conf = openssl_init\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"[openssl_init]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"providers = provider_section\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[provider_section]\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s = %s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @write_config_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_config_header(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %18, %14, %10, %3
  %29 = phi i1 [ false, %18 ], [ false, %14 ], [ false, %10 ], [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
