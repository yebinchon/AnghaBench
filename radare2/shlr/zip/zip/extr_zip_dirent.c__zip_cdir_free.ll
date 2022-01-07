; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_free.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_cdir_free(%struct.zip_cdir* %0) #0 {
  %2 = alloca %struct.zip_cdir*, align 8
  %3 = alloca i64, align 8
  store %struct.zip_cdir* %0, %struct.zip_cdir** %2, align 8
  %4 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %5 = icmp ne %struct.zip_cdir* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %11 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %16 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @_zip_entry_finalize(i64 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %26 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.zip_cdir*
  %29 = call i32 @free(%struct.zip_cdir* %28)
  %30 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %31 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @_zip_string_free(i32 %32)
  %34 = load %struct.zip_cdir*, %struct.zip_cdir** %2, align 8
  %35 = call i32 @free(%struct.zip_cdir* %34)
  br label %36

36:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @_zip_entry_finalize(i64) #1

declare dso_local i32 @free(%struct.zip_cdir*) #1

declare dso_local i32 @_zip_string_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
