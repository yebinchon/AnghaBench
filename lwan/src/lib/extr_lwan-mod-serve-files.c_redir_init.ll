; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_redir_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_redir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_cache_entry = type { i8*, %struct.redir_cache_data }
%struct.redir_cache_data = type { i32 }
%struct.serve_files_priv = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_cache_entry*, %struct.serve_files_priv*, i8*, %struct.stat*)* @redir_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redir_init(%struct.file_cache_entry* %0, %struct.serve_files_priv* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_cache_entry*, align 8
  %7 = alloca %struct.serve_files_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.redir_cache_data*, align 8
  store %struct.file_cache_entry* %0, %struct.file_cache_entry** %6, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %11 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %12 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %11, i32 0, i32 1
  store %struct.redir_cache_data* %12, %struct.redir_cache_data** %10, align 8
  %13 = load %struct.redir_cache_data*, %struct.redir_cache_data** %10, align 8
  %14 = getelementptr inbounds %struct.redir_cache_data, %struct.redir_cache_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %17 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = call i64 @asprintf(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.file_cache_entry*, %struct.file_cache_entry** %6, align 8
  %26 = getelementptr inbounds %struct.file_cache_entry, %struct.file_cache_entry* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @asprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
