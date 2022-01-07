; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_parent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@NT_PPC_PKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%-30s AMR: %016lx IAMR: %016lx UAMOR: %016lx\0A\00", align 1
@ptrace_read_running = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%-30s AMR: %016lx\0A\00", align 1
@ptrace_write_running = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%-30s AMR: %016lx IAMR: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Child exited abnormally\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shared_info*, i32)* @parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parent(%struct.shared_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shared_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.shared_info* %0, %struct.shared_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NT_PPC_PKEY, align 4
  %11 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %12 = call i32 @ptrace_read_regs(i32 %9, i32 %10, i64* %11, i32 3)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %15 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %14, i32 0, i32 7
  %16 = call i32 @PARENT_SKIP_IF_UNSUPPORTED(i32 %13, i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %19 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %18, i32 0, i32 7
  %20 = call i32 @PARENT_FAIL_IF(i32 %17, i32* %19)
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %22 = load i64, i64* %21, align 16
  %23 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %24 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %26 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  %27 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %28 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %32 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %34 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %33, i32 0, i32 3
  store i64 %30, i64* %34, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %38 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %40 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %39, i32 0, i32 5
  store i64 %36, i64* %40, align 8
  %41 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %42 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %41, i32 0, i32 7
  %43 = call i32 @prod_child(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %46 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %45, i32 0, i32 7
  %47 = call i32 @PARENT_FAIL_IF(i32 %44, i32* %46)
  %48 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %49 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %48, i32 0, i32 7
  %50 = call i32 @wait_child(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %288

55:                                               ; preds = %2
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NT_PPC_PKEY, align 4
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %59 = call i32 @ptrace_read_regs(i32 %56, i32 %57, i64* %58, i32 3)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %62 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %61, i32 0, i32 7
  %63 = call i32 @PARENT_FAIL_IF(i32 %60, i32* %62)
  %64 = load i8*, i8** @ptrace_read_running, align 8
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %66 = load i64, i64* %65, align 16
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %64, i64 %66, i64 %68, i64 %70)
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %75 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %80 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %79, i32 0, i32 7
  %81 = call i32 @PARENT_FAIL_IF(i32 %78, i32* %80)
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %85 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  %88 = zext i1 %87 to i32
  %89 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %90 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %89, i32 0, i32 7
  %91 = call i32 @PARENT_FAIL_IF(i32 %88, i32* %90)
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %93 = load i64, i64* %92, align 16
  %94 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %95 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %100 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %99, i32 0, i32 7
  %101 = call i32 @PARENT_FAIL_IF(i32 %98, i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @NT_PPC_PKEY, align 4
  %104 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %105 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %104, i32 0, i32 1
  %106 = call i32 @ptrace_write_regs(i32 %102, i32 %103, i64* %105, i32 1)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %109 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %108, i32 0, i32 7
  %110 = call i32 @PARENT_FAIL_IF(i32 %107, i32* %109)
  %111 = load i8*, i8** @ptrace_write_running, align 8
  %112 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %113 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %111, i64 %114)
  %116 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %117 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %116, i32 0, i32 7
  %118 = call i32 @prod_child(i32* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %121 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %120, i32 0, i32 7
  %122 = call i32 @PARENT_FAIL_IF(i32 %119, i32* %121)
  %123 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %124 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %123, i32 0, i32 7
  %125 = call i32 @wait_child(i32* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %55
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %288

130:                                              ; preds = %55
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @NT_PPC_PKEY, align 4
  %133 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %134 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %133, i32 0, i32 2
  %135 = call i32 @ptrace_write_regs(i32 %131, i32 %132, i64* %134, i32 1)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %138 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %137, i32 0, i32 7
  %139 = call i32 @PARENT_FAIL_IF(i32 %136, i32* %138)
  %140 = load i8*, i8** @ptrace_write_running, align 8
  %141 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %142 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %140, i64 %143)
  %145 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %146 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %145, i32 0, i32 7
  %147 = call i32 @prod_child(i32* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %150 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %149, i32 0, i32 7
  %151 = call i32 @PARENT_FAIL_IF(i32 %148, i32* %150)
  %152 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %153 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %152, i32 0, i32 7
  %154 = call i32 @wait_child(i32* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %130
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %288

159:                                              ; preds = %130
  %160 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %161 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 %162, i64* %163, align 16
  %164 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %165 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %166, i64* %167, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @NT_PPC_PKEY, align 4
  %170 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %171 = call i32 @ptrace_write_regs(i32 %168, i32 %169, i64* %170, i32 2)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %177 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %176, i32 0, i32 7
  %178 = call i32 @PARENT_FAIL_IF(i32 %175, i32* %177)
  %179 = load i8*, i8** @ptrace_write_running, align 8
  %180 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %181 = load i64, i64* %180, align 16
  %182 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %179, i64 %181, i64 %183)
  %185 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %186 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %187, i64* %188, align 16
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @NT_PPC_PKEY, align 4
  %191 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %192 = call i32 @ptrace_write_regs(i32 %189, i32 %190, i64* %191, i32 3)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %198 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %197, i32 0, i32 7
  %199 = call i32 @PARENT_FAIL_IF(i32 %196, i32* %198)
  %200 = load i8*, i8** @ptrace_write_running, align 8
  %201 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %202 = load i64, i64* %201, align 16
  %203 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %206 = load i64, i64* %205, align 16
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %200, i64 %202, i64 %204, i64 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @NT_PPC_PKEY, align 4
  %210 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %211 = call i32 @ptrace_read_regs(i32 %208, i32 %209, i64* %210, i32 3)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %214 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %213, i32 0, i32 7
  %215 = call i32 @PARENT_FAIL_IF(i32 %212, i32* %214)
  %216 = load i8*, i8** @ptrace_read_running, align 8
  %217 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %218 = load i64, i64* %217, align 16
  %219 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %222 = load i64, i64* %221, align 16
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %216, i64 %218, i64 %220, i64 %222)
  %224 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %225 = load i64, i64* %224, align 16
  %226 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %227 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %225, %228
  %230 = zext i1 %229 to i32
  %231 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %232 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %231, i32 0, i32 7
  %233 = call i32 @PARENT_FAIL_IF(i32 %230, i32* %232)
  %234 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %237 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %235, %238
  %240 = zext i1 %239 to i32
  %241 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %242 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %241, i32 0, i32 7
  %243 = call i32 @PARENT_FAIL_IF(i32 %240, i32* %242)
  %244 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %245 = load i64, i64* %244, align 16
  %246 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %247 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  %250 = zext i1 %249 to i32
  %251 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %252 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %251, i32 0, i32 7
  %253 = call i32 @PARENT_FAIL_IF(i32 %250, i32* %252)
  %254 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %255 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %254, i32 0, i32 7
  %256 = call i32 @prod_child(i32* %255)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %259 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %258, i32 0, i32 7
  %260 = call i32 @PARENT_FAIL_IF(i32 %257, i32* %259)
  %261 = call i32 @wait(i32* %8)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %159
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %267 = load i32, i32* @TEST_PASS, align 4
  store i32 %267, i32* %7, align 4
  br label %286

268:                                              ; preds = %159
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @WIFEXITED(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %268
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %274 = load i32, i32* @TEST_FAIL, align 4
  store i32 %274, i32* %7, align 4
  br label %285

275:                                              ; preds = %268
  %276 = load i32, i32* %8, align 4
  %277 = call i64 @WEXITSTATUS(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i32, i32* @TEST_FAIL, align 4
  br label %283

281:                                              ; preds = %275
  %282 = load i32, i32* @TEST_PASS, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %283, %272
  br label %286

286:                                              ; preds = %285, %265
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %286, %157, %128, %53
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32 @ptrace_read_regs(i32, i32, i64*, i32) #1

declare dso_local i32 @PARENT_SKIP_IF_UNSUPPORTED(i32, i32*) #1

declare dso_local i32 @PARENT_FAIL_IF(i32, i32*) #1

declare dso_local i32 @prod_child(i32*) #1

declare dso_local i32 @wait_child(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ptrace_write_regs(i32, i32, i64*, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
