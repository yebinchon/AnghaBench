; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_exec.c_find_other_exec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_exec.c_find_other_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/%s%s\00", align 1
@EXE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\22%s\22 -V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_other_exec(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @find_my_exec(i8* %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @last_dir_separator(i8* %27)
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @canonicalize_path(i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i32, i32* @MAXPGPATH, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %36, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @EXE, align 4
  %42 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %35, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @validate_exec(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %61

47:                                               ; preds = %26
  %48 = trunc i64 %15 to i32
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = trunc i64 %19 to i32
  %52 = call i32 @pipe_read_line(i8* %17, i8* %20, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %61

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strcmp(i8* %20, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %61

60:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %59, %54, %46, %25
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @find_my_exec(i8*, i8*) #2

declare dso_local i8* @last_dir_separator(i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @validate_exec(i8*) #2

declare dso_local i32 @pipe_read_line(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
