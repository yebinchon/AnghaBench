; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_alloc_large_chunk_linux.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_alloc_large_chunk_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Hugepagesize:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to get supported huge page size\0A\00", align 1
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"huge page size: %zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to get aligned memory chunk: %d\0A\00", align 1
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to set transparent hugepage hint: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @alloc_large_chunk_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_large_chunk_linux(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %9 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %28, %12
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @fgets(i8* %14, i32 64, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 13
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %4)
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %4, align 8
  %27 = shl i64 %26, 10
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %18
  br label %13

29:                                               ; preds = %13
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @fclose(i32* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %70

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @posix_memalign(i8** %5, i64 %46, i64 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  store i8* null, i8** %2, align 8
  br label %70

55:                                               ; preds = %45
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* @MADV_HUGEPAGE, align 4
  %59 = call i32 @madvise(i8* %56, i64 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @free(i8* %66)
  store i8* null, i8** %5, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %2, align 8
  br label %70

70:                                               ; preds = %68, %51, %35
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @posix_memalign(i8**, i64, i64) #1

declare dso_local i32 @madvise(i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
