; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"abd:hln:o\00", align 1
@show_all = common dso_local global i32 0, align 4
@name_filter = common dso_local global i32* null, align 8
@print_all_key_names = common dso_local global i32 0, align 4
@swap_bytes = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@mtddev = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@read_oob_sector_health = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ERROR: No input file (-d <file>) given!\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ERROR: either -l, -a or -n <key name> is required!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %2, %30
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %31

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %27 [
    i32 97, label %15
    i32 98, label %16
    i32 100, label %17
    i32 104, label %19
    i32 108, label %22
    i32 110, label %23
    i32 111, label %26
  ]

15:                                               ; preds = %13
  store i32 1, i32* @show_all, align 4
  store i32* null, i32** @name_filter, align 8
  store i32 0, i32* @print_all_key_names, align 4
  br label %30

16:                                               ; preds = %13
  store i32 1, i32* @swap_bytes, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @mtddev, align 8
  br label %30

19:                                               ; preds = %13
  %20 = load i32, i32* @EXIT_SUCCESS, align 4
  %21 = call i32 @usage(i32 %20)
  br label %30

22:                                               ; preds = %13
  store i32 1, i32* @print_all_key_names, align 4
  store i32 0, i32* @show_all, align 4
  store i32* null, i32** @name_filter, align 8
  br label %30

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @name_filter, align 8
  store i32 0, i32* @show_all, align 4
  store i32 0, i32* @print_all_key_names, align 4
  br label %30

26:                                               ; preds = %13
  store i32 1, i32* @read_oob_sector_health, align 4
  br label %30

27:                                               ; preds = %13
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @usage(i32 %28)
  br label %30

30:                                               ; preds = %27, %26, %23, %22, %19, %17, %16, %15
  br label %6

31:                                               ; preds = %12
  %32 = load i8*, i8** @mtddev, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @usage(i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* @show_all, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** @name_filter, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @print_all_key_names, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @usage(i32 %51)
  br label %53

53:                                               ; preds = %48, %45, %42, %39
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
