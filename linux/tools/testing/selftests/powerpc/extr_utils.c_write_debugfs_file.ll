; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_write_debugfs_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_write_debugfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"/sys/kernel/debug/\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_debugfs_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = call i32 @strlen(i8* %15)
  %20 = sub nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @strncat(i8* %15, i8* %17, i32 %21)
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = call i32 @open(i8* %15, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

28:                                               ; preds = %2
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @snprintf(i8* %29, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @write(i32 %32, i8* %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %38, %26
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
