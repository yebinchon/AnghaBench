; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_ini_parser_section.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_ini_parser_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.TYPE_2__*, %struct.fpm_worker_pool_s* }
%struct.TYPE_2__ = type { i8* }
%struct.fpm_worker_pool_config_s = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"global\00", align 1
@current_wp = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"[%s:%d] Unable to alloc a new WorkerPool for worker '%s'\00", align 1
@ini_filename = common dso_local global i32 0, align 4
@ini_lineno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"[%s:%d] Unable to alloc memory for configuration name for worker '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @fpm_conf_ini_parser_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_conf_ini_parser_section(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fpm_worker_pool_s*, align 8
  %6 = alloca %struct.fpm_worker_pool_config_s*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @Z_STRVAL_P(i32* %10)
  %12 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.fpm_worker_pool_s* null, %struct.fpm_worker_pool_s** @current_wp, align 8
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %16, %struct.fpm_worker_pool_s** %5, align 8
  br label %17

17:                                               ; preds = %47, %15
  %18 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %19 = icmp ne %struct.fpm_worker_pool_s* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %22 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %47

26:                                               ; preds = %20
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %28 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %36 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i8* @Z_STRVAL_P(i32* %40)
  %42 = call i32 @strcasecmp(i8* %39, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  store %struct.fpm_worker_pool_s* %45, %struct.fpm_worker_pool_s** @current_wp, align 8
  br label %85

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %33, %25
  %48 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %5, align 8
  %49 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %48, i32 0, i32 1
  %50 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %49, align 8
  store %struct.fpm_worker_pool_s* %50, %struct.fpm_worker_pool_s** %5, align 8
  br label %17

51:                                               ; preds = %17
  %52 = call i64 (...) @fpm_worker_pool_config_alloc()
  %53 = inttoptr i64 %52 to %struct.fpm_worker_pool_config_s*
  store %struct.fpm_worker_pool_config_s* %53, %struct.fpm_worker_pool_config_s** %6, align 8
  %54 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @current_wp, align 8
  %55 = icmp ne %struct.fpm_worker_pool_s* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %6, align 8
  %58 = icmp ne %struct.fpm_worker_pool_config_s* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* @ZLOG_ERROR, align 4
  %61 = load i32, i32* @ini_filename, align 4
  %62 = load i32, i32* @ini_lineno, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call i8* @Z_STRVAL_P(i32* %63)
  %65 = call i32 @zlog(i32 %60, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i8* %64)
  %66 = load i32*, i32** %7, align 8
  store i32 1, i32* %66, align 4
  br label %85

67:                                               ; preds = %56
  %68 = load i32*, i32** %3, align 8
  %69 = call i8* @Z_STRVAL_P(i32* %68)
  %70 = call i32 @strdup(i8* %69)
  %71 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %6, align 8
  %72 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %6, align 8
  %74 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @ZLOG_ERROR, align 4
  %79 = load i32, i32* @ini_filename, align 4
  %80 = load i32, i32* @ini_lineno, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = call i8* @Z_STRVAL_P(i32* %81)
  %83 = call i32 @zlog(i32 %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80, i8* %82)
  %84 = load i32*, i32** %7, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %14, %44, %59, %77, %67
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @fpm_worker_pool_config_alloc(...) #1

declare dso_local i32 @zlog(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
