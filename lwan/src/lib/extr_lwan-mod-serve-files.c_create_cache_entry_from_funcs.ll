; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_create_cache_entry_from_funcs.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_create_cache_entry_from_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_funcs = type { i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)* }
%struct.file_cache_entry = type { %struct.cache_funcs* }
%struct.serve_files_priv = type { i32 }
%struct.stat = type { i32 }

@mmap_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 8
@sendfile_funcs = common dso_local global %struct.cache_funcs zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_cache_entry* (%struct.serve_files_priv*, i8*, %struct.stat*, %struct.cache_funcs*)* @create_cache_entry_from_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_cache_entry* @create_cache_entry_from_funcs(%struct.serve_files_priv* %0, i8* %1, %struct.stat* %2, %struct.cache_funcs* %3) #0 {
  %5 = alloca %struct.file_cache_entry*, align 8
  %6 = alloca %struct.serve_files_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.cache_funcs*, align 8
  %10 = alloca %struct.file_cache_entry*, align 8
  store %struct.serve_files_priv* %0, %struct.serve_files_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store %struct.cache_funcs* %3, %struct.cache_funcs** %9, align 8
  %11 = call %struct.file_cache_entry* @malloc(i32 8)
  store %struct.file_cache_entry* %11, %struct.file_cache_entry** %10, align 8
  %12 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %13 = icmp ne %struct.file_cache_entry* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @UNLIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.file_cache_entry* null, %struct.file_cache_entry** %5, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.cache_funcs*, %struct.cache_funcs** %9, align 8
  %21 = getelementptr inbounds %struct.cache_funcs, %struct.cache_funcs* %20, i32 0, i32 0
  %22 = load i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)*, i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)** %21, align 8
  %23 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %24 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.stat*, %struct.stat** %8, align 8
  %27 = call i32 %22(%struct.file_cache_entry* %23, %struct.serve_files_priv* %24, i8* %25, %struct.stat* %26)
  %28 = call i64 @LIKELY(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.cache_funcs*, %struct.cache_funcs** %9, align 8
  %32 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %33 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %32, i32 0, i32 0
  store %struct.cache_funcs* %31, %struct.cache_funcs** %33, align 8
  %34 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  store %struct.file_cache_entry* %34, %struct.file_cache_entry** %5, align 8
  br label %46

35:                                               ; preds = %19
  %36 = load %struct.file_cache_entry*, %struct.file_cache_entry** %10, align 8
  %37 = call i32 @free(%struct.file_cache_entry* %36)
  %38 = load %struct.cache_funcs*, %struct.cache_funcs** %9, align 8
  %39 = icmp ne %struct.cache_funcs* %38, @mmap_funcs
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.file_cache_entry* null, %struct.file_cache_entry** %5, align 8
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.serve_files_priv*, %struct.serve_files_priv** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.stat*, %struct.stat** %8, align 8
  %45 = call %struct.file_cache_entry* @create_cache_entry_from_funcs(%struct.serve_files_priv* %42, i8* %43, %struct.stat* %44, %struct.cache_funcs* @sendfile_funcs)
  store %struct.file_cache_entry* %45, %struct.file_cache_entry** %5, align 8
  br label %46

46:                                               ; preds = %41, %40, %30, %18
  %47 = load %struct.file_cache_entry*, %struct.file_cache_entry** %5, align 8
  ret %struct.file_cache_entry* %47
}

declare dso_local %struct.file_cache_entry* @malloc(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @free(%struct.file_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
