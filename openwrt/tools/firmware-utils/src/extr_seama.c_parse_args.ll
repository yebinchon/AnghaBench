; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"hvd:s:i:m:x:\00", align 1
@o_verbose = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@o_dump = common dso_local global i8* null, align 8
@o_seal = common dso_local global i8* null, align 8
@o_extract = common dso_local global i8* null, align 8
@o_isize = common dso_local global i32 0, align 4
@MAX_IMAGE = common dso_local global i32 0, align 4
@o_images = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Exceed the maximum acceptable image files.!\0A\00", align 1
@o_msize = common dso_local global i32 0, align 4
@MAX_META = common dso_local global i32 0, align 4
@o_meta = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Exceed the maximum acceptable META data.!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %54, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %13 [
    i32 104, label %15
    i32 118, label %17
    i32 100, label %20
    i32 115, label %22
    i32 120, label %24
    i32 105, label %26
    i32 109, label %40
  ]

13:                                               ; preds = %11
  %14 = call i32 @show_usage(i32 -1)
  br label %54

15:                                               ; preds = %11
  %16 = call i32 @show_usage(i32 0)
  br label %54

17:                                               ; preds = %11
  %18 = load i32, i32* @o_verbose, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @o_verbose, align 4
  br label %54

20:                                               ; preds = %11
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @o_dump, align 8
  br label %54

22:                                               ; preds = %11
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @o_seal, align 8
  br label %54

24:                                               ; preds = %11
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @o_extract, align 8
  br label %54

26:                                               ; preds = %11
  %27 = load i32, i32* @o_isize, align 4
  %28 = load i32, i32* @MAX_IMAGE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  %32 = load i8**, i8*** @o_images, align 8
  %33 = load i32, i32* @o_isize, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @o_isize, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  store i8* %31, i8** %36, align 8
  br label %39

37:                                               ; preds = %26
  %38 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  br label %54

40:                                               ; preds = %11
  %41 = load i32, i32* @o_msize, align 4
  %42 = load i32, i32* @MAX_META, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8
  %46 = load i8**, i8*** @o_meta, align 8
  %47 = load i32, i32* @o_msize, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @o_msize, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  store i8* %45, i8** %50, align 8
  br label %53

51:                                               ; preds = %40
  %52 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53, %39, %24, %22, %20, %17, %15, %13
  br label %6

55:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @show_usage(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
