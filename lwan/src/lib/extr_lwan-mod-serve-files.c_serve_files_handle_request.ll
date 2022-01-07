; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_serve_files_handle_request.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_serve_files_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lwan_response = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, %struct.file_cache_entry* }
%struct.file_cache_entry = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.serve_files_priv = type { i32 }
%struct.cache_entry = type { i32 }

@HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@HTTP_NOT_MODIFIED = common dso_local global i32 0, align 4
@RESPONSE_STREAM = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, %struct.lwan_response*, i8*)* @serve_files_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serve_files_handle_request(%struct.lwan_request* %0, %struct.lwan_response* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwan_request*, align 8
  %6 = alloca %struct.lwan_response*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.serve_files_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file_cache_entry*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %5, align 8
  store %struct.lwan_response* %1, %struct.lwan_response** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.serve_files_priv*
  store %struct.serve_files_priv* %13, %struct.serve_files_priv** %8, align 8
  %14 = load %struct.serve_files_priv*, %struct.serve_files_priv** %8, align 8
  %15 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %18 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %23 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.cache_entry* @cache_coro_get_and_ref_entry(i32 %16, i32 %21, i32 %25)
  store %struct.cache_entry* %26, %struct.cache_entry** %11, align 8
  %27 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %28 = icmp ne %struct.cache_entry* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @UNLIKELY(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @HTTP_NOT_FOUND, align 4
  store i32 %34, i32* %9, align 4
  br label %71

35:                                               ; preds = %3
  %36 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %37 = bitcast %struct.cache_entry* %36 to %struct.file_cache_entry*
  store %struct.file_cache_entry* %37, %struct.file_cache_entry** %10, align 8
  %38 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %39 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %40 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @client_has_fresh_content(%struct.lwan_request* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @HTTP_NOT_MODIFIED, align 4
  store i32 %46, i32* %9, align 4
  br label %71

47:                                               ; preds = %35
  %48 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %49 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %52 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %54 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %59 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %62 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %63 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store %struct.file_cache_entry* %61, %struct.file_cache_entry** %64, align 8
  %65 = load i32, i32* @RESPONSE_STREAM, align 4
  %66 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %67 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @HTTP_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %45, %33
  %72 = load %struct.lwan_response*, %struct.lwan_response** %6, align 8
  %73 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %47
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.cache_entry* @cache_coro_get_and_ref_entry(i32, i32, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @client_has_fresh_content(%struct.lwan_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
