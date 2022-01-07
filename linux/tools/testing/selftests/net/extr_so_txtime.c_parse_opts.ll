; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"46c:\00", align 1
@cfg_do_ipv4 = common dso_local global i32 0, align 4
@cfg_do_ipv6 = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tai\00", align 1
@CLOCK_TAI = common dso_local global i32 0, align 4
@cfg_clockid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown clock id %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"parse error at %d\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Usage: %s [-46] -c <clock> <in> <out>\00", align 1
@cfg_in = common dso_local global i32 0, align 4
@cfg_out = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"i/o streams len mismatch (%d, %d)\0A\00", align 1
@cfg_num_pkt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %38 [
    i32 52, label %15
    i32 54, label %16
    i32 99, label %17
  ]

15:                                               ; preds = %13
  store i32 1, i32* @cfg_do_ipv4, align 4
  br label %41

16:                                               ; preds = %13
  store i32 1, i32* @cfg_do_ipv6, align 4
  br label %41

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CLOCK_TAI, align 4
  store i32 %22, i32* @cfg_clockid, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @CLOCK_MONOTONIC, align 4
  store i32 %32, i32* @cfg_clockid, align 4
  br label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %31
  br label %37

37:                                               ; preds = %36, %21
  br label %41

38:                                               ; preds = %13
  %39 = load i32, i32* @optind, align 4
  %40 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %37, %16, %15
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @optind, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* @optind, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @cfg_in, align 4
  %59 = call i32 @parse_io(i8* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i8**, i8*** %4, align 8
  %61 = load i32, i32* @optind, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @cfg_out, align 4
  %67 = call i32 @parse_io(i8* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %52
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %52
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* @cfg_num_pkt, align 4
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @parse_io(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
