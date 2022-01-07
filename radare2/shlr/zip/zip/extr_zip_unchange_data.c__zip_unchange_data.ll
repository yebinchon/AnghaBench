; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_unchange_data.c__zip_unchange_data.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_unchange_data.c__zip_unchange_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_entry = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@ZIP_DIRENT_COMP_METHOD = common dso_local global i32 0, align 4
@ZIP_CM_REPLACED_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_unchange_data(%struct.zip_entry* %0) #0 {
  %2 = alloca %struct.zip_entry*, align 8
  store %struct.zip_entry* %0, %struct.zip_entry** %2, align 8
  %3 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %4 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %9 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @zip_source_free(i32* %10)
  %12 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %13 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %16 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %21 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ZIP_DIRENT_COMP_METHOD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %19
  %29 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %30 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZIP_CM_REPLACED_DEFAULT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %28
  %37 = load i32, i32* @ZIP_DIRENT_COMP_METHOD, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %40 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 8
  %45 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %46 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %53 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @_zip_dirent_free(%struct.TYPE_2__* %54)
  %56 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %57 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %56, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %57, align 8
  br label %58

58:                                               ; preds = %51, %36
  br label %59

59:                                               ; preds = %58, %28, %19, %14
  %60 = load %struct.zip_entry*, %struct.zip_entry** %2, align 8
  %61 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @zip_source_free(i32*) #1

declare dso_local i32 @_zip_dirent_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
