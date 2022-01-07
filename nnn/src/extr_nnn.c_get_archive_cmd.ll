; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_archive_cmd.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_get_archive_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utils = common dso_local global i32* null, align 8
@ATOOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"atool -a\00", align 1
@ARCHIVE_CMD_LEN = common dso_local global i32 0, align 4
@BSDTAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"bsdtar -acvf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"zip -r\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tar -acvf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @get_archive_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_archive_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** @utils, align 8
  %6 = load i64, i64* @ATOOL, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @getutil(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @ARCHIVE_CMD_LEN, align 4
  %14 = call i32 @xstrlcpy(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %40

15:                                               ; preds = %2
  %16 = load i32*, i32** @utils, align 8
  %17 = load i64, i64* @BSDTAR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @getutil(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @ARCHIVE_CMD_LEN, align 4
  %25 = call i32 @xstrlcpy(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %39

26:                                               ; preds = %15
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @is_suffix(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @ARCHIVE_CMD_LEN, align 4
  %33 = call i32 @xstrlcpy(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @ARCHIVE_CMD_LEN, align 4
  %37 = call i32 @xstrlcpy(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39, %11
  ret void
}

declare dso_local i64 @getutil(i32) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i64 @is_suffix(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
