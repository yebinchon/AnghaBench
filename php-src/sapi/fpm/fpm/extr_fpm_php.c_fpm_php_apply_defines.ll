; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_apply_defines.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_apply_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.key_value_s*, %struct.key_value_s* }
%struct.key_value_s = type { i32, %struct.key_value_s* }

@ZEND_INI_USER = common dso_local global i32 0, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to set php_value '%s'\00", align 1
@ZEND_INI_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to set php_admin_value '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*)* @fpm_php_apply_defines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_php_apply_defines(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca %struct.key_value_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %2, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %5 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.key_value_s*, %struct.key_value_s** %7, align 8
  store %struct.key_value_s* %8, %struct.key_value_s** %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %11 = icmp ne %struct.key_value_s* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %14 = load i32, i32* @ZEND_INI_USER, align 4
  %15 = call i32 @fpm_php_apply_defines_ex(%struct.key_value_s* %13, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @ZLOG_ERROR, align 4
  %19 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %20 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @zlog(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %26 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %25, i32 0, i32 1
  %27 = load %struct.key_value_s*, %struct.key_value_s** %26, align 8
  store %struct.key_value_s* %27, %struct.key_value_s** %3, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %30 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.key_value_s*, %struct.key_value_s** %32, align 8
  store %struct.key_value_s* %33, %struct.key_value_s** %3, align 8
  br label %34

34:                                               ; preds = %49, %28
  %35 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %36 = icmp ne %struct.key_value_s* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %39 = load i32, i32* @ZEND_INI_SYSTEM, align 4
  %40 = call i32 @fpm_php_apply_defines_ex(%struct.key_value_s* %38, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ZLOG_ERROR, align 4
  %44 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %45 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @zlog(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %51 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %50, i32 0, i32 1
  %52 = load %struct.key_value_s*, %struct.key_value_s** %51, align 8
  store %struct.key_value_s* %52, %struct.key_value_s** %3, align 8
  br label %34

53:                                               ; preds = %34
  ret i32 0
}

declare dso_local i32 @fpm_php_apply_defines_ex(%struct.key_value_s*, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
