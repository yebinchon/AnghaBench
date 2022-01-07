; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_def_load.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_def_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@BIO_R_NO_SUCH_FILE = common dso_local global i64 0, align 8
@CONF_F_DEF_LOAD = common dso_local global i32 0, align 4
@CONF_R_NO_SUCH_FILE = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*)* @def_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @def_load(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @BIO_new_file(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = call i32 (...) @ERR_peek_last_error()
  %16 = call i64 @ERR_GET_REASON(i32 %15)
  %17 = load i64, i64* @BIO_R_NO_SUCH_FILE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @CONF_F_DEF_LOAD, align 4
  %21 = load i32, i32* @CONF_R_NO_SUCH_FILE, align 4
  %22 = call i32 @CONFerr(i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @CONF_F_DEF_LOAD, align 4
  %25 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %26 = call i32 @CONFerr(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  store i32 0, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @def_load_bio(i32* %29, i32* %30, i64* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @BIO_free(i32* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_last_error(...) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @def_load_bio(i32*, i32*, i64*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
