; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@shared_scratch = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@sigill = common dso_local global i32 0, align 4
@jmpbuf = common dso_local global i32 0, align 4
@have_fsgsbase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\09FSGSBASE instructions are enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\09FSGSBASE instructions are disabled\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"sched_setaffinity to CPU 0\00", align 1
@threadproc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@main.bases_with_hard_zero = internal global [4 x i64] [i64 0, i64 128, i64 1, i64 8589934592], align 16
@ftx = common dso_local global i32 0, align 4
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@nerrs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @PROT_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_ANONYMOUS, align 4
  %14 = load i32, i32* @MAP_SHARED, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @mmap(i32* null, i32 4096, i32 %12, i32 %15, i32 -1, i32 0)
  store i32 %16, i32* @shared_scratch, align 4
  %17 = load i32, i32* @SIGILL, align 4
  %18 = load i32, i32* @sigill, align 4
  %19 = call i32 @sethandler(i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @jmpbuf, align 4
  %21 = call i64 @sigsetjmp(i32 %20, i32 1) #3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = call i32 (...) @rdfsbase()
  store i32 1, i32* @have_fsgsbase, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

26:                                               ; preds = %0
  %27 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @SIGILL, align 4
  %30 = call i32 @clearhandler(i32 %29)
  %31 = load i32, i32* @SIGSEGV, align 4
  %32 = load i32, i32* @sigsegv, align 4
  %33 = call i32 @sethandler(i32 %31, i32 %32, i32 0)
  %34 = call i32 @check_gs_value(i32 0)
  %35 = call i32 @check_gs_value(i32 1)
  %36 = call i32 @check_gs_value(i32 0)
  %37 = call i32 @check_gs_value(i32 0)
  %38 = call i32 @check_gs_value(i32 0)
  %39 = call i32 @check_gs_value(i32 1)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %62, %28
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @mov_0_gs(i32 0, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @mov_0_gs(i32 1, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @mov_0_gs(i32 0, i32 %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %40

65:                                               ; preds = %40
  %66 = call i32 @CPU_ZERO(i32* %4)
  %67 = call i32 @CPU_SET(i32 0, i32* %4)
  %68 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* @threadproc, align 4
  %74 = call i64 @pthread_create(i32* %2, i32 0, i32 %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %116, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %119

82:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  store i16 0, i16* %7, align 2
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i16, i16* %7, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp slt i32 %89, 5
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i16, i16* %7, align 2
  store i16 %92, i16* %8, align 2
  %93 = load i16, i16* %7, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  call void asm "mov %ss, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %8) #4, !srcloc !2
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* @main.bases_with_hard_zero, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i16, i16* %8, align 2
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* @main.bases_with_hard_zero, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @set_gs_and_switch_to(i64 %101, i16 zeroext %102, i64 %106)
  br label %108

108:                                              ; preds = %97
  %109 = load i16, i16* %7, align 2
  %110 = add i16 %109, 1
  store i16 %110, i16* %7, align 2
  br label %87

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %83

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %79

119:                                              ; preds = %79
  %120 = call i32 (...) @test_unexpected_base()
  %121 = load i32, i32* @have_fsgsbase, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  call void asm sideeffect "mov %ss, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %9) #4, !srcloc !3
  %124 = call i32 @test_wrbase(i16 zeroext 0, i32 0)
  %125 = call i32 @test_wrbase(i16 zeroext 0, i32 1)
  %126 = call i32 @test_wrbase(i16 zeroext 0, i32 0)
  %127 = call i32 @test_wrbase(i16 zeroext 0, i32 -1)
  %128 = load i16, i16* %9, align 2
  %129 = call i32 @test_wrbase(i16 zeroext %128, i32 0)
  %130 = load i16, i16* %9, align 2
  %131 = call i32 @test_wrbase(i16 zeroext %130, i32 1)
  %132 = load i16, i16* %9, align 2
  %133 = call i32 @test_wrbase(i16 zeroext %132, i32 0)
  %134 = load i16, i16* %9, align 2
  %135 = call i32 @test_wrbase(i16 zeroext %134, i32 -1)
  br label %136

136:                                              ; preds = %123, %119
  store i32 3, i32* @ftx, align 4
  %137 = load i32, i32* @SYS_futex, align 4
  %138 = load i32, i32* @FUTEX_WAKE, align 4
  %139 = call i32 @syscall(i32 %137, i32* @ftx, i32 %138, i32 0, i32* null, i32* null, i32 0)
  %140 = load i32, i32* %2, align 4
  %141 = call i64 @pthread_join(i32 %140, i32* null)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %136
  %146 = call i32 (...) @test_ptrace_write_gsbase()
  %147 = load i64, i64* @nerrs, align 8
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 0, i32 1
  ret i32 %150
}

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @rdfsbase(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @clearhandler(i32) #1

declare dso_local i32 @check_gs_value(i32) #1

declare dso_local i32 @mov_0_gs(i32, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare !callback !4 dso_local i64 @pthread_create(i32*, i32, i32, i32) #1

declare dso_local i32 @set_gs_and_switch_to(i64, i16 zeroext, i64) #1

declare dso_local i32 @test_unexpected_base(...) #1

declare dso_local i32 @test_wrbase(i16 zeroext, i32) #1

declare dso_local i32 @syscall(i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @test_ptrace_write_gsbase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2369}
!3 = !{i32 2605}
!4 = !{!5}
!5 = !{i64 2, i64 3, i1 false}
