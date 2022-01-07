; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_alloc_post_buffer.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_alloc_post_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.file_backed_buffer = type { i64, i8* }

@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_HUGETLB = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@free_post_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.coro*, i64, i32)* @alloc_post_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_post_buffer(%struct.coro* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.coro*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_backed_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.coro* %0, %struct.coro** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 1048576
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @LIKELY(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.coro*, %struct.coro** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @coro_malloc(%struct.coro* %20, i64 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @LIKELY(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %4, align 8
  br label %117

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @UNLIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %117

37:                                               ; preds = %29
  %38 = call i32 (...) @create_temp_file()
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @UNLIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %117

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @ftruncate(i32 %46, i32 %48)
  %50 = icmp slt i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @UNLIKELY(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @close(i32 %55)
  store i8* null, i8** %4, align 8
  br label %117

57:                                               ; preds = %45
  %58 = load i32, i32* @MAP_HUGETLB, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @PROT_READ, align 4
  %63 = load i32, i32* @PROT_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MAP_SHARED, align 4
  %66 = load i32, i32* @MAP_HUGETLB, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @mmap(i32* null, i64 %61, i32 %64, i32 %67, i32 %68, i32 0)
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %60, %57
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** @MAP_FAILED, align 8
  %73 = icmp eq i8* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @UNLIKELY(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* @PROT_READ, align 4
  %80 = load i32, i32* @PROT_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MAP_SHARED, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @mmap(i32* null, i64 %78, i32 %81, i32 %82, i32 %83, i32 0)
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %77, %70
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** @MAP_FAILED, align 8
  %90 = icmp eq i8* %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @UNLIKELY(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i8* null, i8** %4, align 8
  br label %117

95:                                               ; preds = %85
  %96 = load %struct.coro*, %struct.coro** %5, align 8
  %97 = load i32, i32* @free_post_buffer, align 4
  %98 = call %struct.file_backed_buffer* @coro_malloc_full(%struct.coro* %96, i32 16, i32 %97)
  store %struct.file_backed_buffer* %98, %struct.file_backed_buffer** %8, align 8
  %99 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %8, align 8
  %100 = icmp ne %struct.file_backed_buffer* %99, null
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @UNLIKELY(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @munmap(i8* %106, i64 %107)
  store i8* null, i8** %4, align 8
  br label %117

109:                                              ; preds = %95
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %8, align 8
  %112 = getelementptr inbounds %struct.file_backed_buffer, %struct.file_backed_buffer* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %8, align 8
  %115 = getelementptr inbounds %struct.file_backed_buffer, %struct.file_backed_buffer* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i8*, i8** %9, align 8
  store i8* %116, i8** %4, align 8
  br label %117

117:                                              ; preds = %109, %105, %94, %54, %44, %36, %26
  %118 = load i8*, i8** %4, align 8
  ret i8* %118
}

declare dso_local i64 @LIKELY(i8*) #1

declare dso_local i8* @coro_malloc(%struct.coro*, i64) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @create_temp_file(...) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.file_backed_buffer* @coro_malloc_full(%struct.coro*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
