; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_serve.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_serve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_key_value = type { i32 }
%struct.lwan_request = type { i32 }
%struct.file_cache_entry = type { %struct.sendfile_cache_data }
%struct.sendfile_cache_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@DEFAULT_HEADERS_SIZE = common dso_local global i32 0, align 4
@REQUEST_ACCEPT_GZIP = common dso_local global i32 0, align 4
@gzip_compression_hdr = common dso_local global %struct.lwan_key_value zeroinitializer, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@HTTP_RANGE_UNSATISFIABLE = common dso_local global i32 0, align 4
@HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@HTTP_UNAVAILABLE = common dso_local global i32 0, align 4
@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@REQUEST_METHOD_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, i8*)* @sendfile_serve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile_serve(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_key_value*, align 8
  %7 = alloca %struct.file_cache_entry*, align 8
  %8 = alloca %struct.sendfile_cache_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.file_cache_entry*
  store %struct.file_cache_entry* %19, %struct.file_cache_entry** %7, align 8
  %20 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %21 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %20, i32 0, i32 0
  store %struct.sendfile_cache_data* %21, %struct.sendfile_cache_data** %8, align 8
  %22 = load i32, i32* @DEFAULT_HEADERS_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %27 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %2
  %32 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %33 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REQUEST_ACCEPT_GZIP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  store i64 0, i64* %13, align 8
  %39 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %40 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  store %struct.lwan_key_value* @gzip_compression_hdr, %struct.lwan_key_value** %6, align 8
  %43 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %44 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %16, align 4
  %47 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %48 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load i32, i32* @HTTP_OK, align 4
  store i32 %51, i32* %12, align 4
  br label %75

52:                                               ; preds = %31, %2
  %53 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %54 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %55 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @compute_range(%struct.lwan_request* %53, i64* %13, i64* %14, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @HTTP_RANGE_UNSATISFIABLE, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @UNLIKELY(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @HTTP_RANGE_UNSATISFIABLE, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

67:                                               ; preds = %52
  store %struct.lwan_key_value* null, %struct.lwan_key_value** %6, align 8
  %68 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %8, align 8
  %69 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %16, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %15, align 8
  br label %75

75:                                               ; preds = %67, %38
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @UNLIKELY(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 0, %82
  switch i32 %83, label %88 [
    i32 130, label %84
    i32 129, label %86
    i32 128, label %86
  ]

84:                                               ; preds = %81
  %85 = load i32, i32* @HTTP_FORBIDDEN, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

86:                                               ; preds = %81, %81
  %87 = load i32, i32* @HTTP_UNAVAILABLE, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

88:                                               ; preds = %81
  %89 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

90:                                               ; preds = %75
  %91 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %96 = call i64 @prepare_headers(%struct.lwan_request* %91, i32 %92, %struct.file_cache_entry* %93, i64 %94, %struct.lwan_key_value* %95, i8* %25)
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @UNLIKELY(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

105:                                              ; preds = %90
  %106 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %107 = call i64 @lwan_request_get_method(%struct.lwan_request* %106)
  %108 = load i64, i64* @REQUEST_METHOD_HEAD, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @lwan_send(%struct.lwan_request* %111, i8* %25, i64 %112, i32 0)
  br label %121

114:                                              ; preds = %105
  %115 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @lwan_sendfile(%struct.lwan_request* %115, i32 %116, i64 %117, i64 %118, i8* %25, i64 %119)
  br label %121

121:                                              ; preds = %114, %110
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %121, %103, %88, %86, %84, %65
  %124 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @compute_range(%struct.lwan_request*, i64*, i64*, i64) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i64 @prepare_headers(%struct.lwan_request*, i32, %struct.file_cache_entry*, i64, %struct.lwan_key_value*, i8*) #2

declare dso_local i64 @lwan_request_get_method(%struct.lwan_request*) #2

declare dso_local i32 @lwan_send(%struct.lwan_request*, i8*, i64, i32) #2

declare dso_local i32 @lwan_sendfile(%struct.lwan_request*, i32, i64, i64, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
