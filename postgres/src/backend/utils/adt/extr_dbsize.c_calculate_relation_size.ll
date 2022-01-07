; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_calculate_relation_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_dbsize.c_calculate_relation_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @calculate_relation_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_relation_size(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @MAXPGPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @relpathbackend(i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %3
  %23 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %16, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @MAXPGPATH, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %16, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = call i64 @stat(i8* %16, %struct.stat* %12)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %59

43:                                               ; preds = %38
  %44 = load i32, i32* @ERROR, align 4
  %45 = call i32 (...) @errcode_for_file_access()
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %47 = call i32 @ereport(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %22

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @relpathbackend(i32, i32, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
