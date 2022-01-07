; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_var_session_readable_time_getdata.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_var_session_readable_time_getdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_current_msec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%uid \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%uih \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%uim \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%uis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32*)* @ngx_rtmp_log_var_session_readable_time_getdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_rtmp_log_var_session_readable_time_getdata(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @ngx_current_msec, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sdiv i32 %16, 1000
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 86400
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 3600
  %23 = srem i32 %22, 24
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 60
  %27 = srem i32 %26, 60
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %29, 60
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32* @ngx_sprintf(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32* @ngx_sprintf(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51, %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32* @ngx_sprintf(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32* @ngx_sprintf(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @ngx_sprintf(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
