; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@pairs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@cache_hash = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@rss_hash = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@rss_huge_hash = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@mapped_file_hash = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@writeback_hash = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@dirty_hash = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@swap_hash = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@pgpgin_hash = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@pgpgout_hash = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@pgfault_hash = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@pgmajfault_hash = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"inactive_anon\00", align 1
@inactive_anon_hash = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"active_anon\00", align 1
@active_anon_hash = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"inactive_file\00", align 1
@inactive_file_hash = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"active_file\00", align 1
@active_file_hash = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"unevictable\00", align 1
@unevictable_hash = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"hierarchical_memory_limit\00", align 1
@hierarchical_memory_limit_hash = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"total_cache\00", align 1
@total_cache_hash = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"total_rss\00", align 1
@total_rss_hash = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"total_rss_huge\00", align 1
@total_rss_huge_hash = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"total_mapped_file\00", align 1
@total_mapped_file_hash = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"total_writeback\00", align 1
@total_writeback_hash = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"total_dirty\00", align 1
@total_dirty_hash = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"total_swap\00", align 1
@total_swap_hash = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [13 x i8] c"total_pgpgin\00", align 1
@total_pgpgin_hash = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [14 x i8] c"total_pgpgout\00", align 1
@total_pgpgout_hash = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"total_pgfault\00", align 1
@total_pgfault_hash = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"total_pgmajfault\00", align 1
@total_pgmajfault_hash = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [20 x i8] c"total_inactive_anon\00", align 1
@total_inactive_anon_hash = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"total_active_anon\00", align 1
@total_active_anon_hash = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c"total_inactive_file\00", align 1
@total_inactive_file_hash = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"total_active_file\00", align 1
@total_active_file_hash = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"total_unevictable\00", align 1
@total_unevictable_hash = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"value %lu: %llu %llu %llu %llu %llu %llu %llu %llu %llu\0A\00", align 1
@values1 = common dso_local global i32* null, align 8
@values2 = common dso_local global i32* null, align 8
@values3 = common dso_local global i32* null, align 8
@values4 = common dso_local global i32* null, align 8
@values5 = common dso_local global i32* null, align 8
@values6 = common dso_local global i32* null, align 8
@values7 = common dso_local global i32* null, align 8
@values8 = common dso_local global i32* null, align 8
@values9 = common dso_local global i32* null, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"\0A\0ARESULTS\0A\00", align 1
@.str.39 = private unnamed_addr constant [628 x i8] c"test1() [1] in %lu usecs: simple system strcmp().\0Atest2() [4] in %lu usecs: inline simple_hash() with system strtoull().\0Atest3() [5] in %lu usecs: statement expression simple_hash(), system strtoull().\0Atest4() [6] in %lu usecs: inline simple_hash(), if-continue checks.\0Atest5() [7] in %lu usecs: inline simple_hash(), if-else-if-else-if (netdata default prior to ARL).\0Atest6() [8] in %lu usecs: adaptive re-sortable array with strtoull() (wow!)\0Atest7() [9] in %lu usecs: adaptive re-sortable array with str2ull() (wow!)\0Atest8() [2] in %lu usecs: nested loop with strtoull()\0Atest9() [3] in %lu usecs: nested loop with str2ull()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %35, %0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @simple_hash(i8* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %14

38:                                               ; preds = %14
  %39 = call i8* @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** @cache_hash, align 8
  %40 = call i8* @simple_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** @rss_hash, align 8
  %41 = call i8* @simple_hash(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** @rss_huge_hash, align 8
  %42 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** @mapped_file_hash, align 8
  %43 = call i8* @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** @writeback_hash, align 8
  %44 = call i8* @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %44, i8** @dirty_hash, align 8
  %45 = call i8* @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %45, i8** @swap_hash, align 8
  %46 = call i8* @simple_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %46, i8** @pgpgin_hash, align 8
  %47 = call i8* @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i8* %47, i8** @pgpgout_hash, align 8
  %48 = call i8* @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i8* %48, i8** @pgfault_hash, align 8
  %49 = call i8* @simple_hash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i8* %49, i8** @pgmajfault_hash, align 8
  %50 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i8* %50, i8** @inactive_anon_hash, align 8
  %51 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i8* %51, i8** @active_anon_hash, align 8
  %52 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i8* %52, i8** @inactive_file_hash, align 8
  %53 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i8* %53, i8** @active_file_hash, align 8
  %54 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i8* %54, i8** @unevictable_hash, align 8
  %55 = call i8* @simple_hash(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  store i8* %55, i8** @hierarchical_memory_limit_hash, align 8
  %56 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  store i8* %56, i8** @total_cache_hash, align 8
  %57 = call i8* @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  store i8* %57, i8** @total_rss_hash, align 8
  %58 = call i8* @simple_hash(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i8* %58, i8** @total_rss_huge_hash, align 8
  %59 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  store i8* %59, i8** @total_mapped_file_hash, align 8
  %60 = call i8* @simple_hash(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  store i8* %60, i8** @total_writeback_hash, align 8
  %61 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i8* %61, i8** @total_dirty_hash, align 8
  %62 = call i8* @simple_hash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i8* %62, i8** @total_swap_hash, align 8
  %63 = call i8* @simple_hash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  store i8* %63, i8** @total_pgpgin_hash, align 8
  %64 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  store i8* %64, i8** @total_pgpgout_hash, align 8
  %65 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  store i8* %65, i8** @total_pgfault_hash, align 8
  %66 = call i8* @simple_hash(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  store i8* %66, i8** @total_pgmajfault_hash, align 8
  %67 = call i8* @simple_hash(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  store i8* %67, i8** @total_inactive_anon_hash, align 8
  %68 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  store i8* %68, i8** @total_active_anon_hash, align 8
  %69 = call i8* @simple_hash(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  store i8* %69, i8** @total_inactive_file_hash, align 8
  %70 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  store i8* %70, i8** @total_active_file_hash, align 8
  %71 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  store i8* %71, i8** @total_unevictable_hash, align 8
  %72 = call i32 @simple_hash2(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %74 = call i32 @strtoull(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i32* null, i32 0)
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 1000000, i64* %13, align 8
  %75 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %76

76:                                               ; preds = %82, %38
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i32 (...) @test1()
  br label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %3, align 8
  br label %76

85:                                               ; preds = %76
  %86 = call i64 (...) @end_clock()
  store i64 %86, i64* %4, align 8
  %87 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %88

88:                                               ; preds = %94, %85
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = call i32 (...) @test2()
  br label %94

94:                                               ; preds = %92
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %3, align 8
  br label %88

97:                                               ; preds = %88
  %98 = call i64 (...) @end_clock()
  store i64 %98, i64* %5, align 8
  %99 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %100

100:                                              ; preds = %106, %97
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp ule i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = call i32 (...) @test3()
  br label %106

106:                                              ; preds = %104
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  br label %100

109:                                              ; preds = %100
  %110 = call i64 (...) @end_clock()
  store i64 %110, i64* %6, align 8
  %111 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %112

112:                                              ; preds = %118, %109
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = call i32 (...) @test4()
  br label %118

118:                                              ; preds = %116
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %3, align 8
  br label %112

121:                                              ; preds = %112
  %122 = call i64 (...) @end_clock()
  store i64 %122, i64* %7, align 8
  %123 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %124

124:                                              ; preds = %130, %121
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp ule i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = call i32 (...) @test5()
  br label %130

130:                                              ; preds = %128
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %124

133:                                              ; preds = %124
  %134 = call i64 (...) @end_clock()
  store i64 %134, i64* %8, align 8
  %135 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %136

136:                                              ; preds = %142, %133
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* %13, align 8
  %139 = icmp ule i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = call i32 (...) @test6()
  br label %142

142:                                              ; preds = %140
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %3, align 8
  br label %136

145:                                              ; preds = %136
  %146 = call i64 (...) @end_clock()
  store i64 %146, i64* %9, align 8
  %147 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %148

148:                                              ; preds = %154, %145
  %149 = load i64, i64* %3, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp ule i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = call i32 (...) @test7()
  br label %154

154:                                              ; preds = %152
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %3, align 8
  br label %148

157:                                              ; preds = %148
  %158 = call i64 (...) @end_clock()
  store i64 %158, i64* %10, align 8
  %159 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %160

160:                                              ; preds = %166, %157
  %161 = load i64, i64* %3, align 8
  %162 = load i64, i64* %13, align 8
  %163 = icmp ule i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = call i32 (...) @test8()
  br label %166

166:                                              ; preds = %164
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %3, align 8
  br label %160

169:                                              ; preds = %160
  %170 = call i64 (...) @end_clock()
  store i64 %170, i64* %11, align 8
  %171 = call i32 (...) @begin_clock()
  store i64 0, i64* %3, align 8
  br label %172

172:                                              ; preds = %178, %169
  %173 = load i64, i64* %3, align 8
  %174 = load i64, i64* %13, align 8
  %175 = icmp ule i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = call i32 (...) @test9()
  br label %178

178:                                              ; preds = %176
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %3, align 8
  br label %172

181:                                              ; preds = %172
  %182 = call i64 (...) @end_clock()
  store i64 %182, i64* %12, align 8
  store i64 0, i64* %3, align 8
  br label %183

183:                                              ; preds = %225, %181
  %184 = load i64, i64* %3, align 8
  %185 = icmp ult i64 %184, 11
  br i1 %185, label %186, label %228

186:                                              ; preds = %183
  %187 = load i64, i64* %3, align 8
  %188 = load i32*, i32** @values1, align 8
  %189 = load i64, i64* %3, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** @values2, align 8
  %193 = load i64, i64* %3, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** @values3, align 8
  %197 = load i64, i64* %3, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** @values4, align 8
  %201 = load i64, i64* %3, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** @values5, align 8
  %205 = load i64, i64* %3, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** @values6, align 8
  %209 = load i64, i64* %3, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** @values7, align 8
  %213 = load i64, i64* %3, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** @values8, align 8
  %217 = load i64, i64* %3, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** @values9, align 8
  %221 = load i64, i64* %3, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0), i64 %187, i32 %191, i32 %195, i32 %199, i32 %203, i32 %207, i32 %211, i32 %215, i32 %219, i32 %223)
  br label %225

225:                                              ; preds = %186
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %3, align 8
  br label %183

228:                                              ; preds = %183
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %230 = load i64, i64* %4, align 8
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %10, align 8
  %237 = load i64, i64* %11, align 8
  %238 = load i64, i64* %12, align 8
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([628 x i8], [628 x i8]* @.str.39, i64 0, i64 0), i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238)
  ret i32 0
}

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i32 @simple_hash2(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @begin_clock(...) #1

declare dso_local i32 @test1(...) #1

declare dso_local i64 @end_clock(...) #1

declare dso_local i32 @test2(...) #1

declare dso_local i32 @test3(...) #1

declare dso_local i32 @test4(...) #1

declare dso_local i32 @test5(...) #1

declare dso_local i32 @test6(...) #1

declare dso_local i32 @test7(...) #1

declare dso_local i32 @test8(...) #1

declare dso_local i32 @test9(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
