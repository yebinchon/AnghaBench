; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_needs_zip64.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_needs_zip64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i64, i64, i64 }

@ZIP_UINT32_MAX = common dso_local global i64 0, align 8
@ZIP_FL_CENTRAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_dirent_needs_zip64(%struct.zip_dirent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_dirent*, align 8
  %5 = alloca i32, align 4
  store %struct.zip_dirent* %0, %struct.zip_dirent** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %7 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %13 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ZIP_FL_CENTRAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.zip_dirent*, %struct.zip_dirent** %4, align 8
  %24 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %11, %2
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
