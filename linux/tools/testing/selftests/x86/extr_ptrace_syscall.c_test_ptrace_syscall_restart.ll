; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ptrace_syscall.c_test_ptrace_syscall_restart.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ptrace_syscall.c_test_ptrace_syscall_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_regs_struct = type { i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"[RUN]\09ptrace-induced syscall restart\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"PTRACE_TRACEME\00", align 1
@SYS_gettid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"\09Child will make one syscall\0A\00", align 1
@SYS_tgkill = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"[RUN]\09SYSEMU\0A\00", align 1
@PTRACE_SYSEMU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"PTRACE_SYSEMU\00", align 1
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"PTRACE_GETREGS\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"[FAIL]\09Initial args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"[OK]\09Initial nr and args are correct\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"[RUN]\09Restart the syscall (ip = 0x%lx)\0A\00", align 1
@PTRACE_SETREGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"PTRACE_SETREGS\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"[FAIL]\09Restart nr or args are wrong (nr=%lu, args=%lu %lu %lu %lu %lu %lu)\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"[OK]\09Restarted nr and args are correct\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"[RUN]\09Change nr and args and restart the syscall (ip = 0x%lx)\0A\00", align 1
@SYS_getpid = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"[OK]\09Replacement nr and args are correct\0A\00", align 1
@PTRACE_CONT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"PTRACE_CONT\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"[FAIL]\09Child failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"[OK]\09Child exited cleanly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ptrace_syscall_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ptrace_syscall_restart() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_regs_struct, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 (...) @fork()
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i64, i64* %1, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, i32* @PTRACE_TRACEME, align 4
  %17 = call i64 @ptrace(i32 %16, i64 0, i32 0, %struct.user_regs_struct* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = call i64 (...) @getpid()
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* @SYS_gettid, align 8
  %24 = call i64 (i64, ...) @syscall(i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @SYS_tgkill, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @SIGSTOP, align 4
  %31 = call i64 (i64, ...) @syscall(i64 %27, i64 %28, i64 %29, i32 %30)
  %32 = load i64, i64* @SYS_gettid, align 8
  %33 = call i64 (i64, ...) @syscall(i64 %32, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15)
  %34 = call i32 @_exit(i32 0) #3
  unreachable

35:                                               ; preds = %12
  %36 = load i64, i64* %1, align 8
  %37 = call i64 @waitpid(i64 %36, i32* %4, i32 0)
  %38 = load i64, i64* %1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @WIFSTOPPED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %35
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @PTRACE_SYSEMU, align 4
  %49 = load i64, i64* %1, align 8
  %50 = call i64 @ptrace(i32 %48, i64 %49, i32 0, %struct.user_regs_struct* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @wait_trap(i64 %55)
  %57 = load i32, i32* @PTRACE_GETREGS, align 4
  %58 = load i64, i64* %1, align 8
  %59 = call i64 @ptrace(i32 %57, i64 %58, i32 0, %struct.user_regs_struct* %5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SYS_gettid, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %92, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %92, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 11
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 12
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 13
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 14
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 15
  br i1 %91, label %92, label %116

92:                                               ; preds = %88, %84, %80, %76, %72, %68, %63
  %93 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i64 %94, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109, i64 %112)
  %114 = load i32, i32* @nerrs, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @nerrs, align 4
  br label %118

116:                                              ; preds = %88
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %92
  %119 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %120)
  %122 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 7
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 2
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* @PTRACE_SETREGS, align 4
  %129 = load i64, i64* %1, align 8
  %130 = call i64 @ptrace(i32 %128, i64 %129, i32 0, %struct.user_regs_struct* %5)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %118
  %135 = load i32, i32* @PTRACE_SYSEMU, align 4
  %136 = load i64, i64* %1, align 8
  %137 = call i64 @ptrace(i32 %135, i64 %136, i32 0, %struct.user_regs_struct* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i64, i64* %1, align 8
  %143 = call i32 @wait_trap(i64 %142)
  %144 = load i32, i32* @PTRACE_GETREGS, align 4
  %145 = load i64, i64* %1, align 8
  %146 = call i64 @ptrace(i32 %144, i64 %145, i32 0, %struct.user_regs_struct* %5)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %141
  %151 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SYS_gettid, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %179, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 10
  br i1 %158, label %179, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 11
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 12
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 13
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 14
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 15
  br i1 %178, label %179, label %203

179:                                              ; preds = %175, %171, %167, %163, %159, %155, %150
  %180 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i64 %181, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199)
  %201 = load i32, i32* @nerrs, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @nerrs, align 4
  br label %205

203:                                              ; preds = %175
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %179
  %206 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0), i64 %207)
  %209 = load i64, i64* @SYS_getpid, align 8
  %210 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 7
  store i64 %209, i64* %210, align 8
  %211 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  store i32 20, i32* %211, align 8
  %212 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  store i32 21, i32* %212, align 4
  %213 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  store i32 22, i32* %213, align 8
  %214 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  store i32 23, i32* %214, align 4
  %215 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  store i32 24, i32* %215, align 8
  %216 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  store i32 25, i32* %216, align 4
  %217 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %218, 2
  store i64 %219, i64* %217, align 8
  %220 = load i32, i32* @PTRACE_SETREGS, align 4
  %221 = load i64, i64* %1, align 8
  %222 = call i64 @ptrace(i32 %220, i64 %221, i32 0, %struct.user_regs_struct* %5)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %205
  %225 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %205
  %227 = load i32, i32* @PTRACE_SYSEMU, align 4
  %228 = load i64, i64* %1, align 8
  %229 = call i64 @ptrace(i32 %227, i64 %228, i32 0, %struct.user_regs_struct* null)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %226
  %234 = load i64, i64* %1, align 8
  %235 = call i32 @wait_trap(i64 %234)
  %236 = load i32, i32* @PTRACE_GETREGS, align 4
  %237 = load i64, i64* %1, align 8
  %238 = call i64 @ptrace(i32 %236, i64 %237, i32 0, %struct.user_regs_struct* %5)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %233
  %243 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SYS_getpid, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %271, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 20
  br i1 %250, label %271, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 21
  br i1 %254, label %271, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 22
  br i1 %258, label %271, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 23
  br i1 %262, label %271, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 24
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 25
  br i1 %270, label %271, label %295

271:                                              ; preds = %267, %263, %259, %255, %251, %247, %242
  %272 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %5, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i64 %273, i64 %276, i64 %279, i64 %282, i64 %285, i64 %288, i64 %291)
  %293 = load i32, i32* @nerrs, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* @nerrs, align 4
  br label %297

295:                                              ; preds = %267
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %271
  %298 = load i32, i32* @PTRACE_CONT, align 4
  %299 = load i64, i64* %1, align 8
  %300 = call i64 @ptrace(i32 %298, i64 %299, i32 0, %struct.user_regs_struct* null)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %297
  %305 = load i64, i64* %1, align 8
  %306 = call i64 @waitpid(i64 %305, i32* %4, i32 0)
  %307 = load i64, i64* %1, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %304
  %312 = load i32, i32* %4, align 4
  %313 = call i32 @WIFEXITED(i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i32, i32* %4, align 4
  %317 = call i64 @WEXITSTATUS(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315, %311
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %321 = load i32, i32* @nerrs, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* @nerrs, align 4
  br label %325

323:                                              ; preds = %315
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %319
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ptrace(i32, i64, i32, %struct.user_regs_struct*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @syscall(i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @wait_trap(i64) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
