; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_load_config_file.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_load_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Using configuration from %s\0A\00", align 1
@ENV_OID_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @load_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_config_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @app_load_config(i8* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load i32, i32* @bio_err, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @BIO_printf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @ENV_OID_FILE, align 4
  %16 = call i8* @NCONF_get_string(i32* %14, i32* null, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = call i32* @BIO_new_file(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @bio_err, align 4
  %26 = call i32 @ERR_print_errors(i32 %25)
  br label %32

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @OBJ_create_objects(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @BIO_free_all(i32* %30)
  br label %32

32:                                               ; preds = %27, %24
  br label %35

33:                                               ; preds = %10
  %34 = call i32 (...) @ERR_clear_error()
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @add_oid_section(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 @ERR_print_errors(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32* @app_load_config(i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i8* @NCONF_get_string(i32*, i32*, i32) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OBJ_create_objects(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @add_oid_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
