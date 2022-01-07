; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_string.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"internal error: NULL value\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"fpm_conf_set_string(): strdup() failed\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Can't use '$pool' when the pool is not defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8**, i64)* @fpm_conf_set_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_conf_set_string(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %8, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %40

17:                                               ; preds = %3
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @Z_STRVAL_P(i32* %26)
  %28 = call i8* @strdup(i32 %27)
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load i8**, i8*** %8, align 8
  %36 = call i32 @fpm_conf_expand_pool_name(i8** %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %40

39:                                               ; preds = %34
  store i8* null, i8** %4, align 8
  br label %40

40:                                               ; preds = %39, %38, %33, %16
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @fpm_conf_expand_pool_name(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
