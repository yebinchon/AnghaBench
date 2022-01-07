; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_init_child.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.key_value_s*, i64, i32 }
%struct.key_value_s = type { i8*, i64, %struct.key_value_s* }

@.str = private unnamed_addr constant [8 x i8] c"pool %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_env_init_child(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca %struct.key_value_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %2, align 8
  %5 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %6 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @spprintf(i8** %4, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @fpm_env_setproctitle(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @efree(i8* %13)
  %15 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %16 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @clearenv()
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %25 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.key_value_s*, %struct.key_value_s** %27, align 8
  store %struct.key_value_s* %28, %struct.key_value_s** %3, align 8
  br label %29

29:                                               ; preds = %40, %23
  %30 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %31 = icmp ne %struct.key_value_s* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %34 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %37 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @setenv(i8* %35, i64 %38, i32 1)
  br label %40

40:                                               ; preds = %32
  %41 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %42 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %41, i32 0, i32 2
  %43 = load %struct.key_value_s*, %struct.key_value_s** %42, align 8
  store %struct.key_value_s* %43, %struct.key_value_s** %3, align 8
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %46 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %51 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 1)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %56 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %61 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %62, i32 1)
  br label %64

64:                                               ; preds = %59, %54
  ret i32 0
}

declare dso_local i32 @spprintf(i8**, i32, i8*, i32) #1

declare dso_local i32 @fpm_env_setproctitle(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @clearenv(...) #1

declare dso_local i32 @setenv(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
