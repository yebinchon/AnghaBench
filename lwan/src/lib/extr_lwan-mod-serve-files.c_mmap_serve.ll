; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_serve.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_serve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_key_value = type { i32 }
%struct.lwan_request = type { i32 }
%struct.file_cache_entry = type { %struct.mmap_cache_data }
%struct.mmap_cache_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }

@REQUEST_ACCEPT_DEFLATE = common dso_local global i32 0, align 4
@deflate_compression_hdr = common dso_local global %struct.lwan_key_value zeroinitializer, align 4
@REQUEST_ACCEPT_BROTLI = common dso_local global i32 0, align 4
@REQUEST_ACCEPT_ZSTD = common dso_local global i32 0, align 4
@br_compression_hdr = common dso_local global %struct.lwan_key_value zeroinitializer, align 4
@zstd_compression_hdr = common dso_local global %struct.lwan_key_value zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, i8*)* @mmap_serve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_serve(%struct.lwan_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_key_value*, align 8
  %7 = alloca %struct.file_cache_entry*, align 8
  %8 = alloca %struct.mmap_cache_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.file_cache_entry*
  store %struct.file_cache_entry* %15, %struct.file_cache_entry** %7, align 8
  %16 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %17 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %16, i32 0, i32 0
  store %struct.mmap_cache_data* %17, %struct.mmap_cache_data** %8, align 8
  %18 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %8, align 8
  %19 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %25 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REQUEST_ACCEPT_DEFLATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %8, align 8
  %32 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %8, align 8
  %36 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  store %struct.lwan_key_value* @deflate_compression_hdr, %struct.lwan_key_value** %6, align 8
  store i32 129, i32* %11, align 4
  br label %61

39:                                               ; preds = %23, %2
  %40 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %41 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %8, align 8
  %42 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @compute_range(%struct.lwan_request* %40, i64* %12, i64* %13, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %58 [
    i32 128, label %47
    i32 129, label %47
  ]

47:                                               ; preds = %39, %39
  %48 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %8, align 8
  %49 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %10, align 8
  store %struct.lwan_key_value* null, %struct.lwan_key_value** %6, align 8
  br label %60

58:                                               ; preds = %39
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %30
  %62 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %63 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %64 = load %struct.lwan_key_value*, %struct.lwan_key_value** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @serve_buffer(%struct.lwan_request* %62, %struct.file_cache_entry* %63, %struct.lwan_key_value* %64, i8* %65, i64 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @compute_range(%struct.lwan_request*, i64*, i64*, i64) #1

declare dso_local i32 @serve_buffer(%struct.lwan_request*, %struct.file_cache_entry*, %struct.lwan_key_value*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
