; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_memory.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory = type { i64, i64, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@cgroup_read_memory.ff = internal global i32* null, align 8
@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CGROUP: file '%s' should have 1+ lines.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cgroup/memory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"total_cache\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"total_rss\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"total_rss_huge\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"total_mapped_file\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"total_writeback\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"total_dirty\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"total_swap\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"total_pgpgin\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"total_pgpgout\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"total_pgfault\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"total_pgmajfault\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"kernel_stack\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"anon_thp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"file_writeback\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"file_dirty\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@ARL_ENTRY_FLAG_FOUND = common dso_local global i32 0, align 4
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@cgroup_recheck_zero_mem_detailed_every_iterations = common dso_local global i64 0, align 8
@cgroup_recheck_zero_mem_failcnt_every_iterations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memory*, i8)* @cgroup_read_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_read_memory(%struct.memory* %0, i8 signext %1) #0 {
  %3 = alloca %struct.memory*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.memory* %0, %struct.memory** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.memory*, %struct.memory** %3, align 8
  %8 = getelementptr inbounds %struct.memory, %struct.memory* %7, i32 0, i32 37
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %425

12:                                               ; preds = %2
  %13 = load %struct.memory*, %struct.memory** %3, align 8
  %14 = getelementptr inbounds %struct.memory, %struct.memory* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.memory*, %struct.memory** %3, align 8
  %20 = getelementptr inbounds %struct.memory, %struct.memory* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i1 [ false, %12 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.memory*, %struct.memory** %3, align 8
  %30 = getelementptr inbounds %struct.memory, %struct.memory* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  br label %426

33:                                               ; preds = %23
  %34 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %35 = load %struct.memory*, %struct.memory** %3, align 8
  %36 = getelementptr inbounds %struct.memory, %struct.memory* %35, i32 0, i32 37
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %39 = call i32* @procfile_reopen(i32* %34, i32 %37, i32* null, i32 %38)
  store i32* %39, i32** @cgroup_read_memory.ff, align 8
  %40 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.memory*, %struct.memory** %3, align 8
  %48 = getelementptr inbounds %struct.memory, %struct.memory* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %426

49:                                               ; preds = %33
  %50 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %51 = call i32* @procfile_readall(i32* %50)
  store i32* %51, i32** @cgroup_read_memory.ff, align 8
  %52 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.memory*, %struct.memory** %3, align 8
  %60 = getelementptr inbounds %struct.memory, %struct.memory* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %426

61:                                               ; preds = %49
  %62 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %63 = call i64 @procfile_lines(i32* %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.memory*, %struct.memory** %3, align 8
  %71 = getelementptr inbounds %struct.memory, %struct.memory* %70, i32 0, i32 37
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.memory*, %struct.memory** %3, align 8
  %75 = getelementptr inbounds %struct.memory, %struct.memory* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %426

76:                                               ; preds = %61
  %77 = load %struct.memory*, %struct.memory** %3, align 8
  %78 = getelementptr inbounds %struct.memory, %struct.memory* %77, i32 0, i32 36
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %233

85:                                               ; preds = %76
  %86 = load i8, i8* %4, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %165

89:                                               ; preds = %85
  %90 = call i8* @arl_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 60)
  %91 = load %struct.memory*, %struct.memory** %3, align 8
  %92 = getelementptr inbounds %struct.memory, %struct.memory* %91, i32 0, i32 36
  store i8* %90, i8** %92, align 8
  %93 = load %struct.memory*, %struct.memory** %3, align 8
  %94 = getelementptr inbounds %struct.memory, %struct.memory* %93, i32 0, i32 36
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.memory*, %struct.memory** %3, align 8
  %97 = getelementptr inbounds %struct.memory, %struct.memory* %96, i32 0, i32 33
  %98 = call i8* @arl_expect(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %97)
  %99 = load %struct.memory*, %struct.memory** %3, align 8
  %100 = getelementptr inbounds %struct.memory, %struct.memory* %99, i32 0, i32 36
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.memory*, %struct.memory** %3, align 8
  %103 = getelementptr inbounds %struct.memory, %struct.memory* %102, i32 0, i32 32
  %104 = call i8* @arl_expect(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64* %103)
  %105 = load %struct.memory*, %struct.memory** %3, align 8
  %106 = getelementptr inbounds %struct.memory, %struct.memory* %105, i32 0, i32 36
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.memory*, %struct.memory** %3, align 8
  %109 = getelementptr inbounds %struct.memory, %struct.memory* %108, i32 0, i32 31
  %110 = call i8* @arl_expect(i8* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %109)
  %111 = load %struct.memory*, %struct.memory** %3, align 8
  %112 = getelementptr inbounds %struct.memory, %struct.memory* %111, i32 0, i32 36
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.memory*, %struct.memory** %3, align 8
  %115 = getelementptr inbounds %struct.memory, %struct.memory* %114, i32 0, i32 30
  %116 = call i8* @arl_expect(i8* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64* %115)
  %117 = load %struct.memory*, %struct.memory** %3, align 8
  %118 = getelementptr inbounds %struct.memory, %struct.memory* %117, i32 0, i32 36
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.memory*, %struct.memory** %3, align 8
  %121 = getelementptr inbounds %struct.memory, %struct.memory* %120, i32 0, i32 21
  %122 = call i8* @arl_expect(i8* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* %121)
  %123 = load %struct.memory*, %struct.memory** %3, align 8
  %124 = getelementptr inbounds %struct.memory, %struct.memory* %123, i32 0, i32 36
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.memory*, %struct.memory** %3, align 8
  %127 = getelementptr inbounds %struct.memory, %struct.memory* %126, i32 0, i32 25
  %128 = call i8* @arl_expect(i8* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64* %127)
  %129 = bitcast i8* %128 to %struct.TYPE_3__*
  %130 = load %struct.memory*, %struct.memory** %3, align 8
  %131 = getelementptr inbounds %struct.memory, %struct.memory* %130, i32 0, i32 35
  store %struct.TYPE_3__* %129, %struct.TYPE_3__** %131, align 8
  %132 = load %struct.memory*, %struct.memory** %3, align 8
  %133 = getelementptr inbounds %struct.memory, %struct.memory* %132, i32 0, i32 36
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.memory*, %struct.memory** %3, align 8
  %136 = getelementptr inbounds %struct.memory, %struct.memory* %135, i32 0, i32 29
  %137 = call i8* @arl_expect(i8* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64* %136)
  %138 = bitcast i8* %137 to %struct.TYPE_4__*
  %139 = load %struct.memory*, %struct.memory** %3, align 8
  %140 = getelementptr inbounds %struct.memory, %struct.memory* %139, i32 0, i32 34
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %140, align 8
  %141 = load %struct.memory*, %struct.memory** %3, align 8
  %142 = getelementptr inbounds %struct.memory, %struct.memory* %141, i32 0, i32 36
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.memory*, %struct.memory** %3, align 8
  %145 = getelementptr inbounds %struct.memory, %struct.memory* %144, i32 0, i32 28
  %146 = call i8* @arl_expect(i8* %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64* %145)
  %147 = load %struct.memory*, %struct.memory** %3, align 8
  %148 = getelementptr inbounds %struct.memory, %struct.memory* %147, i32 0, i32 36
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.memory*, %struct.memory** %3, align 8
  %151 = getelementptr inbounds %struct.memory, %struct.memory* %150, i32 0, i32 27
  %152 = call i8* @arl_expect(i8* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64* %151)
  %153 = load %struct.memory*, %struct.memory** %3, align 8
  %154 = getelementptr inbounds %struct.memory, %struct.memory* %153, i32 0, i32 36
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.memory*, %struct.memory** %3, align 8
  %157 = getelementptr inbounds %struct.memory, %struct.memory* %156, i32 0, i32 19
  %158 = call i8* @arl_expect(i8* %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64* %157)
  %159 = load %struct.memory*, %struct.memory** %3, align 8
  %160 = getelementptr inbounds %struct.memory, %struct.memory* %159, i32 0, i32 36
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.memory*, %struct.memory** %3, align 8
  %163 = getelementptr inbounds %struct.memory, %struct.memory* %162, i32 0, i32 18
  %164 = call i8* @arl_expect(i8* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i64* %163)
  br label %232

165:                                              ; preds = %85
  %166 = call i8* @arl_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 60)
  %167 = load %struct.memory*, %struct.memory** %3, align 8
  %168 = getelementptr inbounds %struct.memory, %struct.memory* %167, i32 0, i32 36
  store i8* %166, i8** %168, align 8
  %169 = load %struct.memory*, %struct.memory** %3, align 8
  %170 = getelementptr inbounds %struct.memory, %struct.memory* %169, i32 0, i32 36
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.memory*, %struct.memory** %3, align 8
  %173 = getelementptr inbounds %struct.memory, %struct.memory* %172, i32 0, i32 26
  %174 = call i8* @arl_expect(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64* %173)
  %175 = load %struct.memory*, %struct.memory** %3, align 8
  %176 = getelementptr inbounds %struct.memory, %struct.memory* %175, i32 0, i32 36
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.memory*, %struct.memory** %3, align 8
  %179 = getelementptr inbounds %struct.memory, %struct.memory* %178, i32 0, i32 24
  %180 = call i8* @arl_expect(i8* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64* %179)
  %181 = load %struct.memory*, %struct.memory** %3, align 8
  %182 = getelementptr inbounds %struct.memory, %struct.memory* %181, i32 0, i32 36
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.memory*, %struct.memory** %3, align 8
  %185 = getelementptr inbounds %struct.memory, %struct.memory* %184, i32 0, i32 23
  %186 = call i8* @arl_expect(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64* %185)
  %187 = load %struct.memory*, %struct.memory** %3, align 8
  %188 = getelementptr inbounds %struct.memory, %struct.memory* %187, i32 0, i32 36
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.memory*, %struct.memory** %3, align 8
  %191 = getelementptr inbounds %struct.memory, %struct.memory* %190, i32 0, i32 22
  %192 = call i8* @arl_expect(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64* %191)
  %193 = load %struct.memory*, %struct.memory** %3, align 8
  %194 = getelementptr inbounds %struct.memory, %struct.memory* %193, i32 0, i32 36
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.memory*, %struct.memory** %3, align 8
  %197 = getelementptr inbounds %struct.memory, %struct.memory* %196, i32 0, i32 20
  %198 = call i8* @arl_expect(i8* %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64* %197)
  %199 = load %struct.memory*, %struct.memory** %3, align 8
  %200 = getelementptr inbounds %struct.memory, %struct.memory* %199, i32 0, i32 36
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.memory*, %struct.memory** %3, align 8
  %203 = getelementptr inbounds %struct.memory, %struct.memory* %202, i32 0, i32 30
  %204 = call i8* @arl_expect(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64* %203)
  %205 = load %struct.memory*, %struct.memory** %3, align 8
  %206 = getelementptr inbounds %struct.memory, %struct.memory* %205, i32 0, i32 36
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.memory*, %struct.memory** %3, align 8
  %209 = getelementptr inbounds %struct.memory, %struct.memory* %208, i32 0, i32 21
  %210 = call i8* @arl_expect(i8* %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i64* %209)
  %211 = load %struct.memory*, %struct.memory** %3, align 8
  %212 = getelementptr inbounds %struct.memory, %struct.memory* %211, i32 0, i32 36
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.memory*, %struct.memory** %3, align 8
  %215 = getelementptr inbounds %struct.memory, %struct.memory* %214, i32 0, i32 25
  %216 = call i8* @arl_expect(i8* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64* %215)
  %217 = bitcast i8* %216 to %struct.TYPE_3__*
  %218 = load %struct.memory*, %struct.memory** %3, align 8
  %219 = getelementptr inbounds %struct.memory, %struct.memory* %218, i32 0, i32 35
  store %struct.TYPE_3__* %217, %struct.TYPE_3__** %219, align 8
  %220 = load %struct.memory*, %struct.memory** %3, align 8
  %221 = getelementptr inbounds %struct.memory, %struct.memory* %220, i32 0, i32 36
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.memory*, %struct.memory** %3, align 8
  %224 = getelementptr inbounds %struct.memory, %struct.memory* %223, i32 0, i32 19
  %225 = call i8* @arl_expect(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64* %224)
  %226 = load %struct.memory*, %struct.memory** %3, align 8
  %227 = getelementptr inbounds %struct.memory, %struct.memory* %226, i32 0, i32 36
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.memory*, %struct.memory** %3, align 8
  %230 = getelementptr inbounds %struct.memory, %struct.memory* %229, i32 0, i32 18
  %231 = call i8* @arl_expect(i8* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64* %230)
  br label %232

232:                                              ; preds = %165, %89
  br label %233

233:                                              ; preds = %232, %76
  %234 = load %struct.memory*, %struct.memory** %3, align 8
  %235 = getelementptr inbounds %struct.memory, %struct.memory* %234, i32 0, i32 36
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @arl_begin(i8* %236)
  store i64 0, i64* %5, align 8
  br label %238

238:                                              ; preds = %256, %233
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* %6, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load %struct.memory*, %struct.memory** %3, align 8
  %244 = getelementptr inbounds %struct.memory, %struct.memory* %243, i32 0, i32 36
  %245 = load i8*, i8** %244, align 8
  %246 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %247 = load i64, i64* %5, align 8
  %248 = call i32 @procfile_lineword(i32* %246, i64 %247, i32 0)
  %249 = load i32*, i32** @cgroup_read_memory.ff, align 8
  %250 = load i64, i64* %5, align 8
  %251 = call i32 @procfile_lineword(i32* %249, i64 %250, i32 1)
  %252 = call i64 @arl_check(i8* %245, i32 %248, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  br label %259

255:                                              ; preds = %242
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %5, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %5, align 8
  br label %238

259:                                              ; preds = %254, %238
  %260 = load %struct.memory*, %struct.memory** %3, align 8
  %261 = getelementptr inbounds %struct.memory, %struct.memory* %260, i32 0, i32 35
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %266 = and i32 %264, %265
  %267 = call i64 @unlikely(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %259
  %270 = load %struct.memory*, %struct.memory** %3, align 8
  %271 = getelementptr inbounds %struct.memory, %struct.memory* %270, i32 0, i32 3
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %259
  %273 = load i8, i8* %4, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load %struct.memory*, %struct.memory** %3, align 8
  %278 = getelementptr inbounds %struct.memory, %struct.memory* %277, i32 0, i32 34
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br label %285

285:                                              ; preds = %276, %272
  %286 = phi i1 [ false, %272 ], [ %284, %276 ]
  %287 = zext i1 %286 to i32
  %288 = call i64 @unlikely(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load %struct.memory*, %struct.memory** %3, align 8
  %292 = getelementptr inbounds %struct.memory, %struct.memory* %291, i32 0, i32 4
  store i32 1, i32* %292, align 8
  br label %293

293:                                              ; preds = %290, %285
  %294 = load %struct.memory*, %struct.memory** %3, align 8
  %295 = getelementptr inbounds %struct.memory, %struct.memory* %294, i32 0, i32 2
  store i32 1, i32* %295, align 8
  %296 = load %struct.memory*, %struct.memory** %3, align 8
  %297 = getelementptr inbounds %struct.memory, %struct.memory* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i64 @unlikely(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %424

304:                                              ; preds = %293
  %305 = load i8, i8* %4, align 1
  %306 = icmp ne i8 %305, 0
  br i1 %306, label %362, label %307

307:                                              ; preds = %304
  %308 = load %struct.memory*, %struct.memory** %3, align 8
  %309 = getelementptr inbounds %struct.memory, %struct.memory* %308, i32 0, i32 33
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %415, label %312

312:                                              ; preds = %307
  %313 = load %struct.memory*, %struct.memory** %3, align 8
  %314 = getelementptr inbounds %struct.memory, %struct.memory* %313, i32 0, i32 25
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %415, label %317

317:                                              ; preds = %312
  %318 = load %struct.memory*, %struct.memory** %3, align 8
  %319 = getelementptr inbounds %struct.memory, %struct.memory* %318, i32 0, i32 32
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %415, label %322

322:                                              ; preds = %317
  %323 = load %struct.memory*, %struct.memory** %3, align 8
  %324 = getelementptr inbounds %struct.memory, %struct.memory* %323, i32 0, i32 31
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %415, label %327

327:                                              ; preds = %322
  %328 = load %struct.memory*, %struct.memory** %3, align 8
  %329 = getelementptr inbounds %struct.memory, %struct.memory* %328, i32 0, i32 30
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %415, label %332

332:                                              ; preds = %327
  %333 = load %struct.memory*, %struct.memory** %3, align 8
  %334 = getelementptr inbounds %struct.memory, %struct.memory* %333, i32 0, i32 21
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %415, label %337

337:                                              ; preds = %332
  %338 = load %struct.memory*, %struct.memory** %3, align 8
  %339 = getelementptr inbounds %struct.memory, %struct.memory* %338, i32 0, i32 29
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %415, label %342

342:                                              ; preds = %337
  %343 = load %struct.memory*, %struct.memory** %3, align 8
  %344 = getelementptr inbounds %struct.memory, %struct.memory* %343, i32 0, i32 28
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %415, label %347

347:                                              ; preds = %342
  %348 = load %struct.memory*, %struct.memory** %3, align 8
  %349 = getelementptr inbounds %struct.memory, %struct.memory* %348, i32 0, i32 27
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %415, label %352

352:                                              ; preds = %347
  %353 = load %struct.memory*, %struct.memory** %3, align 8
  %354 = getelementptr inbounds %struct.memory, %struct.memory* %353, i32 0, i32 19
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %415, label %357

357:                                              ; preds = %352
  %358 = load %struct.memory*, %struct.memory** %3, align 8
  %359 = getelementptr inbounds %struct.memory, %struct.memory* %358, i32 0, i32 18
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %415, label %362

362:                                              ; preds = %357, %304
  %363 = load i8, i8* %4, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %411

366:                                              ; preds = %362
  %367 = load %struct.memory*, %struct.memory** %3, align 8
  %368 = getelementptr inbounds %struct.memory, %struct.memory* %367, i32 0, i32 26
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %415, label %371

371:                                              ; preds = %366
  %372 = load %struct.memory*, %struct.memory** %3, align 8
  %373 = getelementptr inbounds %struct.memory, %struct.memory* %372, i32 0, i32 25
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %415, label %376

376:                                              ; preds = %371
  %377 = load %struct.memory*, %struct.memory** %3, align 8
  %378 = getelementptr inbounds %struct.memory, %struct.memory* %377, i32 0, i32 24
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %415, label %381

381:                                              ; preds = %376
  %382 = load %struct.memory*, %struct.memory** %3, align 8
  %383 = getelementptr inbounds %struct.memory, %struct.memory* %382, i32 0, i32 23
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %415, label %386

386:                                              ; preds = %381
  %387 = load %struct.memory*, %struct.memory** %3, align 8
  %388 = getelementptr inbounds %struct.memory, %struct.memory* %387, i32 0, i32 22
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %415, label %391

391:                                              ; preds = %386
  %392 = load %struct.memory*, %struct.memory** %3, align 8
  %393 = getelementptr inbounds %struct.memory, %struct.memory* %392, i32 0, i32 21
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %415, label %396

396:                                              ; preds = %391
  %397 = load %struct.memory*, %struct.memory** %3, align 8
  %398 = getelementptr inbounds %struct.memory, %struct.memory* %397, i32 0, i32 20
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %415, label %401

401:                                              ; preds = %396
  %402 = load %struct.memory*, %struct.memory** %3, align 8
  %403 = getelementptr inbounds %struct.memory, %struct.memory* %402, i32 0, i32 19
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %415, label %406

406:                                              ; preds = %401
  %407 = load %struct.memory*, %struct.memory** %3, align 8
  %408 = getelementptr inbounds %struct.memory, %struct.memory* %407, i32 0, i32 18
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %406, %362
  %412 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %413 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %411, %406, %401, %396, %391, %386, %381, %376, %371, %366, %357, %352, %347, %342, %337, %332, %327, %322, %317, %312, %307
  %416 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %417 = load %struct.memory*, %struct.memory** %3, align 8
  %418 = getelementptr inbounds %struct.memory, %struct.memory* %417, i32 0, i32 0
  store i64 %416, i64* %418, align 8
  br label %423

419:                                              ; preds = %411
  %420 = load i64, i64* @cgroup_recheck_zero_mem_detailed_every_iterations, align 8
  %421 = load %struct.memory*, %struct.memory** %3, align 8
  %422 = getelementptr inbounds %struct.memory, %struct.memory* %421, i32 0, i32 1
  store i64 %420, i64* %422, align 8
  br label %423

423:                                              ; preds = %419, %415
  br label %424

424:                                              ; preds = %423, %293
  br label %425

425:                                              ; preds = %424, %2
  br label %426

426:                                              ; preds = %425, %69, %58, %46, %28
  %427 = load %struct.memory*, %struct.memory** %3, align 8
  %428 = getelementptr inbounds %struct.memory, %struct.memory* %427, i32 0, i32 17
  %429 = load i32, i32* %428, align 8
  %430 = call i64 @likely(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %475

432:                                              ; preds = %426
  %433 = load %struct.memory*, %struct.memory** %3, align 8
  %434 = getelementptr inbounds %struct.memory, %struct.memory* %433, i32 0, i32 17
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.memory*, %struct.memory** %3, align 8
  %437 = getelementptr inbounds %struct.memory, %struct.memory* %436, i32 0, i32 16
  %438 = call i32 @read_single_number_file(i32 %435, i64* %437)
  %439 = icmp ne i32 %438, 0
  %440 = xor i1 %439, true
  %441 = zext i1 %440 to i32
  %442 = load %struct.memory*, %struct.memory** %3, align 8
  %443 = getelementptr inbounds %struct.memory, %struct.memory* %442, i32 0, i32 5
  store i32 %441, i32* %443, align 4
  %444 = load %struct.memory*, %struct.memory** %3, align 8
  %445 = getelementptr inbounds %struct.memory, %struct.memory* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %465

448:                                              ; preds = %432
  %449 = load %struct.memory*, %struct.memory** %3, align 8
  %450 = getelementptr inbounds %struct.memory, %struct.memory* %449, i32 0, i32 6
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %465

454:                                              ; preds = %448
  %455 = load %struct.memory*, %struct.memory** %3, align 8
  %456 = getelementptr inbounds %struct.memory, %struct.memory* %455, i32 0, i32 16
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %463, label %459

459:                                              ; preds = %454
  %460 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %461 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %462 = icmp eq i64 %460, %461
  br label %463

463:                                              ; preds = %459, %454
  %464 = phi i1 [ true, %454 ], [ %462, %459 ]
  br label %465

465:                                              ; preds = %463, %448, %432
  %466 = phi i1 [ false, %448 ], [ false, %432 ], [ %464, %463 ]
  %467 = zext i1 %466 to i32
  %468 = call i64 @unlikely(i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %465
  %471 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %472 = load %struct.memory*, %struct.memory** %3, align 8
  %473 = getelementptr inbounds %struct.memory, %struct.memory* %472, i32 0, i32 6
  store i64 %471, i64* %473, align 8
  br label %474

474:                                              ; preds = %470, %465
  br label %475

475:                                              ; preds = %474, %426
  %476 = load %struct.memory*, %struct.memory** %3, align 8
  %477 = getelementptr inbounds %struct.memory, %struct.memory* %476, i32 0, i32 15
  %478 = load i32, i32* %477, align 8
  %479 = call i64 @likely(i32 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %524

481:                                              ; preds = %475
  %482 = load %struct.memory*, %struct.memory** %3, align 8
  %483 = getelementptr inbounds %struct.memory, %struct.memory* %482, i32 0, i32 15
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.memory*, %struct.memory** %3, align 8
  %486 = getelementptr inbounds %struct.memory, %struct.memory* %485, i32 0, i32 14
  %487 = call i32 @read_single_number_file(i32 %484, i64* %486)
  %488 = icmp ne i32 %487, 0
  %489 = xor i1 %488, true
  %490 = zext i1 %489 to i32
  %491 = load %struct.memory*, %struct.memory** %3, align 8
  %492 = getelementptr inbounds %struct.memory, %struct.memory* %491, i32 0, i32 7
  store i32 %490, i32* %492, align 8
  %493 = load %struct.memory*, %struct.memory** %3, align 8
  %494 = getelementptr inbounds %struct.memory, %struct.memory* %493, i32 0, i32 7
  %495 = load i32, i32* %494, align 8
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %514

497:                                              ; preds = %481
  %498 = load %struct.memory*, %struct.memory** %3, align 8
  %499 = getelementptr inbounds %struct.memory, %struct.memory* %498, i32 0, i32 8
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %514

503:                                              ; preds = %497
  %504 = load %struct.memory*, %struct.memory** %3, align 8
  %505 = getelementptr inbounds %struct.memory, %struct.memory* %504, i32 0, i32 14
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %512, label %508

508:                                              ; preds = %503
  %509 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %510 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %511 = icmp eq i64 %509, %510
  br label %512

512:                                              ; preds = %508, %503
  %513 = phi i1 [ true, %503 ], [ %511, %508 ]
  br label %514

514:                                              ; preds = %512, %497, %481
  %515 = phi i1 [ false, %497 ], [ false, %481 ], [ %513, %512 ]
  %516 = zext i1 %515 to i32
  %517 = call i64 @unlikely(i32 %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %514
  %520 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %521 = load %struct.memory*, %struct.memory** %3, align 8
  %522 = getelementptr inbounds %struct.memory, %struct.memory* %521, i32 0, i32 8
  store i64 %520, i64* %522, align 8
  br label %523

523:                                              ; preds = %519, %514
  br label %524

524:                                              ; preds = %523, %475
  %525 = load %struct.memory*, %struct.memory** %3, align 8
  %526 = getelementptr inbounds %struct.memory, %struct.memory* %525, i32 0, i32 13
  %527 = load i32, i32* %526, align 8
  %528 = call i64 @likely(i32 %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %605

530:                                              ; preds = %524
  %531 = load %struct.memory*, %struct.memory** %3, align 8
  %532 = getelementptr inbounds %struct.memory, %struct.memory* %531, i32 0, i32 9
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %541

536:                                              ; preds = %530
  %537 = load %struct.memory*, %struct.memory** %3, align 8
  %538 = getelementptr inbounds %struct.memory, %struct.memory* %537, i32 0, i32 10
  %539 = load i64, i64* %538, align 8
  %540 = icmp sgt i64 %539, 0
  br label %541

541:                                              ; preds = %536, %530
  %542 = phi i1 [ false, %530 ], [ %540, %536 ]
  %543 = zext i1 %542 to i32
  %544 = call i64 @unlikely(i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %541
  %547 = load %struct.memory*, %struct.memory** %3, align 8
  %548 = getelementptr inbounds %struct.memory, %struct.memory* %547, i32 0, i32 11
  store i32 0, i32* %548, align 8
  %549 = load %struct.memory*, %struct.memory** %3, align 8
  %550 = getelementptr inbounds %struct.memory, %struct.memory* %549, i32 0, i32 10
  %551 = load i64, i64* %550, align 8
  %552 = add nsw i64 %551, -1
  store i64 %552, i64* %550, align 8
  br label %604

553:                                              ; preds = %541
  %554 = load %struct.memory*, %struct.memory** %3, align 8
  %555 = getelementptr inbounds %struct.memory, %struct.memory* %554, i32 0, i32 13
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.memory*, %struct.memory** %3, align 8
  %558 = getelementptr inbounds %struct.memory, %struct.memory* %557, i32 0, i32 12
  %559 = call i32 @read_single_number_file(i32 %556, i64* %558)
  %560 = icmp ne i32 %559, 0
  %561 = xor i1 %560, true
  %562 = zext i1 %561 to i32
  %563 = load %struct.memory*, %struct.memory** %3, align 8
  %564 = getelementptr inbounds %struct.memory, %struct.memory* %563, i32 0, i32 11
  store i32 %562, i32* %564, align 8
  %565 = load %struct.memory*, %struct.memory** %3, align 8
  %566 = getelementptr inbounds %struct.memory, %struct.memory* %565, i32 0, i32 11
  %567 = load i32, i32* %566, align 8
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %553
  %570 = load %struct.memory*, %struct.memory** %3, align 8
  %571 = getelementptr inbounds %struct.memory, %struct.memory* %570, i32 0, i32 9
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %574 = icmp eq i64 %572, %573
  br label %575

575:                                              ; preds = %569, %553
  %576 = phi i1 [ false, %553 ], [ %574, %569 ]
  %577 = zext i1 %576 to i32
  %578 = call i64 @unlikely(i32 %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %603

580:                                              ; preds = %575
  %581 = load %struct.memory*, %struct.memory** %3, align 8
  %582 = getelementptr inbounds %struct.memory, %struct.memory* %581, i32 0, i32 12
  %583 = load i64, i64* %582, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %589, label %585

585:                                              ; preds = %580
  %586 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %587 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %588 = icmp eq i64 %586, %587
  br label %589

589:                                              ; preds = %585, %580
  %590 = phi i1 [ true, %580 ], [ %588, %585 ]
  %591 = zext i1 %590 to i32
  %592 = call i64 @unlikely(i32 %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %589
  %595 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %596 = load %struct.memory*, %struct.memory** %3, align 8
  %597 = getelementptr inbounds %struct.memory, %struct.memory* %596, i32 0, i32 9
  store i64 %595, i64* %597, align 8
  br label %602

598:                                              ; preds = %589
  %599 = load i64, i64* @cgroup_recheck_zero_mem_failcnt_every_iterations, align 8
  %600 = load %struct.memory*, %struct.memory** %3, align 8
  %601 = getelementptr inbounds %struct.memory, %struct.memory* %600, i32 0, i32 10
  store i64 %599, i64* %601, align 8
  br label %602

602:                                              ; preds = %598, %594
  br label %603

603:                                              ; preds = %602, %575
  br label %604

604:                                              ; preds = %603, %546
  br label %605

605:                                              ; preds = %604, %524
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i8* @arl_create(i8*, i32*, i32) #1

declare dso_local i8* @arl_expect(i8*, i8*, i64*) #1

declare dso_local i32 @arl_begin(i8*) #1

declare dso_local i64 @arl_check(i8*, i32, i32) #1

declare dso_local i32 @procfile_lineword(i32*, i64, i32) #1

declare dso_local i32 @read_single_number_file(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
