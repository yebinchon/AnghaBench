; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_arg_fault.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_arg_fault.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIGSTKSZ = common dso_local global i32 0, align 4
@altstack_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sigaltstack\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv_or_sigbus = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@sigill = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"[RUN]\09SYSENTER with invalid state\0A\00", align 1
@jmpbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"[RUN]\09SYSCALL with invalid state\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"[RUN]\09SYSENTER with TF and invalid state\0A\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@sigtrap = common dso_local global i32 0, align 4
@sigtrap_consecutive_syscalls = common dso_local global i64 0, align 8
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"[RUN]\09SYSCALL with TF and invalid state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* @SIGSTKSZ, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %6 = load i32, i32* @altstack_data, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i64 @sigaltstack(%struct.TYPE_3__* %2, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @SIGSEGV, align 4
  %13 = load i32, i32* @sigsegv_or_sigbus, align 4
  %14 = load i32, i32* @SA_ONSTACK, align 4
  %15 = call i32 @sethandler(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @SIGBUS, align 4
  %17 = load i32, i32* @sigsegv_or_sigbus, align 4
  %18 = load i32, i32* @SA_ONSTACK, align 4
  %19 = call i32 @sethandler(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @SIGILL, align 4
  %21 = load i32, i32* @sigill, align 4
  %22 = load i32, i32* @SA_ONSTACK, align 4
  %23 = call i32 @sethandler(i32 %20, i32 %21, i32 %22)
  %24 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @jmpbuf, align 4
  %26 = call i64 @sigsetjmp(i32 %25, i32 1) #3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  call void asm sideeffect "movl $$-1, %eax\0A\09movl $$-1, %ebx\0A\09movl $$-1, %ecx\0A\09movl $$-1, %edx\0A\09movl $$-1, %esi\0A\09movl $$-1, %edi\0A\09movl $$-1, %ebp\0A\09movl $$-1, %esp\0A\09sysenter", "~{memory},~{flags},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %29

29:                                               ; preds = %28, %11
  %30 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @jmpbuf, align 4
  %32 = call i64 @sigsetjmp(i32 %31, i32 1) #3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void asm sideeffect "movl $$-1, %eax\0A\09movl $$-1, %ebx\0A\09movl $$-1, %ecx\0A\09movl $$-1, %edx\0A\09movl $$-1, %esi\0A\09movl $$-1, %edi\0A\09movl $$-1, %ebp\0A\09movl $$-1, %esp\0A\09syscall\0A\09ud2", "~{memory},~{flags},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !3
  br label %35

35:                                               ; preds = %34, %29
  %36 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @SIGTRAP, align 4
  %38 = load i32, i32* @sigtrap, align 4
  %39 = load i32, i32* @SA_ONSTACK, align 4
  %40 = call i32 @sethandler(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @jmpbuf, align 4
  %42 = call i64 @sigsetjmp(i32 %41, i32 1) #3
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  store i64 0, i64* @sigtrap_consecutive_syscalls, align 8
  %45 = call i32 (...) @get_eflags()
  %46 = load i32, i32* @X86_EFLAGS_TF, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @set_eflags(i32 %47)
  call void asm sideeffect "movl $$-1, %eax\0A\09movl $$-1, %ebx\0A\09movl $$-1, %ecx\0A\09movl $$-1, %edx\0A\09movl $$-1, %esi\0A\09movl $$-1, %edi\0A\09movl $$-1, %ebp\0A\09movl $$-1, %esp\0A\09sysenter", "~{memory},~{flags},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  br label %49

49:                                               ; preds = %44, %35
  %50 = call i32 (...) @get_eflags()
  %51 = load i32, i32* @X86_EFLAGS_TF, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @set_eflags(i32 %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @jmpbuf, align 4
  %57 = call i64 @sigsetjmp(i32 %56, i32 1) #3
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  store i64 0, i64* @sigtrap_consecutive_syscalls, align 8
  %60 = call i32 (...) @get_eflags()
  %61 = load i32, i32* @X86_EFLAGS_TF, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @set_eflags(i32 %62)
  call void asm sideeffect "movl $$-1, %eax\0A\09movl $$-1, %ebx\0A\09movl $$-1, %ecx\0A\09movl $$-1, %edx\0A\09movl $$-1, %esi\0A\09movl $$-1, %edi\0A\09movl $$-1, %ebp\0A\09movl $$-1, %esp\0A\09syscall\0A\09ud2", "~{memory},~{flags},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !5
  br label %64

64:                                               ; preds = %59, %49
  %65 = call i32 (...) @get_eflags()
  %66 = load i32, i32* @X86_EFLAGS_TF, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @set_eflags(i32 %68)
  ret i32 0
}

declare dso_local i64 @sigaltstack(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @set_eflags(i32) #1

declare dso_local i32 @get_eflags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1106, i32 1124, i32 1149, i32 1174, i32 1199, i32 1224, i32 1249, i32 1274, i32 1299}
!3 = !{i32 1452, i32 1470, i32 1495, i32 1520, i32 1545, i32 1570, i32 1595, i32 1620, i32 1645, i32 1662}
!4 = !{i32 1942, i32 1960, i32 1985, i32 2010, i32 2035, i32 2060, i32 2085, i32 2110, i32 2135}
!5 = !{i32 2419, i32 2437, i32 2462, i32 2487, i32 2512, i32 2537, i32 2562, i32 2587, i32 2612, i32 2629}
