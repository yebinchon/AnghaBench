; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_iopl.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_iopl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"sched_setaffinity to CPU 0\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"[OK]\09iopl(3) failed (%d) -- try running as root\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"iopl(0)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09child: set IOPL to 3\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"iopl\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"[RUN]\09child: write to 0x80\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"[FAIL]\09Child died\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"[FAIL]\09Child failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"[OK]\09Child succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"[RUN]\09parent: write to 0x80 (should fail)\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv = common dso_local global i32 0, align 4
@jmpbuf = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"[OK]\09write was denied\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"[FAIL]\09write was allowed\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\09iopl(3)\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"iopl(3)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\09Drop privileges\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"[WARN]\09Dropping privileges failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"[RUN]\09iopl(3) unprivileged but with IOPL==3\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"[FAIL]\09iopl(3) should work if iopl is already 3 even if unprivileged\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"[RUN]\09iopl(0) unprivileged\0A\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"[FAIL]\09iopl(0) should work if iopl is already 3 even if unprivileged\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"[RUN]\09iopl(3) unprivileged\0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"[FAIL]\09iopl(3) should fail if when unprivileged if iopl==0\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"[OK]\09Failed as expected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @CPU_ZERO(i32* %2)
  %6 = call i32 @CPU_SET(i32 0, i32* %2)
  %7 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i64 @iopl(i32 3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32 0, i32* %1, align 4
  br label %122

17:                                               ; preds = %11
  %18 = call i64 @iopl(i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 (...) @fork()
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i64 @iopl(i32 3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  call void asm sideeffect "outb %al, $$0x80", "{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #3, !srcloc !2
  store i32 0, i32* %1, align 4
  br label %122

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @waitpid(i32 %40, i32* %4, i32 0)
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @WIFEXITED(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44, %39
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %50 = load i64, i64* @nerrs, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @nerrs, align 8
  br label %63

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @WEXITSTATUS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %58 = load i64, i64* @nerrs, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @nerrs, align 8
  br label %62

60:                                               ; preds = %52
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %66 = load i32, i32* @SIGSEGV, align 4
  %67 = load i32, i32* @sigsegv, align 4
  %68 = call i32 @sethandler(i32 %66, i32 %67, i32 0)
  %69 = load i32, i32* @jmpbuf, align 4
  %70 = call i64 @sigsetjmp(i32 %69, i32 1) #4
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %78

74:                                               ; preds = %64
  call void asm sideeffect "outb %al, $$0x80", "{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #3, !srcloc !3
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %76 = load i64, i64* @nerrs, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* @nerrs, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %80 = call i64 @iopl(i32 3)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %86 = call i64 @setresuid(i32 1, i32 1, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %117

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  %92 = call i64 @iopl(i32 3)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0))
  %96 = load i64, i64* @nerrs, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* @nerrs, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %100 = call i64 @iopl(i32 0)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i64 0, i64 0))
  %104 = load i64, i64* @nerrs, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* @nerrs, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %108 = call i64 @iopl(i32 3)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0))
  %112 = load i64, i64* @nerrs, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* @nerrs, align 8
  br label %116

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i64, i64* @nerrs, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %117, %37, %14
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @iopl(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @sethandler(i32, i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i64 @setresuid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1220}
!3 = !{i32 1747}
