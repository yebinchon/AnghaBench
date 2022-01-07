; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_pstcache.c_pstcache_init.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_pstcache.c_pstcache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pstcache_enumerated = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@g_pstcache_fd = common dso_local global i32* null, align 8
@g_bitmap_cache = common dso_local global i64 0, align 8
@g_bitmap_cache_persist_enable = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to get/make cache directory!\0A\00", align 1
@g_server_depth = common dso_local global i32 0, align 4
@g_pstcache_Bpp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cache/pstcache_%d_%d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"persistent bitmap cache file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Persistent bitmap caching is disabled. (The file is already in use)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstcache_init(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @g_pstcache_enumerated, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @True, align 4
  store i32 %9, i32* %2, align 4
  br label %58

10:                                               ; preds = %1
  %11 = load i32*, i32** @g_pstcache_fd, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* @g_bitmap_cache, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i64, i64* @g_bitmap_cache_persist_enable, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* @False, align 4
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %16
  %22 = call i32 (...) @rd_pstcache_mkdir()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @False, align 4
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %21
  %28 = load i32, i32* @g_server_depth, align 4
  %29 = add nsw i32 %28, 7
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* @g_pstcache_Bpp, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @g_pstcache_Bpp, align 4
  %34 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %36 = call i32 @DEBUG(i8* %35)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %38 = call i32 @rd_open_file(i8* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @False, align 4
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rd_lock_file(i32 %44, i32 0, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = call i32 @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rd_close_file(i32 %49)
  %51 = load i32, i32* @False, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** @g_pstcache_fd, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @True, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %47, %41, %24, %19, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @rd_pstcache_mkdir(...) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32) #1

declare dso_local i32 @rd_open_file(i8*) #1

declare dso_local i32 @rd_lock_file(i32, i32, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @rd_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
