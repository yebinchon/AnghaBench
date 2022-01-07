; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_pm.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_config_s = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@PM_STYLE_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@PM_STYLE_DYNAMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ondemand\00", align 1
@PM_STYLE_ONDEMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"invalid process manager (static, dynamic or ondemand)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8**, i64)* @fpm_conf_set_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_conf_set_pm(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fpm_worker_pool_config_s*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @Z_STRVAL_P(i32* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.fpm_worker_pool_config_s*
  store %struct.fpm_worker_pool_config_s* %14, %struct.fpm_worker_pool_config_s** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @PM_STYLE_STATIC, align 4
  %20 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %9, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @PM_STYLE_DYNAMIC, align 4
  %28 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %9, align 8
  %29 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @PM_STYLE_ONDEMAND, align 4
  %36 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %9, align 8
  %37 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %39

38:                                               ; preds = %30
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %42

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %18
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
