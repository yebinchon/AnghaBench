; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_edimax_fw_header.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_edimax_fw_header.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e:fhi:o:m:M:n:s:t:v:\00", align 1
@optarg = common dso_local global i8* null, align 8
@end_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s is invalid '%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"end address\00", align 1
@force = common dso_local global i32 0, align 4
@ifname = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@ofname = common dso_local global i8* null, align 8
@model = common dso_local global i8* null, align 8
@magic = common dso_local global i8* null, align 8
@mtd_name = common dso_local global i8* null, align 8
@start_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"start address\00", align 1
@image_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"image type\00", align 1
@fw_version = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @basename(i8* %11)
  store i32 %12, i32* @progname, align 4
  br label %13

13:                                               ; preds = %2, %65
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %66

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %62 [
    i32 101, label %22
    i32 102, label %30
    i32 105, label %31
    i32 104, label %33
    i32 111, label %36
    i32 109, label %38
    i32 77, label %40
    i32 110, label %42
    i32 115, label %44
    i32 116, label %52
    i32 118, label %60
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @str2u32(i8* %23, i32* @end_addr)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %73

29:                                               ; preds = %22
  br label %65

30:                                               ; preds = %20
  store i32 1, i32* @force, align 4
  br label %65

31:                                               ; preds = %20
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @ifname, align 8
  br label %65

33:                                               ; preds = %20
  %34 = load i32, i32* @EXIT_SUCCESS, align 4
  %35 = call i32 @usage(i32 %34)
  br label %65

36:                                               ; preds = %20
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @ofname, align 8
  br label %65

38:                                               ; preds = %20
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** @model, align 8
  br label %65

40:                                               ; preds = %20
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @magic, align 8
  br label %65

42:                                               ; preds = %20
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @mtd_name, align 8
  br label %65

44:                                               ; preds = %20
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @str2u32(i8* %45, i32* @start_addr)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %73

51:                                               ; preds = %44
  br label %65

52:                                               ; preds = %20
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @str2u8(i8* %53, i32* @image_type)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %73

59:                                               ; preds = %52
  br label %65

60:                                               ; preds = %20
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** @fw_version, align 8
  br label %65

62:                                               ; preds = %20
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  %64 = call i32 @usage(i32 %63)
  br label %65

65:                                               ; preds = %62, %60, %59, %51, %42, %40, %38, %36, %33, %31, %30, %29
  br label %13

66:                                               ; preds = %19
  %67 = call i32 (...) @check_options()
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @build_fw()
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %70, %56, %48, %26
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @str2u32(i8*, i32*) #1

declare dso_local i32 @ERR(i8*, i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @str2u8(i8*, i32*) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
