; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init_Env_Parameters.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init_Env_Parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"LSAPI_STDERR_LOG\00", align 1
@s_stderr_log_path = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@s_stderr_is_pipe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PHP_LSAPI_MAX_REQUESTS\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LSAPI_MAX_REQS\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"LSAPI_KEEP_LISTEN\00", align 1
@s_keepListener = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"LSAPI_AVOID_FORK\00", align 1
@s_min_avail_pages = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"LSAPI_ACCEPT_NOTIFY\00", align 1
@s_accept_notify = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"LSAPI_SLOW_REQ_MSECS\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"LSAPI_MAX_IDLE\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"PHP_LSAPI_CHILDREN\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"LSAPI_CHILDREN\00", align 1
@g_req = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"LSAPI_EXTRA_CHILDREN\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"LSAPI_MAX_IDLE_CHILDREN\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"LSAPI_PGRP_MAX_IDLE\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"LSAPI_MAX_PROCESS_TIME\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"LSAPI_PPID_NO_CHECK\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"LSAPI_MAX_BUSY_WORKER\00", align 1
@s_max_busy_workers = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"LSAPI_DUMP_DEBUG_INFO\00", align 1
@s_dump_debug_info = common dso_local global i8* null, align 8
@RLIMIT_CORE = common dso_local global i32 0, align 4
@s_enable_core_dump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_Init_Env_Parameters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @lsapi_reopen_stderr(i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @s_stderr_log_path, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @STDERR_FILENO, align 4
  %19 = call i32 @isPipe(i32 %18)
  store i32 %19, i32* @s_stderr_is_pipe, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @atoi(i8* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @LSAPI_Set_Max_Reqs(i32 %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %26
  %40 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @atoi(i8* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* @s_keepListener, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %96

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @atoi(i8* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  store i32 2, i32* @s_keepListener, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %5, align 1
  %66 = load i8, i8* %5, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 71
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 103
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %58
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 1073741824
  store i32 %75, i32* %7, align 4
  br label %88

76:                                               ; preds = %69
  %77 = load i8, i8* %5, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 77
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 109
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 1048576
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 10485760
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = sdiv i32 %92, 4096
  store i32 %93, i32* @s_min_avail_pages, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %52
  br label %96

96:                                               ; preds = %95, %48
  %97 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i8* %97, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8*, i8** %4, align 8
  %102 = call i8* @atoi(i8* %101)
  store i8* %102, i8** @s_accept_notify, align 8
  br label %103

103:                                              ; preds = %100, %96
  %104 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i8*, i8** %4, align 8
  %109 = call i8* @atoi(i8* %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @LSAPI_Set_Slow_Req_Msecs(i32 %111)
  br label %113

113:                                              ; preds = %107, %103
  %114 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i8*, i8** %4, align 8
  %119 = call i8* @atoi(i8* %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @LSAPI_Set_Max_Idle(i32 %121)
  br label %123

123:                                              ; preds = %117, %113
  %124 = call i64 (...) @LSAPI_Is_Listen()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %215

126:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  %127 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i8* %127, i8** %4, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %131, i8** %4, align 8
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i8*, i8** %4, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** %4, align 8
  %137 = call i8* @atoi(i8* %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @LSAPI_Init_Prefork_Server(i32 %143, i32 %144, i32 %147)
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_req, i32 0, i32 0), align 4
  %150 = call i32 @LSAPI_Set_Server_fd(i32 %149)
  br label %151

151:                                              ; preds = %142, %139
  %152 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i8* %152, i8** %4, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i8*, i8** %4, align 8
  %157 = call i8* @atoi(i8* %156)
  %158 = call i32 @LSAPI_Set_Extra_Children(i8* %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i8* %160, i8** %4, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i8*, i8** %4, align 8
  %165 = call i8* @atoi(i8* %164)
  %166 = call i32 @LSAPI_Set_Max_Idle_Children(i8* %165)
  br label %167

167:                                              ; preds = %163, %159
  %168 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i8* %168, i8** %4, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i8*, i8** %4, align 8
  %173 = call i8* @atoi(i8* %172)
  %174 = call i32 @LSAPI_Set_Server_Max_Idle_Secs(i8* %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  store i8* %176, i8** %4, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i8*, i8** %4, align 8
  %181 = call i8* @atoi(i8* %180)
  %182 = call i32 @LSAPI_Set_Max_Process_Time(i8* %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 (...) @LSAPI_No_Check_ppid()
  br label %188

188:                                              ; preds = %186, %183
  %189 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i8* %189, i8** %4, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load i8*, i8** %4, align 8
  %194 = call i8* @atoi(i8* %193)
  %195 = ptrtoint i8* %194 to i32
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* @s_max_busy_workers, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 (...) @LSAPI_No_Check_ppid()
  br label %201

201:                                              ; preds = %199, %192
  br label %202

202:                                              ; preds = %201, %188
  %203 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i8* %203, i8** %4, align 8
  %204 = load i8*, i8** %4, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i8*, i8** %4, align 8
  %208 = call i8* @atoi(i8* %207)
  store i8* %208, i8** @s_dump_debug_info, align 8
  br label %209

209:                                              ; preds = %206, %202
  %210 = call i32 (...) @lsapi_initSuEXEC()
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 -1, i32* %2, align 4
  br label %217

213:                                              ; preds = %209
  %214 = call i32 (...) @lsapi_initLVE()
  br label %215

215:                                              ; preds = %213, %123
  %216 = call i32 (...) @unset_lsapi_envs()
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %212
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @lsapi_reopen_stderr(i8*) #1

declare dso_local i32 @isPipe(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @LSAPI_Set_Max_Reqs(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LSAPI_Set_Slow_Req_Msecs(i32) #1

declare dso_local i32 @LSAPI_Set_Max_Idle(i32) #1

declare dso_local i64 @LSAPI_Is_Listen(...) #1

declare dso_local i32 @LSAPI_Init_Prefork_Server(i32, i32, i32) #1

declare dso_local i32 @LSAPI_Set_Server_fd(i32) #1

declare dso_local i32 @LSAPI_Set_Extra_Children(i8*) #1

declare dso_local i32 @LSAPI_Set_Max_Idle_Children(i8*) #1

declare dso_local i32 @LSAPI_Set_Server_Max_Idle_Secs(i8*) #1

declare dso_local i32 @LSAPI_Set_Max_Process_Time(i8*) #1

declare dso_local i32 @LSAPI_No_Check_ppid(...) #1

declare dso_local i32 @lsapi_initSuEXEC(...) #1

declare dso_local i32 @lsapi_initLVE(...) #1

declare dso_local i32 @unset_lsapi_envs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
