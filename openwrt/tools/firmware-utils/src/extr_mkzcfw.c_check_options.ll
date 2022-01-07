; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_check_options.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }

@board_id = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@board = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown/unsupported board id \22%s\22\00", align 1
@kernel_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"no kernel image specified\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"kernel image is too big\00", align 1
@rootfs_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"no rootfs image specified\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"rootfs image is too big\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @board_id, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

7:                                                ; preds = %0
  %8 = load i32*, i32** @board_id, align 8
  %9 = call %struct.TYPE_7__* @find_board(i32* %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** @board, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @board, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32*, i32** @board_id, align 8
  %14 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 -1, i32* %1, align 4
  br label %59

15:                                               ; preds = %7
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kernel_info, i32 0, i32 1), align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

20:                                               ; preds = %15
  %21 = call i32 @get_file_stat(%struct.TYPE_6__* @kernel_info)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %59

26:                                               ; preds = %20
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kernel_info, i32 0, i32 0), align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @board, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

34:                                               ; preds = %26
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs_info, i32 0, i32 1), align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

39:                                               ; preds = %34
  %40 = call i32 @get_file_stat(%struct.TYPE_6__* @rootfs_info)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %1, align 4
  br label %59

45:                                               ; preds = %39
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs_info, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @board, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

53:                                               ; preds = %45
  %54 = load i32*, i32** @ofname, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %56, %51, %43, %37, %32, %24, %18, %12, %5
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @find_board(i32*) #1

declare dso_local i32 @get_file_stat(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
