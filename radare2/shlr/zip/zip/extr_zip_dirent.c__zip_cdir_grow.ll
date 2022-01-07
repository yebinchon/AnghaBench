; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_grow.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i32, %struct.zip_entry* }
%struct.zip_entry = type { i32 }
%struct.zip_error = type { i32 }

@ZIP_ER_INTERNAL = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_cdir_grow(%struct.zip_cdir* %0, i32 %1, %struct.zip_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip_cdir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_error*, align 8
  %8 = alloca %struct.zip_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.zip_cdir* %0, %struct.zip_cdir** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zip_error* %2, %struct.zip_error** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %12 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %17 = load i32, i32* @ZIP_ER_INTERNAL, align 4
  %18 = call i32 @_zip_error_set(%struct.zip_error* %16, i32 %17, i32 0)
  store i32 -1, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %22 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %28 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %27, i32 0, i32 1
  %29 = load %struct.zip_entry*, %struct.zip_entry** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @realloc(%struct.zip_entry* %29, i32 %33)
  %35 = inttoptr i64 %34 to %struct.zip_entry*
  store %struct.zip_entry* %35, %struct.zip_entry** %8, align 8
  %36 = icmp eq %struct.zip_entry* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %39 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %40 = call i32 @_zip_error_set(%struct.zip_error* %38, i32 %39, i32 0)
  store i32 -1, i32* %4, align 4
  br label %65

41:                                               ; preds = %26
  %42 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %43 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %55, %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %50, i64 %52
  %54 = call i32 @_zip_entry_init(%struct.zip_entry* %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %45

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %61 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %63 = load %struct.zip_cdir*, %struct.zip_cdir** %5, align 8
  %64 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %63, i32 0, i32 1
  store %struct.zip_entry* %62, %struct.zip_entry** %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %37, %25, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @realloc(%struct.zip_entry*, i32) #1

declare dso_local i32 @_zip_entry_init(%struct.zip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
