; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_add_server.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_add_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i32** }
%struct.TYPE_9__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"a duplicate listen %V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, %struct.TYPE_10__*)* @ngx_http_add_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_add_server(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ngx_array_init(%struct.TYPE_12__* %17, i32 %20, i32 4, i32 8)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, i64* @NGX_ERROR, align 8
  store i64 %25, i64* %4, align 8
  br label %71

26:                                               ; preds = %15
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  store i32** %31, i32*** %9, align 8
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %55, %27
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32**, i32*** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* @NGX_LOG_EMERG, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @ngx_conf_log_error(i32 %47, %struct.TYPE_11__* %48, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %51)
  %53 = load i64, i64* @NGX_ERROR, align 8
  store i64 %53, i64* %4, align 8
  br label %71

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %32

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32** @ngx_array_push(%struct.TYPE_12__* %61)
  store i32** %62, i32*** %9, align 8
  %63 = load i32**, i32*** %9, align 8
  %64 = icmp eq i32** %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @NGX_ERROR, align 8
  store i64 %66, i64* %4, align 8
  br label %71

67:                                               ; preds = %59
  %68 = load i32*, i32** %6, align 8
  %69 = load i32**, i32*** %9, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i64, i64* @NGX_OK, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %67, %65, %46, %24
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_11__*, i32, i8*, i32*) #1

declare dso_local i32** @ngx_array_push(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
