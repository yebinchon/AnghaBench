; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_multicpu_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_multicpu_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"[SKIP]\09Cannot set affinity to CPU 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[SKIP]\09Cannot set affinity to CPU 0\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"[RUN]\09Cross-CPU LDT invalidation\0A\00", align 1
@threadproc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@jmpbuf = common dso_local global i32 0, align 4
@ftx = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"modify_ldt\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"[SKIP]\09modify_ldt unavailable\0A\00", align 1
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAKE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"[FAIL]\09%d of %d iterations failed\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"[OK]\09All %d iterations succeeded\0A\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_multicpu_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_multicpu_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.user_desc, align 4
  store i32 0, i32* %3, align 4
  store i32 5, i32* %4, align 4
  %8 = call i32 @CPU_ZERO(i32* %1)
  %9 = call i32 @CPU_SET(i32 1, i32* %1)
  %10 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %97

14:                                               ; preds = %0
  %15 = call i32 @CPU_ZERO(i32* %1)
  %16 = call i32 @CPU_SET(i32 0, i32* %1)
  %17 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %97

21:                                               ; preds = %14
  %22 = load i32, i32* @SIGSEGV, align 4
  %23 = load i32, i32* @sigsegv, align 4
  %24 = call i32 @sethandler(i32 %22, i32 %23, i32 0)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @threadproc, align 4
  %27 = call i64 @pthread_create(i32* %2, i32 0, i32 %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  call void asm sideeffect "mov %ss, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %6) #4, !srcloc !2
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %73, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i32, i32* @jmpbuf, align 4
  %37 = call i64 @sigsetjmp(i32 %36, i32 1) #5
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %73

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %44, %40
  %42 = load i32, i32* @ftx, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %41

45:                                               ; preds = %41
  %46 = bitcast %struct.user_desc* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 36, i1 false)
  %47 = bitcast i8* %46 to %struct.user_desc*
  %48 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %47, i32 0, i32 0
  store i32 1048575, i32* %48, align 4
  %49 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %47, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %47, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = call i64 @safe_modify_ldt(i32 17, %struct.user_desc* %7, i32 36)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ENOSYS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %76

61:                                               ; preds = %45
  store i32 1, i32* @ftx, align 4
  %62 = load i32, i32* @SYS_futex, align 4
  %63 = load i32, i32* @FUTEX_WAKE, align 4
  %64 = call i32 @syscall(i32 %62, i32* @ftx, i32 %63, i32 0, i32* null, i32* null, i32 0)
  call void asm sideeffect "mov $0, %ss", "r,~{dirflag},~{fpsr},~{flags}"(i32 7) #4, !srcloc !3
  store i32 2, i32* @ftx, align 4
  br label %65

65:                                               ; preds = %68, %61
  %66 = load i32, i32* @ftx, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %65

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = load i16, i16* %6, align 2
  call void asm sideeffect "mov $0, %ss", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %72) #4, !srcloc !4
  br label %73

73:                                               ; preds = %69, %39
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %32

76:                                               ; preds = %59, %32
  store i32 100, i32* @ftx, align 4
  %77 = load i32, i32* @SYS_futex, align 4
  %78 = load i32, i32* @FUTEX_WAKE, align 4
  %79 = call i32 @syscall(i32 %77, i32* @ftx, i32 %78, i32 0, i32* null, i32* null, i32 0)
  %80 = load i32, i32* %2, align 4
  %81 = call i64 @pthread_join(i32 %80, i32* null)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @nerrs, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @nerrs, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %12, %19, %94, %88
  ret void
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare !callback !5 dso_local i64 @pthread_create(i32*, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @safe_modify_ldt(i32, %struct.user_desc*, i32) #1

declare dso_local i32 @syscall(i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1674}
!3 = !{i32 2300}
!4 = !{i32 2405}
!5 = !{!6}
!6 = !{i64 2, i64 3, i1 false}
