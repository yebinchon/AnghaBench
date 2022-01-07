; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_freebsd_init.c_ngx_os_specific_status.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_freebsd_init.c_ngx_os_specific_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"OS: %s %s\00", align 1
@ngx_freebsd_kern_ostype = common dso_local global i64 0, align 8
@ngx_freebsd_kern_osrelease = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"kern.osreldate: %d, built on %d\00", align 1
@ngx_freebsd_kern_osreldate = common dso_local global i64 0, align 8
@__FreeBSD_version = common dso_local global i32 0, align 4
@sysctls = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %l\00", align 1
@__DragonFly_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_os_specific_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = load i64, i64* @ngx_freebsd_kern_ostype, align 8
  %8 = load i32, i32* @ngx_freebsd_kern_osrelease, align 4
  %9 = call i32 @ngx_log_error(i32 %5, i32* %6, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %8)
  %10 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i64, i64* @ngx_freebsd_kern_osreldate, align 8
  %13 = load i32, i32* @__FreeBSD_version, align 4
  %14 = call i32 @ngx_log_error(i32 %10, i32* %11, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %12, i32 %13)
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %65, %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %22
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 8
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %37
  %55 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctls, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ngx_log_error(i32 %55, i32* %56, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %15

68:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
