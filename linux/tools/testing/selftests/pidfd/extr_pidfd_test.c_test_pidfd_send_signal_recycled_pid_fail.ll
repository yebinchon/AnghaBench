; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_recycled_pid_fail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_test.c_test_pidfd_send_signal_recycled_pid_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"pidfd_send_signal signal recycled pid\00", align 1
@CLONE_NEWPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s test: Failed to unshare pid namespace\0A\00", align 1
@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s test: Failed to unshare mount namespace\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_REC = common dso_local global i32 0, align 4
@MS_PRIVATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s test: Failed to remount / private\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s test: Failed to create new process\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@MNT_DETACH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@PIDFD_ERROR = common dso_local global i32 0, align 4
@PIDFD_MAX_DEFAULT = common dso_local global i32 0, align 4
@PID_RECYCLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"/proc/%d\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"pid to recycle is %d\0A\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"%s test: Managed to signal recycled pid %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%s test: Failed to recycle pid %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s test: Skipping test\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"%s test: Failed to signal recycled pid as expected\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s test: Error while running tests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pidfd_send_signal_recycled_pid_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pidfd_send_signal_recycled_pid_fail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %12 = load i32, i32* @CLONE_NEWPID, align 4
  %13 = call i32 @unshare(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* @CLONE_NEWNS, align 4
  %21 = call i32 @unshare(i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @MS_REC, align 4
  %29 = load i32, i32* @MS_PRIVATE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mount(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 %30, i32* null)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = call i64 (...) @fork()
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %227

47:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  %48 = load i32, i32* @MNT_DETACH, align 4
  %49 = call i32 @umount2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = call i32 @mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @PIDFD_ERROR, align 4
  %55 = call i32 @_exit(i32 %54) #3
  unreachable

56:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %102, %56
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @PIDFD_MAX_DEFAULT, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %57
  %62 = call i64 (...) @fork()
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @PIDFD_ERROR, align 4
  %67 = call i32 @_exit(i32 %66) #3
  unreachable

68:                                               ; preds = %61
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @_exit(i32 130) #3
  unreachable

73:                                               ; preds = %68
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @PID_RECYCLE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %85 = load i32, i32* @O_DIRECTORY, align 4
  %86 = load i32, i32* @O_CLOEXEC, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @open(i8* %84, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %77, %73
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @wait_for_pid(i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @PIDFD_ERROR, align 4
  %95 = call i32 @_exit(i32 %94) #3
  unreachable

96:                                               ; preds = %89
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @PID_RECYCLE, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %105

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %57

105:                                              ; preds = %100, %57
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @PID_RECYCLE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @close(i32 %110)
  %112 = call i32 @_exit(i32 129) #3
  unreachable

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @PIDFD_ERROR, align 4
  %118 = call i32 @_exit(i32 %117) #3
  unreachable

119:                                              ; preds = %113
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %222, %119
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @PIDFD_MAX_DEFAULT, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %225

124:                                              ; preds = %120
  store i32 130, i32* %11, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %126 = load i32, i32* @O_CLOEXEC, align 4
  %127 = call i32 @pipe2(i32* %125, i32 %126)
  store i32 %127, i32* %2, align 4
  %128 = load i32, i32* %2, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @PIDFD_ERROR, align 4
  %132 = call i32 @_exit(i32 %131) #3
  unreachable

133:                                              ; preds = %124
  %134 = call i64 (...) @fork()
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @PIDFD_ERROR, align 4
  %139 = call i32 @_exit(i32 %138) #3
  unreachable

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @close(i32 %145)
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @read(i32 %148, i8* %8, i32 1)
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  %153 = call i32 @_exit(i32 130) #3
  unreachable

154:                                              ; preds = %140
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @close(i32 %156)
  %158 = load i64, i64* %10, align 8
  %159 = load i32, i32* @SIGSTOP, align 4
  %160 = call i32 @kill(i64 %158, i32 %159)
  store i32 %160, i32* %2, align 4
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @close(i32 %162)
  %164 = load i32, i32* %2, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %154
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @wait_for_pid(i64 %167)
  %169 = load i32, i32* @PIDFD_ERROR, align 4
  %170 = call i32 @_exit(i32 %169) #3
  unreachable

171:                                              ; preds = %154
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @PID_RECYCLE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @SIGCONT, align 4
  %178 = call i32 @sys_pidfd_send_signal(i32 %176, i32 %177, i32* null, i32 0)
  store i32 %178, i32* %2, align 4
  %179 = load i32, i32* %2, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load i64, i64* @errno, align 8
  %183 = load i64, i64* @ESRCH, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 128, i32* %11, align 4
  br label %187

186:                                              ; preds = %181, %175
  store i32 131, i32* %11, align 4
  br label %187

187:                                              ; preds = %186, %185
  br label %188

188:                                              ; preds = %187, %171
  %189 = load i64, i64* %10, align 8
  %190 = load i32, i32* @SIGCONT, align 4
  %191 = call i32 @kill(i64 %189, i32 %190)
  store i32 %191, i32* %2, align 4
  %192 = load i32, i32* %2, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i64, i64* %10, align 8
  %196 = load i32, i32* @SIGKILL, align 4
  %197 = call i32 @kill(i64 %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %188
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @wait_for_pid(i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @PIDFD_ERROR, align 4
  %204 = call i32 @_exit(i32 %203) #3
  unreachable

205:                                              ; preds = %198
  %206 = load i32, i32* %11, align 4
  switch i32 %206, label %211 [
    i32 131, label %207
    i32 128, label %207
    i32 130, label %210
  ]

207:                                              ; preds = %205, %205
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @_exit(i32 %208) #3
  unreachable

210:                                              ; preds = %205
  br label %214

211:                                              ; preds = %205
  %212 = load i32, i32* @PIDFD_ERROR, align 4
  %213 = call i32 @_exit(i32 %212) #3
  unreachable

214:                                              ; preds = %210
  %215 = load i64, i64* %10, align 8
  %216 = load i32, i32* @PIDFD_MAX_DEFAULT, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp sgt i64 %215, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = call i32 @_exit(i32 129) #3
  unreachable

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %1, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %1, align 4
  br label %120

225:                                              ; preds = %120
  %226 = call i32 @_exit(i32 129) #3
  unreachable

227:                                              ; preds = %44
  %228 = load i64, i64* %3, align 8
  %229 = call i32 @wait_for_pid(i64 %228)
  store i32 %229, i32* %2, align 4
  %230 = load i32, i32* %2, align 4
  switch i32 %230, label %245 [
    i32 131, label %231
    i32 130, label %235
    i32 129, label %239
    i32 128, label %242
  ]

231:                                              ; preds = %227
  %232 = load i8*, i8** %4, align 8
  %233 = load i64, i64* @PID_RECYCLE, align 8
  %234 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %232, i64 %233)
  br label %235

235:                                              ; preds = %227, %231
  %236 = load i8*, i8** %4, align 8
  %237 = load i64, i64* @PID_RECYCLE, align 8
  %238 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %236, i64 %237)
  br label %239

239:                                              ; preds = %227, %235
  %240 = load i8*, i8** %4, align 8
  %241 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %240)
  store i32 0, i32* %2, align 4
  br label %248

242:                                              ; preds = %227
  %243 = load i8*, i8** %4, align 8
  %244 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %243)
  store i32 0, i32* %2, align 4
  br label %248

245:                                              ; preds = %227
  %246 = load i8*, i8** %4, align 8
  %247 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %245, %242, %239
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

declare dso_local i32 @mount(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @umount2(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @ksft_print_msg(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @wait_for_pid(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pipe2(i32*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
