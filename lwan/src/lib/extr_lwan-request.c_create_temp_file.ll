; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@temp_dir = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/lwanXXXXXX\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_temp_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i8*, i8** @temp_dir, align 8
  %12 = icmp ne i8* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @UNLIKELY(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %56

20:                                               ; preds = %0
  %21 = trunc i64 %8 to i32
  %22 = load i8*, i8** @temp_dir, align 8
  %23 = call i32 @snprintf(i8* %10, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = trunc i64 %8 to i32
  %29 = icmp sge i32 %27, %28
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i1 [ true, %20 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @UNLIKELY(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EOVERFLOW, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load i32, i32* @S_IRUSR, align 4
  %40 = load i32, i32* @S_IWUSR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @umask_for_tmpfile(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @O_CLOEXEC, align 4
  %44 = call i32 @mkostemp(i8* %10, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @umask_for_tmpfile(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @LIKELY(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @unlink(i8* %10)
  br label %54

54:                                               ; preds = %52, %38
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %35, %17
  %57 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @umask_for_tmpfile(i32) #2

declare dso_local i32 @mkostemp(i8*, i32) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
