; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i32, i32, i32*, i64, i64, %struct.zip_entry* }
%struct.zip_entry = type { i32 }
%struct.zip_error = type { i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_cdir* @_zip_cdir_new(i32 %0, %struct.zip_error* %1) #0 {
  %3 = alloca %struct.zip_cdir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip_error*, align 8
  %6 = alloca %struct.zip_cdir*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.zip_error* %1, %struct.zip_error** %5, align 8
  %8 = call i64 @malloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.zip_cdir*
  store %struct.zip_cdir* %9, %struct.zip_cdir** %6, align 8
  %10 = icmp eq %struct.zip_cdir* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.zip_error*, %struct.zip_error** %5, align 8
  %13 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %14 = call i32 @_zip_error_set(%struct.zip_error* %12, i32 %13, i32 0)
  store %struct.zip_cdir* null, %struct.zip_cdir** %3, align 8
  br label %74

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %20 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %19, i32 0, i32 5
  store %struct.zip_entry* null, %struct.zip_entry** %20, align 8
  br label %45

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* @SIZE_MAX, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @malloc(i32 %32)
  %34 = inttoptr i64 %33 to %struct.zip_entry*
  %35 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %36 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %35, i32 0, i32 5
  store %struct.zip_entry* %34, %struct.zip_entry** %36, align 8
  %37 = icmp eq %struct.zip_entry* %34, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %28, %21
  %39 = load %struct.zip_error*, %struct.zip_error** %5, align 8
  %40 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %41 = call i32 @_zip_error_set(%struct.zip_error* %39, i32 %40, i32 0)
  %42 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %43 = call i32 @free(%struct.zip_cdir* %42)
  store %struct.zip_cdir* null, %struct.zip_cdir** %3, align 8
  br label %74

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %18
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %52 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %51, i32 0, i32 5
  %53 = load %struct.zip_entry*, %struct.zip_entry** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %53, i64 %55
  %57 = call i32 @_zip_entry_init(%struct.zip_entry* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %64 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %66 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %68 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %70 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %72 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  store %struct.zip_cdir* %73, %struct.zip_cdir** %3, align 8
  br label %74

74:                                               ; preds = %61, %38, %11
  %75 = load %struct.zip_cdir*, %struct.zip_cdir** %3, align 8
  ret %struct.zip_cdir* %75
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @free(%struct.zip_cdir*) #1

declare dso_local i32 @_zip_entry_init(%struct.zip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
