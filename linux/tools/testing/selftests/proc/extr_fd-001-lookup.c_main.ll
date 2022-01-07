; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-001-lookup.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-001-lookup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }

@CLONE_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_LNK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_PATH = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @CLONE_FILES, align 4
  %10 = call i32 @unshare(i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %139

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %91, %13
  %15 = call i32* @opendir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %139

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.dirent* @xreaddir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %2, align 8
  %22 = load %struct.dirent*, %struct.dirent** %2, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DT_DIR, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.dirent*, %struct.dirent** %2, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @streq(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.dirent* @xreaddir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %2, align 8
  %36 = load %struct.dirent*, %struct.dirent** %2, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DT_DIR, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.dirent*, %struct.dirent** %2, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @streq(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %84, %19
  %49 = load i32*, i32** %5, align 8
  %50 = call %struct.dirent* @xreaddir(i32* %49)
  store %struct.dirent* %50, %struct.dirent** %2, align 8
  %51 = load %struct.dirent*, %struct.dirent** %2, align 8
  %52 = icmp ne %struct.dirent* %51, null
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load %struct.dirent*, %struct.dirent** %2, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DT_LNK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.dirent*, %struct.dirent** %2, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @xstrtoull(i32 %63, i8** %8)
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = trunc i64 %72 to i32
  %74 = zext i32 %73 to i64
  %75 = icmp eq i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @dirfd(i32* %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %53
  br label %48

85:                                               ; preds = %53
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @close(i32 %86)
  br label %88

88:                                               ; preds = %85, %48
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @closedir(i32* %89)
  br label %91

91:                                               ; preds = %88
  %92 = load %struct.dirent*, %struct.dirent** %2, align 8
  %93 = icmp ne %struct.dirent* %92, null
  br i1 %93, label %14, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @O_PATH, align 4
  %96 = load i32, i32* @O_DIRECTORY, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @test_lookup(i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* @O_PATH, align 4
  %108 = load i32, i32* @O_DIRECTORY, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  store i32 1023, i32* %4, align 4
  br label %115

115:                                              ; preds = %125, %94
  %116 = load i32, i32* %4, align 4
  %117 = icmp ugt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @dup2(i32 %119, i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %4, align 4
  %127 = udiv i32 %126, 2
  store i32 %127, i32* %4, align 4
  br label %115

128:                                              ; preds = %124, %115
  %129 = load i32, i32* %4, align 4
  %130 = icmp ugt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @close(i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @test_lookup(i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @close(i32 %137)
  store i32 0, i32* %1, align 4
  br label %139

139:                                              ; preds = %128, %18, %12
  %140 = load i32, i32* %1, align 4
  ret i32 %140
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @xreaddir(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i64 @xstrtoull(i32, i8**) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @test_lookup(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
