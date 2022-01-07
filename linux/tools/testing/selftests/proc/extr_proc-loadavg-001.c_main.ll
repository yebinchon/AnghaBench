; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-loadavg-001.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-loadavg-001.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWPID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"/proc/loadavg\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @CLONE_NEWPID, align 4
  %9 = call i32 @unshare(i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOSYS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EPERM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11
  store i32 4, i32* %1, align 4
  br label %128

20:                                               ; preds = %15
  store i32 1, i32* %1, align 4
  br label %128

21:                                               ; preds = %0
  %22 = call i32 (...) @fork()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %128

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %128

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %38 = call i32 @read(i32 %36, i8* %37, i32 128)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %128

42:                                               ; preds = %35
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -3
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 49
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %65, label %64

64:                                               ; preds = %58, %52, %42
  store i32 1, i32* %1, align 4
  br label %128

65:                                               ; preds = %58
  %66 = call i32 (...) @fork()
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %1, align 4
  br label %128

70:                                               ; preds = %65
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %128

74:                                               ; preds = %70
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @waitpid(i32 %75, i32* null, i32 0)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %1, align 4
  br label %128

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SEEK_SET, align 4
  %82 = call i32 @lseek(i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %85 = call i32 @read(i32 %83, i8* %84, i32 128)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 1, i32* %1, align 4
  br label %128

89:                                               ; preds = %79
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -3
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %111

99:                                               ; preds = %89
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 -2
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 50
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 -1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %112, label %111

111:                                              ; preds = %105, %99, %89
  store i32 1, i32* %1, align 4
  br label %128

112:                                              ; preds = %105
  store i32 0, i32* %1, align 4
  br label %128

113:                                              ; preds = %26
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @waitpid(i32 %114, i32* %3, i32 0)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %1, align 4
  br label %128

118:                                              ; preds = %113
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @WIFEXITED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = call i64 @WEXITSTATUS(i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %1, align 4
  br label %128

127:                                              ; preds = %122, %118
  store i32 1, i32* %1, align 4
  br label %128

128:                                              ; preds = %127, %126, %117, %112, %111, %88, %78, %73, %69, %64, %41, %34, %25, %20, %19
  %129 = load i32, i32* %1, align 4
  ret i32 %129
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
