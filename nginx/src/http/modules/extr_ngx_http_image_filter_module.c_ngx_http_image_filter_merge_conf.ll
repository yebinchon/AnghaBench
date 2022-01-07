; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_filter_merge_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_filter_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@NGX_HTTP_IMAGE_OFF = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_image_filter_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_image_filter_merge_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @NGX_HTTP_IMAGE_OFF, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %64

28:                                               ; preds = %18
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 15
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 15
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 14
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %28, %24
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ngx_conf_merge_uint_value(i64 %74, i64 %77, i32 75)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 9
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 9
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %83, %71
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ngx_conf_merge_uint_value(i64 %99, i64 %102, i32 80)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 8
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 8
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %108, %96
  br label %115

115:                                              ; preds = %114, %90
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ngx_conf_merge_uint_value(i64 %124, i64 %127, i32 0)
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %121
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  store i32* %136, i32** %138, align 8
  br label %139

139:                                              ; preds = %133, %121
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ngx_conf_merge_value(i32 %143, i32 %146, i32 1)
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ngx_conf_merge_value(i32 %150, i32 %153, i32 0)
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ngx_conf_merge_size_value(i32 %157, i32 %160, i32 1048576)
  %162 = load i8*, i8** @NGX_CONF_OK, align 8
  ret i8* %162
}

declare dso_local i32 @ngx_conf_merge_uint_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
