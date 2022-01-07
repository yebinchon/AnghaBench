; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"B:k:r:o:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i8* null, align 8
@kernel_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rootfs_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ofname = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @basename(i8* %13)
  store i32 %14, i32* @progname, align 4
  br label %15

15:                                               ; preds = %2, %38
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %39

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %35 [
    i32 66, label %24
    i32 107, label %26
    i32 114, label %28
    i32 111, label %30
    i32 104, label %32
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @board_id, align 8
  br label %38

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_info, i32 0, i32 0), align 8
  br label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rootfs_info, i32 0, i32 0), align 8
  br label %38

30:                                               ; preds = %22
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @ofname, align 8
  br label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @EXIT_SUCCESS, align 4
  %34 = call i32 @usage(i32 %33)
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @usage(i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %30, %28, %26, %24
  br label %15

39:                                               ; preds = %21
  %40 = call i32 (...) @check_options()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %46

44:                                               ; preds = %39
  %45 = call i32 (...) @build_fw()
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
