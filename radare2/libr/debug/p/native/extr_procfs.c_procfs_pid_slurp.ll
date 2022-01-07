; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_procfs.c_procfs_pid_slurp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_procfs.c_procfs_pid_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/proc/%d/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procfs_pid_slurp(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @r_sandbox_open(i8* %21, i32 %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @free(i8* %27)
  store i32 -1, i32* %5, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @read(i32 %30, i8* %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  store i32 0, i32* %11, align 4
  br label %52

46:                                               ; preds = %29
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @r_sys_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %26, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @r_str_newf(i8*, i32, i8*) #1

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
