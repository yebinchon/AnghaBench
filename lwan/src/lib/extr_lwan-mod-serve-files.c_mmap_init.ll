; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_mmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { i32, %struct.mmap_cache_data }
%struct.mmap_cache_data = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.serve_files_priv = type { i32, i32 }
%struct.stat = type { i64 }

@open_mode = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)* @mmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_init(%struct.file_cache_entry* %0, %struct.serve_files_priv* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_cache_entry*, align 8
  %7 = alloca %struct.serve_files_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.mmap_cache_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %6, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %14 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %15 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %14, i32 0, i32 1
  store %struct.mmap_cache_data* %15, %struct.mmap_cache_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %18 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %11, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %11, align 8
  %30 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %31 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @open_mode, align 4
  %35 = call i32 @openat(i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @UNLIKELY(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %96

42:                                               ; preds = %4
  %43 = load %struct.stat*, %struct.stat** %9, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @PROT_READ, align 4
  %47 = load i32, i32* @MAP_SHARED, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @mmap(i32* null, i64 %45, i32 %46, i32 %47, i32 %48, i32 0)
  %50 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %51 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %54 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAP_FAILED, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @UNLIKELY(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %92

63:                                               ; preds = %42
  %64 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %65 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.stat*, %struct.stat** %9, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @lwan_madvise_queue(i64 %67, i64 %70)
  %72 = load %struct.stat*, %struct.stat** %9, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %76 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %79 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %78, i32 0, i32 2
  %80 = load %struct.mmap_cache_data*, %struct.mmap_cache_data** %10, align 8
  %81 = getelementptr inbounds %struct.mmap_cache_data, %struct.mmap_cache_data* %80, i32 0, i32 0
  %82 = call i32 @deflate_value(%struct.TYPE_4__* %79, i32* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %85 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = call i32 @lwan_determine_mime_type_for_file_name(i8* %88)
  %90 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %91 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %63, %62
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @close(i32 %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %41
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @lwan_madvise_queue(i64, i64) #1

declare dso_local i32 @deflate_value(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @lwan_determine_mime_type_for_file_name(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
