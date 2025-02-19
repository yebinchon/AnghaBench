; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_serve_files_create_from_hash.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_serve_files_create_from_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 }
%struct.lwan_serve_files_settings = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"read_ahead\00", align 1
@SERVE_FILES_READ_AHEAD_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"auto_index_readme\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"directory_list_template\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"auto_index\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"serve_precompressed_files\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"index_path\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.hash*)* @serve_files_create_from_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serve_files_create_from_hash(i8* %0, %struct.hash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash*, align 8
  %5 = alloca %struct.lwan_serve_files_settings, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hash* %1, %struct.hash** %4, align 8
  %6 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 0
  %7 = load i32, i32* @SERVE_FILES_READ_AHEAD_BYTES, align 4
  %8 = call i32 @parse_long(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 1
  %11 = load %struct.hash*, %struct.hash** %4, align 8
  %12 = call i32 @hash_find(%struct.hash* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @parse_bool(i32 %12, i32 1)
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 2
  %15 = load %struct.hash*, %struct.hash** %4, align 8
  %16 = call i32 @hash_find(%struct.hash* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 3
  %18 = load %struct.hash*, %struct.hash** %4, align 8
  %19 = call i32 @hash_find(%struct.hash* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @parse_bool(i32 %19, i32 1)
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 4
  %22 = load %struct.hash*, %struct.hash** %4, align 8
  %23 = call i32 @hash_find(%struct.hash* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @parse_bool(i32 %23, i32 1)
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 5
  %26 = load %struct.hash*, %struct.hash** %4, align 8
  %27 = call i32 @hash_find(%struct.hash* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.lwan_serve_files_settings, %struct.lwan_serve_files_settings* %5, i32 0, i32 6
  %29 = load %struct.hash*, %struct.hash** %4, align 8
  %30 = call i32 @hash_find(%struct.hash* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %30, i32* %28, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @serve_files_create(i8* %31, %struct.lwan_serve_files_settings* %5)
  ret i8* %32
}

declare dso_local i32 @parse_long(i8*, i32) #1

declare dso_local i32 @parse_bool(i32, i32) #1

declare dso_local i32 @hash_find(%struct.hash*, i8*) #1

declare dso_local i8* @serve_files_create(i8*, %struct.lwan_serve_files_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
