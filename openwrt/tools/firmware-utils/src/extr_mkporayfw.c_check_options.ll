; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_check_options.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@firmware_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"no firmware image specified\00", align 1
@inspect = common dso_local global i64 0, align 8
@board_id = common dso_local global i32* null, align 8
@opt_hw_id = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"either board or hardware id must be specified\00", align 1
@board = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown/unsupported board id \22%s\22\00", align 1
@layout_id = common dso_local global i32* null, align 8
@hw_id = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown flash layout \22%s\22\00", align 1
@firmware_len = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"firmware image is too big\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @firmware_info, i32 0, i32 1), align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %85

7:                                                ; preds = %0
  %8 = call i32 @get_file_stat(%struct.TYPE_9__* @firmware_info)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %85

13:                                               ; preds = %7
  %14 = load i64, i64* @inspect, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %85

17:                                               ; preds = %13
  %18 = load i32*, i32** @board_id, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** @opt_hw_id, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %85

25:                                               ; preds = %20, %17
  %26 = load i32*, i32** @board_id, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32*, i32** @board_id, align 8
  %30 = call %struct.TYPE_10__* @find_board(i32* %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** @board, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @board, align 8
  %32 = icmp eq %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** @board_id, align 8
  %35 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  store i32 -1, i32* %1, align 4
  br label %85

36:                                               ; preds = %28
  %37 = load i32*, i32** @layout_id, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @board, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** @layout_id, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @board, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* @hw_id, align 4
  br label %59

47:                                               ; preds = %25
  %48 = load i32*, i32** @opt_hw_id, align 8
  %49 = call i32 @strtoul(i32* %48, i32* null, i32 0)
  store i32 %49, i32* @hw_id, align 4
  %50 = load i32, i32* @hw_id, align 4
  %51 = call %struct.TYPE_10__* @find_board_by_hwid(i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** @board, align 8
  %52 = load i32*, i32** @layout_id, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @board, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** @layout_id, align 8
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32*, i32** @layout_id, align 8
  %61 = call %struct.TYPE_8__* @find_layout(i32* %60)
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** @layout, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %63 = icmp eq %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** @layout_id, align 8
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %65)
  store i32 -1, i32* %1, align 4
  br label %85

67:                                               ; preds = %59
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @firmware_info, i32 0, i32 0), align 8
  store i32 %68, i32* @firmware_len, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @firmware_info, i32 0, i32 0), align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 4
  %76 = icmp ugt i64 %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %85

79:                                               ; preds = %67
  %80 = load i32*, i32** @ofname, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %84, %82, %77, %64, %33, %23, %16, %11, %5
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @get_file_stat(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @find_board(i32*) #1

declare dso_local i32 @strtoul(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @find_board_by_hwid(i32) #1

declare dso_local %struct.TYPE_8__* @find_layout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
