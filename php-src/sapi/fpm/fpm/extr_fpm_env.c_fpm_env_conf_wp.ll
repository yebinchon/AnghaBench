; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_conf_wp.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_conf_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.key_value_s* }
%struct.key_value_s = type { i8*, i32, %struct.key_value_s* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_worker_pool_s*)* @fpm_env_conf_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_env_conf_wp(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca %struct.key_value_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %2, align 8
  %5 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %6 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.key_value_s*, %struct.key_value_s** %8, align 8
  store %struct.key_value_s* %9, %struct.key_value_s** %3, align 8
  br label %10

10:                                               ; preds = %65, %1
  %11 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %12 = icmp ne %struct.key_value_s* %11, null
  br i1 %12, label %13, label %69

13:                                               ; preds = %10
  %14 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %15 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 36
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %22 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i8* @getenv(i8* %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %31 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %37 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %29, %13
  %39 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %40 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %46 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %50 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %49, i32 0, i32 0
  store i8* null, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %53 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %59 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %63 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %62, i32 0, i32 1
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %67 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %66, i32 0, i32 2
  %68 = load %struct.key_value_s*, %struct.key_value_s** %67, align 8
  store %struct.key_value_s* %68, %struct.key_value_s** %3, align 8
  br label %10

69:                                               ; preds = %10
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
