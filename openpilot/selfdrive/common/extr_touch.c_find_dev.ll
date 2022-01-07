; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_touch.c_find_dev.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_touch.c_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"/dev/input\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %11 = call i32* @opendir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @assert(i32 %13)
  store %struct.dirent* null, %struct.dirent** %4, align 8
  br label %15

15:                                               ; preds = %86, %25, %0
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.dirent* @readdir(i32* %16)
  store %struct.dirent* %17, %struct.dirent** %4, align 8
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load %struct.dirent*, %struct.dirent** %4, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strncmp(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %15

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @dirfd(i32* %27)
  %29 = load %struct.dirent*, %struct.dirent** %4, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @openat(i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @KEY_MAX, align 4
  %39 = sdiv i32 %38, 8
  %40 = add nsw i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %6, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @EV_ABS, align 4
  %46 = trunc i64 %41 to i32
  %47 = call i32 @EVIOCGBIT(i32 %45, i32 %46)
  %48 = call i32 @ioctl(i32 %44, i32 %47, i8* %43)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %54 = sdiv i32 %53, 8
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %56 = sdiv i32 %55, 8
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %43, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %26
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %43, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  store i32 3, i32* %10, align 4
  br label %83

80:                                               ; preds = %67, %26
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @close(i32 %81)
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %78
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %10, align 4
  switch i32 %85, label %91 [
    i32 0, label %86
    i32 3, label %87
  ]

86:                                               ; preds = %83
  br label %15

87:                                               ; preds = %83, %15
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @closedir(i32* %88)
  %90 = load i32, i32* %2, align 4
  ret i32 %90

91:                                               ; preds = %83
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @openat(i32, i32, i32) #1

declare dso_local i32 @dirfd(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @EVIOCGBIT(i32, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
