; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"abhi:ln:s:\00", align 1
@show_all = common dso_local global i32 0, align 4
@name_filter = common dso_local global i32* null, align 8
@print_all_key_names = common dso_local global i32 0, align 4
@swap_bytes = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@input_file = common dso_local global i8* null, align 8
@tffs_size = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ERROR: No input file (-i <file>) given!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ERROR: %s does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"ERROR: either -l, -a or -n <key name> is required!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %2, %32
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %33

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %29 [
    i32 97, label %15
    i32 98, label %16
    i32 104, label %17
    i32 105, label %20
    i32 108, label %22
    i32 110, label %23
    i32 115, label %26
  ]

15:                                               ; preds = %13
  store i32 1, i32* @show_all, align 4
  store i32* null, i32** @name_filter, align 8
  store i32 0, i32* @print_all_key_names, align 4
  br label %32

16:                                               ; preds = %13
  store i32 1, i32* @swap_bytes, align 4
  br label %32

17:                                               ; preds = %13
  %18 = load i32, i32* @EXIT_SUCCESS, align 4
  %19 = call i32 @usage(i32 %18)
  br label %32

20:                                               ; preds = %13
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @input_file, align 8
  br label %32

22:                                               ; preds = %13
  store i32 1, i32* @print_all_key_names, align 4
  store i32 0, i32* @show_all, align 4
  store i32* null, i32** @name_filter, align 8
  br label %32

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @name_filter, align 8
  store i32 0, i32* @show_all, align 4
  store i32 0, i32* @print_all_key_names, align 4
  br label %32

26:                                               ; preds = %13
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @strtoul(i8* %27, i32* null, i32 0)
  store i32 %28, i32* @tffs_size, align 4
  br label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @usage(i32 %30)
  br label %32

32:                                               ; preds = %29, %26, %23, %22, %20, %17, %16, %15
  br label %6

33:                                               ; preds = %12
  %34 = load i8*, i8** @input_file, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable

41:                                               ; preds = %33
  %42 = load i8*, i8** @input_file, align 8
  %43 = call i32 @file_exist(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @input_file, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @exit(i32 %49) #3
  unreachable

51:                                               ; preds = %41
  %52 = load i32, i32* @show_all, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** @name_filter, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @print_all_key_names, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  %64 = call i32 @exit(i32 %63) #3
  unreachable

65:                                               ; preds = %57, %54, %51
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @file_exist(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
