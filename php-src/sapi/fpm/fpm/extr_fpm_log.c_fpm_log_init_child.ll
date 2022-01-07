; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_log.c_fpm_log_init_child.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_log.c_fpm_log_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { i32, %struct.fpm_worker_pool_s*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }

@fpm_log_format = common dso_local global i32 0, align 4
@fpm_log_fd = common dso_local global i32 0, align 4
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_log_init_child(%struct.fpm_worker_pool_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %3, align 8
  %4 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %5 = icmp ne %struct.fpm_worker_pool_s* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %8 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 -1, i32* %2, align 4
  br label %78

12:                                               ; preds = %6
  %13 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %29 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %36 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @strdup(i64 %39)
  store i32 %40, i32* @fpm_log_format, align 4
  br label %41

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41, %19, %12
  %43 = load i32, i32* @fpm_log_fd, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %47 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @fpm_log_fd, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %50, %struct.fpm_worker_pool_s** %3, align 8
  br label %51

51:                                               ; preds = %73, %49
  %52 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %53 = icmp ne %struct.fpm_worker_pool_s* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %56 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %61 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @fpm_log_fd, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %67 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @close(i32 %68)
  %70 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %71 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %59, %54
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %75 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %74, i32 0, i32 1
  %76 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %75, align 8
  store %struct.fpm_worker_pool_s* %76, %struct.fpm_worker_pool_s** %3, align 8
  br label %51

77:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
