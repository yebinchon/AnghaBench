; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/nsfs/extr_pidns.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/nsfs/extr_pidns.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr_clone_arg = type { i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@__const.main.ns_strs = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], align 16
@__const.main.path = private unnamed_addr constant [24 x i8] c"/proc/0123456789/ns/pid\00", align 16
@child = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i32 0, align 4
@CLONE_NEWPID = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"/proc/%d/ns/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@NS_GET_PARENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to get a parent pidns\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"/proc/self/ns/%s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Unable to stat %s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unable to stat the parent pidns\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"NS_GET_PARENT returned a wrong namespace\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Don't get EPERM\00", align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [24 x i8], align 16
  %8 = alloca %struct.cr_clone_arg, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.main.ns_strs to i8*), i64 16, i1 false)
  %16 = bitcast [24 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.main.path, i32 0, i32 0), i64 24, i1 false)
  %17 = load i32, i32* @child, align 4
  %18 = getelementptr inbounds %struct.cr_clone_arg, %struct.cr_clone_arg* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLONE_NEWUSER, align 4
  %21 = load i32, i32* @CLONE_NEWPID, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SIGCHLD, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @clone(i32 %17, i32 %19, i32 %24, i32* null)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %101

34:                                               ; preds = %31
  %35 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* %14, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %35, i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %41)
  %43 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %34
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @NS_GET_PARENT, align 4
  %54 = call i32 @ioctl(i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %51
  %60 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %60, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %67 = call i64 @stat(i8* %66, %struct.stat* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  store i32 %71, i32* %3, align 4
  br label %106

72:                                               ; preds = %59
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @fstat(i32 %73, %struct.stat* %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 %85, i32* %3, align 4
  br label %106

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @NS_GET_PARENT, align 4
  %89 = call i32 @ioctl(i32 %87, i32 %88)
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EPERM, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %86
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %96, i32* %3, align 4
  br label %106

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %31

101:                                              ; preds = %31
  %102 = load i64, i64* %14, align 8
  %103 = load i32, i32* @SIGKILL, align 4
  %104 = call i32 @kill(i64 %102, i32 %103)
  %105 = call i32 @wait(i32* null)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %95, %84, %76, %69, %57, %48, %28
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @clone(i32, i32, i32, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @kill(i64, i32) #2

declare dso_local i32 @wait(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
