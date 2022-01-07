; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/tmpfs/extr_bug-link-o-tmpfile.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/tmpfs/extr_bug-link-o-tmpfile.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWNS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error: unshare, errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_PRIVATE = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"error: mount '/', errno %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nr_inodes=3\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"error: mount tmpfs, errno %d\0A\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"error: open 1, errno %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"/tmp/1\00", align 1
@AT_EMPTY_PATH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"error: linkat, errno %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"error: open 2, errno %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @CLONE_NEWNS, align 4
  %4 = call i32 @unshare(i32 %3)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @errno, align 8
  %8 = load i64, i64* @ENOSYS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EPERM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %6
  %15 = load i32, i32* @stderr, align 4
  %16 = load i64, i64* @errno, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 4, i32* %1, align 4
  br label %76

18:                                               ; preds = %10
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 1, i32* %1, align 4
  br label %76

22:                                               ; preds = %0
  %23 = load i32, i32* @MS_PRIVATE, align 4
  %24 = load i32, i32* @MS_REC, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mount(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %25, i8* null)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  store i32 1, i32* %1, align 4
  br label %76

32:                                               ; preds = %22
  %33 = call i32 @mount(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i64, i64* @errno, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %37)
  store i32 1, i32* %1, align 4
  br label %76

39:                                               ; preds = %32
  %40 = load i32, i32* @AT_FDCWD, align 4
  %41 = load i32, i32* @O_WRONLY, align 4
  %42 = load i32, i32* @O_TMPFILE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @openat(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 384)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @stderr, align 4
  %49 = load i64, i64* @errno, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %49)
  store i32 1, i32* %1, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @AT_FDCWD, align 4
  %54 = load i32, i32* @AT_EMPTY_PATH, align 4
  %55 = call i32 @linkat(i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* @errno, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %59)
  store i32 1, i32* %1, align 4
  br label %76

61:                                               ; preds = %51
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* @AT_FDCWD, align 4
  %65 = load i32, i32* @O_WRONLY, align 4
  %66 = load i32, i32* @O_TMPFILE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @openat(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 384)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @stderr, align 4
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %73)
  store i32 1, i32* %1, align 4
  br label %76

75:                                               ; preds = %61
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %75, %71, %57, %47, %35, %28, %18, %14
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @mount(i32*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @openat(i32, i8*, i32, i32) #1

declare dso_local i32 @linkat(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
