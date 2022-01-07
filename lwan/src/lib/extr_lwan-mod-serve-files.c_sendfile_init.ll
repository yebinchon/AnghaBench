; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_sendfile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { i32, %struct.sendfile_cache_data }
%struct.sendfile_cache_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.serve_files_priv = type { i32, i32, i32 }
%struct.stat = type { i64 }

@open_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)* @sendfile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile_init(%struct.file_cache_entry* %0, %struct.serve_files_priv* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_cache_entry*, align 8
  %7 = alloca %struct.serve_files_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.sendfile_cache_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %6, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %14 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %15 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %14, i32 0, i32 1
  store %struct.sendfile_cache_data* %15, %struct.sendfile_cache_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %18 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @lwan_determine_mime_type_for_file_name(i8* %22)
  %24 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %25 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %27 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i32, i32* @open_mode, align 4
  %32 = call i64 @openat(i32 %28, i8* %30, i32 %31)
  %33 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %34 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %37 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @UNLIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %4
  %45 = load i32, i32* @errno, align 4
  switch i32 %45, label %62 [
    i32 128, label %46
    i32 129, label %46
    i32 130, label %46
  ]

46:                                               ; preds = %44, %44, %44
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %50 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = sext i32 %48 to i64
  %53 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %54 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %57 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %60 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  store i32 1, i32* %5, align 4
  br label %100

62:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %100

63:                                               ; preds = %4
  %64 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %65 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @LIKELY(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %72 = load %struct.stat*, %struct.stat** %9, align 8
  %73 = call i32 @try_open_compressed(i8* %70, %struct.serve_files_priv* %71, %struct.stat* %72, i64* %12)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %76 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %80 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %63
  %83 = load %struct.stat*, %struct.stat** %9, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %87 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %90 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %91 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.sendfile_cache_data*, %struct.sendfile_cache_data** %10, align 8
  %96 = getelementptr inbounds %struct.sendfile_cache_data, %struct.sendfile_cache_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @try_readahead(%struct.serve_files_priv* %89, i32 %94, i64 %98)
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %82, %62, %46
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @lwan_determine_mime_type_for_file_name(i8*) #1

declare dso_local i64 @openat(i32, i8*, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @try_open_compressed(i8*, %struct.serve_files_priv*, %struct.stat*, i64*) #1

declare dso_local i32 @try_readahead(%struct.serve_files_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
