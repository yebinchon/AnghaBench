; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SIGNR = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fork() failed: %m\00", align 1
@TEST_SICODE_SHARE = common dso_local global i32 0, align 4
@TEST_SICODE_PRIV = common dso_local global i32 0, align 4
@PTRACE_ATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@PTRACE_KILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @SIGNR, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.TYPE_4__, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %18 = call i32 @sigemptyset(i32* %10)
  %19 = load i32, i32* @SIGRTMIN, align 4
  %20 = call i32 @sigaddset(i32* %10, i32 %19)
  %21 = load i32, i32* @SIG_BLOCK, align 4
  %22 = call i32 @sigprocmask(i32 %21, i32* %10, i32* null)
  %23 = call i32 (...) @fork()
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %108

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = call i32 (...) @getppid()
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %39, %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %13, align 4
  %36 = call i32 (...) @getppid()
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %34
  %40 = call i32 @sleep(i32 1)
  br label %33

41:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %108

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SIGNR, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i32, i32* @TEST_SICODE_SHARE, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SIGRTMIN, align 4
  %55 = call i32 @sys_rt_sigqueueinfo(i32 %53, i32 %54, %struct.TYPE_4__* %17)
  %56 = load i32, i32* @TEST_SICODE_PRIV, align 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @SIGRTMIN, align 4
  %63 = call i32 @sys_rt_tgsigqueueinfo(i32 %60, i32 %61, i32 %62, %struct.TYPE_4__* %17)
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load i32, i32* @PTRACE_ATTACH, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sys_ptrace(i32 %68, i32 %69, i32* null, i32* null)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %108

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @waitpid(i32 %74, i32* null, i32 0)
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @check_direct_path(i32 %76, i32 0, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %98

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @SIGNR, align 4
  %83 = call i64 @check_direct_path(i32 %81, i32 0, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @check_direct_path(i32 %87, i32 1, i32 3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @check_error_paths(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %98

96:                                               ; preds = %91
  %97 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %95, %90, %85, %79
  %99 = load i32, i32* @PTRACE_KILL, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @sys_ptrace(i32 %99, i32 %100, i32* null, i32* null)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %108

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @waitpid(i32 %105, i32* null, i32 0)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %108

108:                                              ; preds = %104, %103, %72, %41, %26
  %109 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @getppid(...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @sys_rt_sigqueueinfo(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @sys_rt_tgsigqueueinfo(i32, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @sys_ptrace(i32, i32, i32*, i32*) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i64 @check_direct_path(i32, i32, i32) #2

declare dso_local i64 @check_error_paths(i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
