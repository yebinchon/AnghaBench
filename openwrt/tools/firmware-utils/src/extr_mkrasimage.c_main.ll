; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrasimage.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrasimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64 }

@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"b:k:o:r:s:v:l:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_name = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@kernel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@out = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@rootfs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rootfs_size = common dso_local global i64 0, align 8
@version_name = common dso_local global i8* null, align 8
@header_length = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@rootfs_out = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

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
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @basename(i8* %10)
  store i32 %11, i32* @progname, align 4
  br label %12

12:                                               ; preds = %2, %43
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %44

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %40 [
    i32 98, label %21
    i32 104, label %23
    i32 107, label %26
    i32 111, label %28
    i32 114, label %30
    i32 115, label %32
    i32 118, label %35
    i32 108, label %37
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** @board_name, align 8
  br label %43

23:                                               ; preds = %19
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  %25 = call i32 @usage(i32 %24)
  br label %43

26:                                               ; preds = %19
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kernel, i32 0, i32 0), align 8
  br label %43

28:                                               ; preds = %19
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @out, i32 0, i32 0), align 8
  br label %43

30:                                               ; preds = %19
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 1), align 8
  br label %43

32:                                               ; preds = %19
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* @rootfs_size)
  br label %43

35:                                               ; preds = %19
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @version_name, align 8
  br label %43

37:                                               ; preds = %19
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* @header_length)
  br label %43

40:                                               ; preds = %19
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @usage(i32 %41)
  br label %43

43:                                               ; preds = %40, %37, %35, %32, %30, %28, %26, %23, %21
  br label %12

44:                                               ; preds = %18
  %45 = call i32 (...) @check_options()
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @usage(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i64, i64* @rootfs_size, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 0), align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 0), align 8
  br label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @rootfs_size, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_out, i32 0, i32 0), align 8
  %61 = call i32 (...) @build_image()
  ret i32 %61
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_image(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
