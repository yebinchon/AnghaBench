; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_softmagic.c_file_softmagic.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_softmagic.c_file_softmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { %struct.mlist** }
%struct.mlist = type { i32, i32, %struct.mlist* }
%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_softmagic(%struct.magic_set* %0, %struct.buffer* %1, i64* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.magic_set*, align 8
  %9 = alloca %struct.buffer*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %8, align 8
  store %struct.buffer* %1, %struct.buffer** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i64*, i64** %11, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i64 0, i64* %18, align 8
  store i64* %18, i64** %11, align 8
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i64*, i64** %10, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 0, i64* %19, align 8
  store i64* %19, i64** %10, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %29 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %28, i32 0, i32 0
  %30 = load %struct.mlist**, %struct.mlist*** %29, align 8
  %31 = getelementptr inbounds %struct.mlist*, %struct.mlist** %30, i64 0
  %32 = load %struct.mlist*, %struct.mlist** %31, align 8
  %33 = getelementptr inbounds %struct.mlist, %struct.mlist* %32, i32 0, i32 2
  %34 = load %struct.mlist*, %struct.mlist** %33, align 8
  store %struct.mlist* %34, %struct.mlist** %14, align 8
  br label %35

35:                                               ; preds = %61, %27
  %36 = load %struct.mlist*, %struct.mlist** %14, align 8
  %37 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %38 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %37, i32 0, i32 0
  %39 = load %struct.mlist**, %struct.mlist*** %38, align 8
  %40 = getelementptr inbounds %struct.mlist*, %struct.mlist** %39, i64 0
  %41 = load %struct.mlist*, %struct.mlist** %40, align 8
  %42 = icmp ne %struct.mlist* %36, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %35
  %44 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %45 = load %struct.mlist*, %struct.mlist** %14, align 8
  %46 = getelementptr inbounds %struct.mlist, %struct.mlist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlist*, %struct.mlist** %14, align 8
  %49 = getelementptr inbounds %struct.mlist, %struct.mlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.buffer*, %struct.buffer** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i64*, i64** %10, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = call i32 @match(%struct.magic_set* %44, i32 %47, i32 %50, %struct.buffer* %51, i32 0, i32 %52, i32 %53, i32 0, i64* %54, i64* %55, i32* %16, i32* %17, i32* null, i32* null)
  store i32 %56, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %66

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.mlist*, %struct.mlist** %14, align 8
  %63 = getelementptr inbounds %struct.mlist, %struct.mlist* %62, i32 0, i32 2
  %64 = load %struct.mlist*, %struct.mlist** %63, align 8
  store %struct.mlist* %64, %struct.mlist** %14, align 8
  br label %35

65:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @match(%struct.magic_set*, i32, i32, %struct.buffer*, i32, i32, i32, i32, i64*, i64*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
