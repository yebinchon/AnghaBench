; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/nsfs/extr_owner.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/nsfs/extr_owner.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@PR_SET_PDEATHSIG = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@CLONE_NEWUTS = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to read from pipe\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/proc/%d/ns/uts\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@NS_GET_USERNS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to get an owning user namespace\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"/proc/%d/ns/user\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"NS_GET_USERNS returned a wrong namespace\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Don't get EPERM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %16 = call i64 @pipe(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %156

19:                                               ; preds = %2
  %20 = call i64 (...) @fork()
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %156

25:                                               ; preds = %19
  %26 = load i64, i64* %13, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* @PR_SET_PDEATHSIG, align 4
  %30 = load i32, i32* @SIGKILL, align 4
  %31 = call i32 @prctl(i32 %29, i32 %30)
  %32 = load i32, i32* @CLONE_NEWUTS, align 4
  %33 = load i32, i32* @CLONE_NEWUSER, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @unshare(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %156

39:                                               ; preds = %28
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  br label %46

46:                                               ; preds = %39, %46
  %47 = call i32 @sleep(i32 1)
  br label %46

48:                                               ; preds = %25
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @read(i32 %53, i8* %14, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %156

58:                                               ; preds = %48
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @snprintf(i8* %62, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 @open(i8* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %3, align 4
  br label %156

73:                                               ; preds = %58
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @NS_GET_USERNS, align 4
  %76 = call i32 @ioctl(i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i32 %80, i32* %3, align 4
  br label %156

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @fstat(i32 %82, %struct.stat* %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %86, i32* %3, align 4
  br label %156

87:                                               ; preds = %81
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @snprintf(i8* %88, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %89)
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %92 = call i64 @stat(i8* %91, %struct.stat* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %95, i32* %3, align 4
  br label %156

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 %103, i32* %3, align 4
  br label %156

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @NS_GET_USERNS, align 4
  %107 = call i32 @ioctl(i32 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i32 %111, i32* %3, align 4
  br label %156

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @NS_GET_USERNS, align 4
  %115 = call i32 @ioctl(i32 %113, i32 %114)
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EPERM, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117, %112
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %122, i32* %3, align 4
  br label %156

123:                                              ; preds = %117
  %124 = load i32, i32* @CLONE_NEWUSER, align 4
  %125 = call i64 @unshare(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %128, i32* %3, align 4
  br label %156

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @NS_GET_USERNS, align 4
  %132 = call i32 @ioctl(i32 %130, i32 %131)
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* @errno, align 8
  %136 = load i64, i64* @EPERM, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134, %129
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %139, i32* %3, align 4
  br label %156

140:                                              ; preds = %134
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @NS_GET_USERNS, align 4
  %143 = call i32 @ioctl(i32 %141, i32 %142)
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EPERM, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %140
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %150, i32* %3, align 4
  br label %156

151:                                              ; preds = %145
  %152 = load i64, i64* %13, align 8
  %153 = load i32, i32* @SIGKILL, align 4
  %154 = call i32 @kill(i64 %152, i32 %153)
  %155 = call i32 @wait(i32* null)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %151, %149, %138, %127, %121, %110, %102, %94, %85, %79, %70, %56, %37, %23, %18
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @prctl(i32, i32) #1

declare dso_local i64 @unshare(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
