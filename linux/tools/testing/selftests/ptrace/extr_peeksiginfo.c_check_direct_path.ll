; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_check_direct_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_check_direct_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_peeksiginfo_args = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@SIGNR = common dso_local global i32 0, align 4
@PTRACE_PEEKSIGINFO_SHARED = common dso_local global i64 0, align 8
@TEST_SICODE_SHARE = common dso_local global i32 0, align 4
@TEST_SICODE_PRIV = common dso_local global i32 0, align 4
@PTRACE_PEEKSIGINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ptrace() failed: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%d: Wrong siginfo i=%d si_code=%d si_int=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Only %d signals were read\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_direct_path(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptrace_peeksiginfo_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 2
  store i64 0, i64* %18, align 8
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* @SIGNR, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.TYPE_3__, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i64, i64* @PTRACE_PEEKSIGINFO_SHARED, align 8
  %27 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @TEST_SICODE_SHARE, align 4
  store i32 %28, i32* %14, align 4
  br label %32

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @TEST_SICODE_PRIV, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %92, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SIGNR, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @PTRACE_PEEKSIGINFO, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sys_ptrace(i32 %40, i32 %41, %struct.ptrace_peeksiginfo_args* %7, %struct.TYPE_3__* %22)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %101

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %93

51:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %87, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %87

73:                                               ; preds = %64, %56
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %80, i32 %85)
  br label %101

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %52

92:                                               ; preds = %52
  br label %33

93:                                               ; preds = %50, %33
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @SIGNR, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %101

100:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %97, %73, %45
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sys_ptrace(i32, i32, %struct.ptrace_peeksiginfo_args*, %struct.TYPE_3__*) #2

declare dso_local i32 @err(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
