; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_create_cache_entry.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_create_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.serve_files_priv = type { i32, i32, i32 }
%struct.file_cache_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stat = type { i32, i32 }
%struct.cache_funcs = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (i8*, i8*)* @create_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @create_cache_entry(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.serve_files_priv*, align 8
  %7 = alloca %struct.file_cache_entry*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.cache_funcs*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.serve_files_priv*
  store %struct.serve_files_priv* %14, %struct.serve_files_priv** %6, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %20 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %23 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @realpathat2(i32 %21, i32 %24, i8* %25, i8* %18, %struct.stat* %8)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @UNLIKELY(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @is_world_readable(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @UNLIKELY(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

43:                                               ; preds = %33
  %44 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %45 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %48 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strncmp(i8* %18, i32 %46, i32 %49)
  %51 = call i64 @UNLIKELY(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

54:                                               ; preds = %43
  %55 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call %struct.cache_funcs* @get_funcs(%struct.serve_files_priv* %55, i8* %56, i8* %18, %struct.stat* %8)
  store %struct.cache_funcs* %57, %struct.cache_funcs** %9, align 8
  %58 = load %struct.cache_funcs*, %struct.cache_funcs** %9, align 8
  %59 = icmp ne %struct.cache_funcs* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @UNLIKELY(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

65:                                               ; preds = %54
  %66 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %67 = load %struct.cache_funcs*, %struct.cache_funcs** %9, align 8
  %68 = call %struct.file_cache_entry* @create_cache_entry_from_funcs(%struct.serve_files_priv* %66, i8* %18, %struct.stat* %8, %struct.cache_funcs* %67)
  store %struct.file_cache_entry* %68, %struct.file_cache_entry** %7, align 8
  %69 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %70 = icmp ne %struct.file_cache_entry* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @UNLIKELY(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %80 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @lwan_format_rfc_time(i32 %78, i32 %82)
  %84 = icmp slt i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @UNLIKELY(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %90 = bitcast %struct.file_cache_entry* %89 to %struct.cache_entry*
  %91 = call i32 @destroy_cache_entry(%struct.cache_entry* %90, i32* null)
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %96 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.file_cache_entry*, %struct.file_cache_entry** %7, align 8
  %99 = bitcast %struct.file_cache_entry* %98 to %struct.cache_entry*
  store %struct.cache_entry* %99, %struct.cache_entry** %3, align 8
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %92, %88, %75, %64, %53, %42, %32
  %101 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  ret %struct.cache_entry* %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @realpathat2(i32, i32, i8*, i8*, %struct.stat*) #2

declare dso_local i32 @is_world_readable(i32) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local %struct.cache_funcs* @get_funcs(%struct.serve_files_priv*, i8*, i8*, %struct.stat*) #2

declare dso_local %struct.file_cache_entry* @create_cache_entry_from_funcs(%struct.serve_files_priv*, i8*, %struct.stat*, %struct.cache_funcs*) #2

declare dso_local i64 @lwan_format_rfc_time(i32, i32) #2

declare dso_local i32 @destroy_cache_entry(%struct.cache_entry*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
