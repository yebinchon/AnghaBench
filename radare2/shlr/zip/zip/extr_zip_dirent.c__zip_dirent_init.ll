; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_init.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32, i32, i64, i64, i64, i64, i32*, i32*, i32*, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@ZIP_CM_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_dirent_init(%struct.zip_dirent* %0) #0 {
  %2 = alloca %struct.zip_dirent*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %2, align 8
  %3 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %4 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %3, i32 0, i32 17
  store i64 0, i64* %4, align 8
  %5 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %6 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %5, i32 0, i32 16
  store i64 0, i64* %6, align 8
  %7 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %8 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %7, i32 0, i32 15
  store i64 0, i64* %8, align 8
  %9 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %10 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %9, i32 0, i32 0
  store i32 20, i32* %10, align 8
  %11 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %12 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %11, i32 0, i32 1
  store i32 20, i32* %12, align 4
  %13 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %14 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %13, i32 0, i32 14
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @ZIP_CM_DEFAULT, align 4
  %16 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %17 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 8
  %18 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %19 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %18, i32 0, i32 12
  store i64 0, i64* %19, align 8
  %20 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %21 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %20, i32 0, i32 11
  store i64 0, i64* %21, align 8
  %22 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %23 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %22, i32 0, i32 10
  store i64 0, i64* %23, align 8
  %24 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %25 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %27 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %26, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %29 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %31 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %33 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %35 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %37 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.zip_dirent*, %struct.zip_dirent** %2, align 8
  %39 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
