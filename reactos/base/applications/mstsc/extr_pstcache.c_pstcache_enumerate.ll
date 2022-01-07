; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_pstcache.c_pstcache_enumerate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_pstcache.c_pstcache_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@g_bitmap_cache = common dso_local global i64 0, align 8
@g_bitmap_cache_persist_enable = common dso_local global i64 0, align 8
@g_pstcache_enumerated = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Persistent bitmap cache enumeration... \00", align 1
@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@g_pstcache_fd = common dso_local global i32* null, align 8
@g_pstcache_Bpp = common dso_local global i32 0, align 4
@MAX_CELL_SIZE = common dso_local global i32 0, align 4
@zero_key = common dso_local global i32 0, align 4
@g_bitmap_cache_precache = common dso_local global i64 0, align 8
@g_server_depth = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d cached bitmaps.\0A\00", align 1
@True = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstcache_enumerate(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2560 x i32], align 16
  %10 = alloca [2560 x i64], align 16
  %11 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i64, i64* @g_bitmap_cache, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i64, i64* @g_bitmap_cache_persist_enable, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @IS_PERSISTENT(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14, %2
  store i32 0, i32* %3, align 4
  br label %142

22:                                               ; preds = %17
  %23 = load i64, i64* @g_pstcache_enumerated, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %142

26:                                               ; preds = %22
  %27 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %128, %26
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %131

32:                                               ; preds = %28
  %33 = load i32*, i32** @g_pstcache_fd, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* @g_pstcache_Bpp, align 4
  %41 = load i32, i32* @MAX_CELL_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 16
  %45 = mul i64 %39, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @rd_lseek_file(i32 %37, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @rd_read_file(i32 %48, %struct.TYPE_3__* %11, i32 16)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %131

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @zero_key, align 4
  %56 = call i64 @memcmp(i32 %54, i32 %55, i32 4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memcpy(i32 %63, i32 %65, i32 4)
  %67 = load i64, i64* @g_bitmap_cache_precache, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* @g_server_depth, align 4
  %75 = icmp sgt i32 %74, 8
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @pstcache_load_bitmap(i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73, %69, %58
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %113, %80
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2560 x i64], [2560 x i64]* %10, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %87, %92
  br label %94

94:                                               ; preds = %85, %82
  %95 = phi i1 [ false, %82 ], [ %93, %85 ]
  br i1 %95, label %96, label %116

96:                                               ; preds = %94
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2560 x i32], [2560 x i32]* %9, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2560 x i32], [2560 x i32]* %9, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2560 x i64], [2560 x i64]* %10, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2560 x i64], [2560 x i64]* %10, i64 0, i64 %111
  store i64 %109, i64* %112, align 8
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %7, align 4
  br label %82

116:                                              ; preds = %94
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2560 x i32], [2560 x i32]* %9, i64 0, i64 %119
  store i32 %117, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2560 x i64], [2560 x i64]* %10, i64 0, i64 %124
  store i64 %122, i64* %125, align 8
  br label %127

126:                                              ; preds = %52
  br label %131

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %28

131:                                              ; preds = %126, %51, %28
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @DEBUG_RDP5(i8* %134)
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds [2560 x i32], [2560 x i32]* %9, i64 0, i64 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @cache_rebuild_bmpcache_linked_list(i64 %136, i32* %137, i32 %138)
  %140 = load i64, i64* @True, align 8
  store i64 %140, i64* @g_pstcache_enumerated, align 8
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %131, %25, %21
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @rd_lseek_file(i32, i32) #1

declare dso_local i64 @rd_read_file(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pstcache_load_bitmap(i64, i32) #1

declare dso_local i32 @cache_rebuild_bmpcache_linked_list(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
