; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_sigtrap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_sigtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.unwind_state = type { i64, i32 }

@REG_EIP = common dso_local global i64 0, align 8
@got_sysinfo = common dso_local global i32 0, align 4
@sysinfo = common dso_local global i64 0, align 8
@REG_ESP = common dso_local global i64 0, align 8
@return_address = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"\09In vsyscall at 0x%lx, returning to 0x%lx\0A\00", align 1
@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@REG_EFL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"\09Vsyscall is done\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09SIGTRAP at 0x%lx\0A\00", align 1
@trace_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @sigtrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigtrap(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.unwind_state, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @REG_EIP, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @got_sysinfo, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @sysinfo, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  store i32 1, i32* @got_sysinfo, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @REG_ESP, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @return_address, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @return_address, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %25, %21, %3
  %39 = load i32, i32* @got_sysinfo, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %66

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @return_address, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i64, i64* @X86_EFLAGS_TF, align 8
  %48 = xor i64 %47, -1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @REG_EFL, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, %48
  store i64 %56, i64* %54, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %66

58:                                               ; preds = %42
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %8, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  %64 = load i32, i32* @trace_fn, align 4
  %65 = call i32 @_Unwind_Backtrace(i32 %64, %struct.unwind_state* %8)
  br label %66

66:                                               ; preds = %58, %46, %41
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @_Unwind_Backtrace(i32, %struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
