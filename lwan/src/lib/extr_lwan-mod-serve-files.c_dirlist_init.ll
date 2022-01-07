; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_dirlist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { i8*, %struct.dir_list_cache_data }
%struct.dir_list_cache_data = type { %struct.lwan_strbuf, i32, i32 }
%struct.lwan_strbuf = type { i32 }
%struct.serve_files_priv = type { i32 }
%struct.stat = type { i32 }
%struct.file_list = type { i8*, i32, i32 }
%struct.lwan_value = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)* @dirlist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirlist_init(%struct.file_cache_entry* %0, %struct.serve_files_priv* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_cache_entry*, align 8
  %7 = alloca %struct.serve_files_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.dir_list_cache_data*, align 8
  %11 = alloca %struct.lwan_strbuf, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.file_list, align 8
  %14 = alloca %struct.lwan_value, align 4
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %6, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %15 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %16 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %15, i32 0, i32 1
  store %struct.dir_list_cache_data* %16, %struct.dir_list_cache_data** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = call i32 @lwan_strbuf_init(%struct.lwan_strbuf* %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

20:                                               ; preds = %4
  %21 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %22 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %21, i32 0, i32 0
  %23 = call i32 @lwan_strbuf_init(%struct.lwan_strbuf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %63

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.file_list, %struct.file_list* %13, i32 0, i32 0
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds %struct.file_list, %struct.file_list* %13, i32 0, i32 1
  %30 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @dirlist_find_readme(%struct.lwan_strbuf* %11, %struct.serve_files_priv* %30, i8* %31)
  store i32 %32, i32* %29, align 8
  %33 = getelementptr inbounds %struct.file_list, %struct.file_list* %13, i32 0, i32 2
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %36 = call i32 @get_rel_path(i8* %34, %struct.serve_files_priv* %35)
  store i32 %36, i32* %33, align 4
  %37 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %38 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %41 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %40, i32 0, i32 0
  %42 = call i32 @lwan_tpl_apply_with_buffer(i32 %39, %struct.lwan_strbuf* %41, %struct.file_list* %13)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %26
  br label %59

45:                                               ; preds = %26
  %46 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %47 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %14, i32 0, i32 0
  %49 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %50 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %49, i32 0, i32 0
  %51 = call i32 @lwan_strbuf_get_length(%struct.lwan_strbuf* %50)
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %14, i32 0, i32 1
  %53 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %54 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %53, i32 0, i32 0
  %55 = call i32 @lwan_strbuf_get_buffer(%struct.lwan_strbuf* %54)
  store i32 %55, i32* %52, align 4
  %56 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %57 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %56, i32 0, i32 1
  %58 = call i32 @deflate_value(%struct.lwan_value* %14, i32* %57)
  store i32 1, i32* %12, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load %struct.dir_list_cache_data*, %struct.dir_list_cache_data** %10, align 8
  %61 = getelementptr inbounds %struct.dir_list_cache_data, %struct.dir_list_cache_data* %60, i32 0, i32 0
  %62 = call i32 @lwan_strbuf_free(%struct.lwan_strbuf* %61)
  br label %63

63:                                               ; preds = %59, %45, %25
  %64 = call i32 @lwan_strbuf_free(%struct.lwan_strbuf* %11)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @lwan_strbuf_init(%struct.lwan_strbuf*) #1

declare dso_local i32 @dirlist_find_readme(%struct.lwan_strbuf*, %struct.serve_files_priv*, i8*) #1

declare dso_local i32 @get_rel_path(i8*, %struct.serve_files_priv*) #1

declare dso_local i32 @lwan_tpl_apply_with_buffer(i32, %struct.lwan_strbuf*, %struct.file_list*) #1

declare dso_local i32 @lwan_strbuf_get_length(%struct.lwan_strbuf*) #1

declare dso_local i32 @lwan_strbuf_get_buffer(%struct.lwan_strbuf*) #1

declare dso_local i32 @deflate_value(%struct.lwan_value*, i32*) #1

declare dso_local i32 @lwan_strbuf_free(%struct.lwan_strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
