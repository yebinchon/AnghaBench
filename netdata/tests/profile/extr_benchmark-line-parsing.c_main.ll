; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str.33 = private unnamed_addr constant [42 x i8] c"value %lu: %llu %llu %llu %llu %llu %llu\0A\00", align 1
@values1 = common dso_local global i64* null, align 8
@values2 = common dso_local global i64* null, align 8
@values3 = common dso_local global i64* null, align 8
@values4 = common dso_local global i64* null, align 8
@values5 = common dso_local global i64* null, align 8
@values6 = common dso_local global i64* null, align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"\0A\0ARESULTS\0A\00", align 1
@.str.35 = private unnamed_addr constant [592 x i8] c"test1() in %lu usecs: if-else-if-else-if, simple strcmp() with system strtoull().\0Atest2() in %lu usecs: inline simple_hash() if-else-if-else-if, with system strtoull().\0Atest3() in %lu usecs: statement expression simple_hash(), system strtoull().\0Atest4() in %lu usecs: inline simple_hash(), if-continue checks, system strtoull().\0Atest5() in %lu usecs: inline simple_hash(), if-else-if-else-if, custom strtoull() (netdata default prior to ARL).\0Atest6() in %lu usecs: adaptive re-sortable list, system strtoull() (wow!)\0Atest7() in %lu usecs: adaptive re-sortable list, custom strtoull() (wow!)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = call i8* @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** @cache_hash, align 8
  %11 = call i8* @simple_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** @rss_hash, align 8
  %12 = call i8* @simple_hash(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** @rss_huge_hash, align 8
  %13 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %13, i8** @mapped_file_hash, align 8
  %14 = call i8* @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** @writeback_hash, align 8
  %15 = call i8* @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %15, i8** @dirty_hash, align 8
  %16 = call i8* @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %16, i8** @swap_hash, align 8
  %17 = call i8* @simple_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %17, i8** @pgpgin_hash, align 8
  %18 = call i8* @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i8* %18, i8** @pgpgout_hash, align 8
  %19 = call i8* @simple_hash(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i8* %19, i8** @pgfault_hash, align 8
  %20 = call i8* @simple_hash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i8* %20, i8** @pgmajfault_hash, align 8
  %21 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i8* %21, i8** @inactive_anon_hash, align 8
  %22 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i8* %22, i8** @active_anon_hash, align 8
  %23 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i8* %23, i8** @inactive_file_hash, align 8
  %24 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i8* %24, i8** @active_file_hash, align 8
  %25 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i8* %25, i8** @unevictable_hash, align 8
  %26 = call i8* @simple_hash(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  store i8* %26, i8** @hierarchical_memory_limit_hash, align 8
  %27 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  store i8* %27, i8** @total_cache_hash, align 8
  %28 = call i8* @simple_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  store i8* %28, i8** @total_rss_hash, align 8
  %29 = call i8* @simple_hash(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i8* %29, i8** @total_rss_huge_hash, align 8
  %30 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  store i8* %30, i8** @total_mapped_file_hash, align 8
  %31 = call i8* @simple_hash(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  store i8* %31, i8** @total_writeback_hash, align 8
  %32 = call i8* @simple_hash(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i8* %32, i8** @total_dirty_hash, align 8
  %33 = call i8* @simple_hash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i8* %33, i8** @total_swap_hash, align 8
  %34 = call i8* @simple_hash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  store i8* %34, i8** @total_pgpgin_hash, align 8
  %35 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  store i8* %35, i8** @total_pgpgout_hash, align 8
  %36 = call i8* @simple_hash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  store i8* %36, i8** @total_pgfault_hash, align 8
  %37 = call i8* @simple_hash(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  store i8* %37, i8** @total_pgmajfault_hash, align 8
  %38 = call i8* @simple_hash(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  store i8* %38, i8** @total_inactive_anon_hash, align 8
  %39 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  store i8* %39, i8** @total_active_anon_hash, align 8
  %40 = call i8* @simple_hash(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  store i8* %40, i8** @total_inactive_file_hash, align 8
  %41 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  store i8* %41, i8** @total_active_file_hash, align 8
  %42 = call i8* @simple_hash(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  store i8* %42, i8** @total_unevictable_hash, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 1000000, i64* %9, align 8
  %43 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %44

44:                                               ; preds = %50, %0
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = call i32 (...) @test1()
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %1, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %1, align 8
  br label %44

53:                                               ; preds = %44
  %54 = call i64 (...) @end_clock()
  store i64 %54, i64* %2, align 8
  %55 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %56

56:                                               ; preds = %62, %53
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = call i32 (...) @test1()
  br label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %1, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %1, align 8
  br label %56

65:                                               ; preds = %56
  %66 = call i64 (...) @end_clock()
  store i64 %66, i64* %2, align 8
  %67 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %68

68:                                               ; preds = %74, %65
  %69 = load i64, i64* %1, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = call i32 (...) @test2()
  br label %74

74:                                               ; preds = %72
  %75 = load i64, i64* %1, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %1, align 8
  br label %68

77:                                               ; preds = %68
  %78 = call i64 (...) @end_clock()
  store i64 %78, i64* %3, align 8
  %79 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %80

80:                                               ; preds = %86, %77
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = call i32 (...) @test3()
  br label %86

86:                                               ; preds = %84
  %87 = load i64, i64* %1, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %1, align 8
  br label %80

89:                                               ; preds = %80
  %90 = call i64 (...) @end_clock()
  store i64 %90, i64* %4, align 8
  %91 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %92

92:                                               ; preds = %98, %89
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = call i32 (...) @test4()
  br label %98

98:                                               ; preds = %96
  %99 = load i64, i64* %1, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %1, align 8
  br label %92

101:                                              ; preds = %92
  %102 = call i64 (...) @end_clock()
  store i64 %102, i64* %5, align 8
  %103 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %104

104:                                              ; preds = %110, %101
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = call i32 (...) @test5()
  br label %110

110:                                              ; preds = %108
  %111 = load i64, i64* %1, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %1, align 8
  br label %104

113:                                              ; preds = %104
  %114 = call i64 (...) @end_clock()
  store i64 %114, i64* %6, align 8
  %115 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %116

116:                                              ; preds = %122, %113
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ule i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = call i32 (...) @test6()
  br label %122

122:                                              ; preds = %120
  %123 = load i64, i64* %1, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %1, align 8
  br label %116

125:                                              ; preds = %116
  %126 = call i64 (...) @end_clock()
  store i64 %126, i64* %7, align 8
  %127 = call i32 (...) @begin_clock()
  store i64 0, i64* %1, align 8
  br label %128

128:                                              ; preds = %134, %125
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* %9, align 8
  %131 = icmp ule i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call i32 (...) @test7()
  br label %134

134:                                              ; preds = %132
  %135 = load i64, i64* %1, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %1, align 8
  br label %128

137:                                              ; preds = %128
  %138 = call i64 (...) @end_clock()
  store i64 %138, i64* %8, align 8
  store i64 0, i64* %1, align 8
  br label %139

139:                                              ; preds = %169, %137
  %140 = load i64, i64* %1, align 8
  %141 = icmp ult i64 %140, 11
  br i1 %141, label %142, label %172

142:                                              ; preds = %139
  %143 = load i64, i64* %1, align 8
  %144 = load i64*, i64** @values1, align 8
  %145 = load i64, i64* %1, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** @values2, align 8
  %149 = load i64, i64* %1, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** @values3, align 8
  %153 = load i64, i64* %1, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** @values4, align 8
  %157 = load i64, i64* %1, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** @values5, align 8
  %161 = load i64, i64* %1, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** @values6, align 8
  %165 = load i64, i64* %1, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i64 0, i64 0), i64 %143, i64 %147, i64 %151, i64 %155, i64 %159, i64 %163, i64 %167)
  br label %169

169:                                              ; preds = %142
  %170 = load i64, i64* %1, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %1, align 8
  br label %139

172:                                              ; preds = %139
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0))
  %174 = load i64, i64* %2, align 8
  %175 = load i64, i64* %3, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* %8, align 8
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([592 x i8], [592 x i8]* @.str.35, i64 0, i64 0), i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  ret void
}

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i32 @begin_clock(...) #1

declare dso_local i32 @test1(...) #1

declare dso_local i64 @end_clock(...) #1

declare dso_local i32 @test2(...) #1

declare dso_local i32 @test3(...) #1

declare dso_local i32 @test4(...) #1

declare dso_local i32 @test5(...) #1

declare dso_local i32 @test6(...) #1

declare dso_local i32 @test7(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
