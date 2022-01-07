; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_index_module.c_ngx_http_index_test_dir.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_index_module.c_ngx_http_index_test_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i32, i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"http index check dir: \22%V\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_ENOENT = common dso_local global i64 0, align 8
@NGX_EACCES = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\22%s\22 is not a directory\00", align 1
@NGX_ELOOP = common dso_local global i64 0, align 8
@NGX_EMLINK = common dso_local global i64 0, align 8
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, i8*, i8*)* @ngx_http_index_test_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_index_test_dir(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %10, align 1
  %15 = load i8, i8* %10, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 47
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %10, align 1
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %9, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ngx_log_debug1(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %11)
  %44 = call i32 @ngx_memzero(%struct.TYPE_20__* %12, i32 40)
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 6
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = call i64 @ngx_http_set_disable_symlinks(%struct.TYPE_21__* %55, %struct.TYPE_22__* %56, %struct.TYPE_19__* %11, %struct.TYPE_20__* %12)
  %58 = load i64, i64* @NGX_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %26
  %61 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %61, i64* %5, align 8
  br label %136

62:                                               ; preds = %26
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @ngx_open_cached_file(i32 %65, %struct.TYPE_19__* %11, %struct.TYPE_20__* %12, i32 %68)
  %70 = load i64, i64* @NGX_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NGX_ENOENT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i8, i8* %10, align 1
  %83 = load i8*, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* @NGX_ENOENT, align 8
  %89 = call i64 @ngx_http_index_error(%struct.TYPE_21__* %84, %struct.TYPE_22__* %85, i8* %87, i64 %88)
  store i64 %89, i64* %5, align 8
  br label %136

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NGX_EACCES, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i8, i8* %10, align 1
  %97 = load i8*, i8** %9, align 8
  store i8 %96, i8* %97, align 1
  %98 = load i64, i64* @NGX_OK, align 8
  store i64 %98, i64* %5, align 8
  br label %136

99:                                               ; preds = %90
  %100 = load i32, i32* @NGX_LOG_CRIT, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i32, i64, i8*, i8*, ...) @ngx_log_error(i32 %100, i32 %105, i64 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %111, i8* %113)
  br label %115

115:                                              ; preds = %99, %72
  %116 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %116, i64* %5, align 8
  br label %136

117:                                              ; preds = %62
  %118 = load i8, i8* %10, align 1
  %119 = load i8*, i8** %9, align 8
  store i8 %118, i8* %119, align 1
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* @NGX_OK, align 8
  store i64 %124, i64* %5, align 8
  br label %136

125:                                              ; preds = %117
  %126 = load i32, i32* @NGX_LOG_ALERT, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i32, i64, i8*, i8*, ...) @ngx_log_error(i32 %126, i32 %131, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  %135 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %125, %123, %115, %95, %81, %60
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_set_disable_symlinks(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ngx_open_cached_file(i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_index_error(%struct.TYPE_21__*, %struct.TYPE_22__*, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
