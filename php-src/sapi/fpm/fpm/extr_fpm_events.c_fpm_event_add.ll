; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_add.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32, i32, i32, %struct.timeval }
%struct.timeval = type { i64, i64 }

@FPM_EV_READ = common dso_local global i32 0, align 4
@fpm_event_queue_fd = common dso_local global i32 0, align 4
@FPM_EV_TIMEOUT = common dso_local global i32 0, align 4
@fpm_event_queue_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_event_add(%struct.fpm_event_s* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %9 = icmp ne %struct.fpm_event_s* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

11:                                               ; preds = %2
  %12 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %13 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %15 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FPM_EV_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i32, i32* @FPM_EV_READ, align 4
  %22 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %23 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %25 = call i64 @fpm_event_queue_add(i32* @fpm_event_queue_fd, %struct.fpm_event_s* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %66

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %11
  %30 = load i32, i32* @FPM_EV_TIMEOUT, align 4
  %31 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %32 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = call i32 @fpm_clock_get(%struct.timeval* %6)
  %34 = load i64, i64* %5, align 8
  %35 = icmp uge i64 %34, 1000
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  %38 = udiv i64 %37, 1000
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = urem i64 %40, 1000
  %42 = mul i64 %41, 1000
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  br label %49

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = mul i64 %46, 1000
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %51 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %50, i32 0, i32 3
  %52 = bitcast %struct.timeval* %51 to i8*
  %53 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %55 = bitcast %struct.timeval* %6 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @fpm_event_set_timeout(%struct.fpm_event_s* %54, i64 %57, i64 %59)
  %61 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %62 = call i64 @fpm_event_queue_add(i32* @fpm_event_queue_timer, %struct.fpm_event_s* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %28, %27, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @fpm_event_queue_add(i32*, %struct.fpm_event_s*) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fpm_event_set_timeout(%struct.fpm_event_s*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
