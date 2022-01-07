; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@AT_SYSINFO = common dso_local global i32 0, align 4
@sysinfo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"\09AT_SYSINFO is 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[WARN]\09dladdr failed on AT_SYSINFO\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"[OK]\09AT_SYSINFO maps to %s, loaded at 0x%p\0A\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@sigtrap = common dso_local global i32 0, align 4
@SYS_getpid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"[RUN]\09Set TF and check a fast syscall\0A\00", align 1
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@got_sysinfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"[WARN]\09syscall(2) didn't enter AT_SYSINFO\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[FAIL]\09TF is still set\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"[FAIL]\09There were errors\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"[OK]\09All is well\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @AT_SYSINFO, align 4
  %4 = call i64 @getauxval(i32 %3)
  store i64 %4, i64* @sysinfo, align 8
  %5 = load i64, i64* @sysinfo, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* @sysinfo, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @dladdr(i8* %8, %struct.TYPE_3__* %2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %19

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %11
  %20 = load i32, i32* @SIGTRAP, align 4
  %21 = load i32, i32* @sigtrap, align 4
  %22 = call i32 @sethandler(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @SYS_getpid, align 4
  %24 = call i32 (i32, ...) @syscall(i32 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 (...) @get_eflags()
  %27 = load i32, i32* @X86_EFLAGS_TF, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @set_eflags(i32 %28)
  %30 = load i32, i32* @SYS_getpid, align 4
  %31 = call i32 (i32, ...) @syscall(i32 %30, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6)
  %32 = load i32, i32* @got_sysinfo, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %19
  %35 = call i32 (...) @get_eflags()
  %36 = load i32, i32* @X86_EFLAGS_TF, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @set_eflags(i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %19
  %42 = call i32 (...) @get_eflags()
  %43 = load i32, i32* @X86_EFLAGS_TF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i64, i64* @nerrs, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @nerrs, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i64, i64* @nerrs, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @getauxval(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dladdr(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare dso_local i32 @syscall(i32, ...) #1

declare dso_local i32 @set_eflags(i32) #1

declare dso_local i32 @get_eflags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
