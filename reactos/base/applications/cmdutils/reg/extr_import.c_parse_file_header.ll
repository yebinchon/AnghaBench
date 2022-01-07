; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_file_header.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_parse_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_file_header.header_31 = internal constant [8 x i8] c"REGEDIT\00", align 1
@parse_file_header.header_40 = internal constant [9 x i8] c"REGEDIT4\00", align 1
@parse_file_header.header_50 = internal constant [37 x i8] c"Windows Registry Editor Version 5.00\00", align 16
@REG_VERSION_31 = common dso_local global i32 0, align 4
@REG_VERSION_40 = common dso_local global i32 0, align 4
@REG_VERSION_50 = common dso_local global i32 0, align 4
@REG_VERSION_FUZZY = common dso_local global i32 0, align 4
@REG_VERSION_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 9
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ true, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %4

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmpW(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @parse_file_header.header_31, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @REG_VERSION_31, align 4
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmpW(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @parse_file_header.header_40, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @REG_VERSION_40, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmpW(i8* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @parse_file_header.header_50, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @REG_VERSION_50, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strncmpW(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @parse_file_header.header_31, i64 0, i64 0), i32 7)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @REG_VERSION_FUZZY, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @REG_VERSION_INVALID, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %35, %29, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @strcmpW(i8*, i8*) #1

declare dso_local i32 @strncmpW(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
