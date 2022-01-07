; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_set_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_set_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_15__ = type { i64, i32 }

@ngx_http_userid_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_USERID_V1 = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_13__*, i64)* @ngx_http_userid_set_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_userid_set_variable(%struct.TYPE_16__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ngx_http_userid_filter_module, align 4
  %14 = call %struct.TYPE_15__* @ngx_http_get_module_loc_conf(i32 %12, i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_HTTP_USERID_V1, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i64, i64* @NGX_OK, align 8
  store i64 %23, i64* %4, align 8
  br label %67

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = call %struct.TYPE_14__* @ngx_http_userid_get_uid(i32 %27, %struct.TYPE_15__* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %8, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = icmp eq %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %4, align 8
  br label %67

34:                                               ; preds = %24
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = call i64 @ngx_http_userid_create_uid(i32 %37, %struct.TYPE_14__* %38, %struct.TYPE_15__* %39)
  %41 = load i64, i64* @NGX_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i64, i64* @NGX_ERROR, align 8
  store i64 %44, i64* %4, align 8
  br label %67

45:                                               ; preds = %34
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i64, i64* @NGX_OK, align 8
  store i64 %55, i64* %4, align 8
  br label %67

56:                                               ; preds = %45
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = call i64 @ngx_http_userid_variable(i32 %59, %struct.TYPE_13__* %60, i32* %62, i64* %65)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %56, %52, %43, %32, %20
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_loc_conf(i32, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_http_userid_get_uid(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_http_userid_create_uid(i32, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_http_userid_variable(i32, %struct.TYPE_13__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
