; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-syscall.c_test_ptrace_syscall_restart.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-syscall.c_test_ptrace_syscall_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i64 }

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
  %1 = alloca i32, align 4
  %2 = alloca %struct.pt_regs, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 (...) @fork()
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, i32* @PTRACE_TRACEME, align 4
  %17 = call i64 @ptrace(i32 %16, i64 0, i32 0, %struct.pt_regs* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = call i64 (...) @getpid()
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @SYS_gettid, align 8
  %24 = call i64 (i64, ...) @syscall(i64 %23)
  store i64 %24, i64* %5, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @SYS_tgkill, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @SIGSTOP, align 4
  %31 = call i64 (i64, ...) @syscall(i64 %27, i64 %28, i64 %29, i32 %30)
  %32 = load i64, i64* @SYS_gettid, align 8
  %33 = call i64 (i64, ...) @syscall(i64 %32, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15)
  %34 = call i32 @_exit(i32 0) #3
  unreachable

35:                                               ; preds = %12
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @waitpid(i64 %36, i32* %1, i32 0)
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @WIFSTOPPED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %35
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @PTRACE_SYSEMU, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @ptrace(i32 %48, i64 %49, i32 0, %struct.pt_regs* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @wait_trap(i64 %55)
  %57 = load i32, i32* @PTRACE_GETREGS, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @ptrace(i32 %57, i64 %58, i32 0, %struct.pt_regs* %2)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SYS_gettid, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %92, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %92, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 11
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 12
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 13
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 14
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 15
  br i1 %91, label %92, label %116

92:                                               ; preds = %88, %84, %80, %76, %72, %68, %63
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
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
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %120)
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 4
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* @PTRACE_SETREGS, align 4
  %126 = load i64, i64* %3, align 8
  %127 = call i64 @ptrace(i32 %125, i64 %126, i32 0, %struct.pt_regs* %2)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %118
  %132 = load i32, i32* @PTRACE_SYSEMU, align 4
  %133 = load i64, i64* %3, align 8
  %134 = call i64 @ptrace(i32 %132, i64 %133, i32 0, %struct.pt_regs* null)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i64, i64* %3, align 8
  %140 = call i32 @wait_trap(i64 %139)
  %141 = load i32, i32* @PTRACE_GETREGS, align 4
  %142 = load i64, i64* %3, align 8
  %143 = call i64 @ptrace(i32 %141, i64 %142, i32 0, %struct.pt_regs* %2)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %138
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SYS_gettid, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %176, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 10
  br i1 %155, label %176, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 11
  br i1 %159, label %176, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 12
  br i1 %163, label %176, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 13
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 14
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 15
  br i1 %175, label %176, label %200

176:                                              ; preds = %172, %168, %164, %160, %156, %152, %147
  %177 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i64 %178, i64 %181, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196)
  %198 = load i32, i32* @nerrs, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @nerrs, align 4
  br label %202

200:                                              ; preds = %172
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %176
  %203 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0), i64 %204)
  %206 = load i64, i64* @SYS_getpid, align 8
  %207 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  %208 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  store i32 20, i32* %208, align 8
  %209 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  store i32 21, i32* %209, align 4
  %210 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  store i32 22, i32* %210, align 8
  %211 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  store i32 23, i32* %211, align 4
  %212 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  store i32 24, i32* %212, align 8
  %213 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  store i32 25, i32* %213, align 4
  %214 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = sub nsw i64 %215, 4
  store i64 %216, i64* %214, align 8
  %217 = load i32, i32* @PTRACE_SETREGS, align 4
  %218 = load i64, i64* %3, align 8
  %219 = call i64 @ptrace(i32 %217, i64 %218, i32 0, %struct.pt_regs* %2)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %202
  %222 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %202
  %224 = load i32, i32* @PTRACE_SYSEMU, align 4
  %225 = load i64, i64* %3, align 8
  %226 = call i64 @ptrace(i32 %224, i64 %225, i32 0, %struct.pt_regs* null)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %223
  %231 = load i64, i64* %3, align 8
  %232 = call i32 @wait_trap(i64 %231)
  %233 = load i32, i32* @PTRACE_GETREGS, align 4
  %234 = load i64, i64* %3, align 8
  %235 = call i64 @ptrace(i32 %233, i64 %234, i32 0, %struct.pt_regs* %2)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %230
  %240 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @SYS_getpid, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %268, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 20
  br i1 %247, label %268, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 21
  br i1 %251, label %268, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 22
  br i1 %255, label %268, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 23
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 24
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 25
  br i1 %267, label %268, label %292

268:                                              ; preds = %264, %260, %256, %252, %248, %244, %239
  %269 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %2, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0), i64 %270, i64 %273, i64 %276, i64 %279, i64 %282, i64 %285, i64 %288)
  %290 = load i32, i32* @nerrs, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* @nerrs, align 4
  br label %294

292:                                              ; preds = %264
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %268
  %295 = load i32, i32* @PTRACE_CONT, align 4
  %296 = load i64, i64* %3, align 8
  %297 = call i64 @ptrace(i32 %295, i64 %296, i32 0, %struct.pt_regs* null)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %294
  %302 = load i64, i64* %3, align 8
  %303 = call i64 @waitpid(i64 %302, i32* %1, i32 0)
  %304 = load i64, i64* %3, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %301
  %309 = load i32, i32* %1, align 4
  %310 = call i32 @WIFEXITED(i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i32, i32* %1, align 4
  %314 = call i64 @WEXITSTATUS(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %312, %308
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %318 = load i32, i32* @nerrs, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* @nerrs, align 4
  br label %322

320:                                              ; preds = %312
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %322

322:                                              ; preds = %320, %316
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ptrace(i32, i64, i32, %struct.pt_regs*) #1

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
