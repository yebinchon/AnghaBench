; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkbrnimg.c_parseopts.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkbrnimg.c_parseopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"o:m:s:p:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@optarg = common dso_local global i8* null, align 8
@output_file = common dso_local global i8* null, align 8
@magic = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"magic must be a decimal or hexadecimal 32-bit value\00", align 1
@signature = common dso_local global i8* null, align 8
@crc32_poly = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"'crc32 poly' must be a decimal or hexadecimal 32-bit value\00", align 1
@optind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8***)* @parseopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseopts(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i8***, i8**** %4, align 8
  %11 = load i8**, i8*** %10, align 8
  %12 = call i32 @getopt(i32 %9, i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %51

14:                                               ; preds = %7
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %16 [
    i32 111, label %18
    i32 109, label %20
    i32 115, label %34
    i32 112, label %36
  ]

16:                                               ; preds = %14
  %17 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %50

18:                                               ; preds = %14
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @output_file, align 8
  br label %50

20:                                               ; preds = %14
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i8* @strtoul(i8* %21, i8** %5, i32 0)
  store i8* %22, i8** @magic, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** @optarg, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %20
  %32 = call i32 @usage(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  br label %50

34:                                               ; preds = %14
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** @signature, align 8
  br label %50

36:                                               ; preds = %14
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i8* @strtoul(i8* %37, i8** %5, i32 0)
  store i8* %38, i8** @crc32_poly, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** @optarg, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %36
  %48 = call i32 @usage(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  br label %50

50:                                               ; preds = %49, %34, %33, %18, %16
  br label %7

51:                                               ; preds = %7
  %52 = load i64, i64* @optind, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %52
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load i64, i64* @optind, align 8
  %59 = load i8***, i8**** %4, align 8
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 %58
  store i8** %61, i8*** %59, align 8
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
