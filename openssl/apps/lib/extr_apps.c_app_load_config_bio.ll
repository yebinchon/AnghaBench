; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_app_load_config_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_app_load_config_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: Can't load \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Error on line %ld of \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"config file \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"config input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @app_load_config_bio(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 -1, i64* %6, align 8
  %9 = call i32* @NCONF_new(i32* null)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @NCONF_load_bio(i32* %10, i32* %11, i64* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @bio_err, align 4
  %22 = call i32 (...) @opt_getprog()
  %23 = call i32 (i32, i8*, ...) @BIO_printf(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @bio_err, align 4
  %26 = call i32 (...) @opt_getprog()
  %27 = load i64, i64* %6, align 8
  %28 = call i32 (i32, i8*, ...) @BIO_printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @bio_err, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i32, i8*, ...) @BIO_printf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 (i32, i8*, ...) @BIO_printf(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @NCONF_free(i32* %40)
  store i32* null, i32** %3, align 8
  br label %42

42:                                               ; preds = %39, %15
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32* @NCONF_new(i32*) #1

declare dso_local i32 @NCONF_load_bio(i32*, i32*, i64*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i32 @NCONF_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
