; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_read_proc_pid_status.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_read_proc_pid_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arl_callback_ptr = type { i64, i32*, %struct.pid_stat* }
%struct.pid_stat = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@read_proc_pid_status.arl_ptr = internal global %struct.arl_callback_ptr zeroinitializer, align 8
@read_proc_pid_status.ff = internal global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"/proc/pid/status\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Uid\00", align 1
@arl_callback_status_uid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Gid\00", align 1
@arl_callback_status_gid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"VmSize\00", align 1
@arl_callback_status_vmsize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"VmRSS\00", align 1
@arl_callback_status_vmrss = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"RssFile\00", align 1
@arl_callback_status_rssfile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"RssShmem\00", align 1
@arl_callback_status_rssshmem = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"VmSwap\00", align 1
@arl_callback_status_vmswap = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s/proc/%d/status\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" \09:,-()/\00", align 1
@PROCFILE_FLAG_NO_ERROR_ON_FILE_IO = common dso_local global i32 0, align 4
@calls_counter = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pid_stat*, i8*)* @read_proc_pid_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_proc_pid_status(%struct.pid_stat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_stat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pid_stat* %0, %struct.pid_stat** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %11 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %13 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %15 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %17 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %19 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %21 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %24 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %2
  %32 = call i64 @arl_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 60)
  %33 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %34 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %36 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @arl_callback_status_uid, align 4
  %39 = call i32 @arl_expect_custom(i64 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %38, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %40 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %41 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @arl_callback_status_gid, align 4
  %44 = call i32 @arl_expect_custom(i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %45 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %46 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @arl_callback_status_vmsize, align 4
  %49 = call i32 @arl_expect_custom(i64 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %48, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %50 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %51 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @arl_callback_status_vmrss, align 4
  %54 = call i32 @arl_expect_custom(i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %55 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %56 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @arl_callback_status_rssfile, align 4
  %59 = call i32 @arl_expect_custom(i64 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %58, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %60 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %61 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @arl_callback_status_rssshmem, align 4
  %64 = call i32 @arl_expect_custom(i64 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %63, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  %65 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %66 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @arl_callback_status_vmswap, align 4
  %69 = call i32 @arl_expect_custom(i64 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %68, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr)
  br label %70

70:                                               ; preds = %31, %2
  %71 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %72 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = load i32, i32* @FILENAME_MAX, align 4
  %81 = add nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %6, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %7, align 8
  %85 = load i32, i32* @FILENAME_MAX, align 4
  %86 = load i32, i32* @netdata_configured_host_prefix, align 4
  %87 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %88 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @snprintfz(i8* %84, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %86, i32 %89)
  %91 = call i32 @strdupz(i8* %84)
  %92 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %93 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %79, %70
  %96 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %97 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %98 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %101 = icmp ne i32* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* null
  %105 = load i32, i32* @PROCFILE_FLAG_NO_ERROR_ON_FILE_IO, align 4
  %106 = call i32* @procfile_reopen(i32* %96, i32 %99, i8* %104, i32 %105)
  store i32* %106, i32** @read_proc_pid_status.ff, align 8
  %107 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %108 = icmp ne i32* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %168

114:                                              ; preds = %95
  %115 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %116 = call i32* @procfile_readall(i32* %115)
  store i32* %116, i32** @read_proc_pid_status.ff, align 8
  %117 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %118 = icmp ne i32* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %168

124:                                              ; preds = %114
  %125 = load i32, i32* @calls_counter, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @calls_counter, align 4
  %127 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  store %struct.pid_stat* %127, %struct.pid_stat** getelementptr inbounds (%struct.arl_callback_ptr, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr, i32 0, i32 2), align 8
  %128 = load i32*, i32** @read_proc_pid_status.ff, align 8
  store i32* %128, i32** getelementptr inbounds (%struct.arl_callback_ptr, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr, i32 0, i32 1), align 8
  %129 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %130 = call i64 @procfile_lines(i32* %129)
  store i64 %130, i64* %8, align 8
  %131 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %132 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @arl_begin(i64 %133)
  store i64 0, i64* %9, align 8
  br label %135

135:                                              ; preds = %155, %124
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load i64, i64* %9, align 8
  store i64 %140, i64* getelementptr inbounds (%struct.arl_callback_ptr, %struct.arl_callback_ptr* @read_proc_pid_status.arl_ptr, i32 0, i32 0), align 8
  %141 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %142 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @procfile_lineword(i32* %144, i64 %145, i32 0)
  %147 = load i32*, i32** @read_proc_pid_status.ff, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @procfile_lineword(i32* %147, i64 %148, i32 1)
  %150 = call i32 @arl_check(i64 %143, i32 %146, i32 %149)
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %158

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %9, align 8
  br label %135

158:                                              ; preds = %153, %135
  %159 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %160 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %163 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %167 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %158, %123, %113
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @arl_create(i8*, i32*, i32) #1

declare dso_local i32 @arl_expect_custom(i64, i8*, i32, %struct.arl_callback_ptr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_reopen(i32*, i32, i8*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @arl_begin(i64) #1

declare dso_local i32 @arl_check(i64, i32, i32) #1

declare dso_local i32 @procfile_lineword(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
