; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual_tabs.inc_visual_tabset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual_tabs.inc_visual_tabset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@disMode = common dso_local global i32 0, align 4
@hexMode = common dso_local global i32 0, align 4
@printMode = common dso_local global i32 0, align 4
@current3format = common dso_local global i32 0, align 4
@current4format = common dso_local global i32 0, align 4
@current5format = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"asm.offset\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"asm.instr\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"asm.bytes\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"asm.indent\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"asm.cmt.col\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"hex.cols\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"scr.dumpcols\00", align 1
@printHexFormats = common dso_local global i32* null, align 8
@PRINT_HEX_FORMATS = common dso_local global i64 0, align 8
@printfmtSingle = common dso_local global i32* null, align 8
@print3Formats = common dso_local global i32* null, align 8
@PRINT_3_FORMATS = common dso_local global i64 0, align 8
@print4Formats = common dso_local global i32* null, align 8
@PRINT_4_FORMATS = common dso_local global i64 0, align 8
@print5Formats = common dso_local global i32* null, align 8
@PRINT_5_FORMATS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @visual_tabset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visual_tabset(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @r_return_if_fail(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @r_core_seek(%struct.TYPE_11__* %14, i32 %17, i32 1)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @disMode, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* @hexMode, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @printMode, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* @current3format, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* @current4format, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @current5format, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load i32, i32* @disMode, align 4
  %65 = call i32 @r_core_visual_applyDisMode(%struct.TYPE_11__* %63, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @hexMode, align 4
  %68 = call i32 @r_core_visual_applyHexMode(%struct.TYPE_11__* %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @r_config_set_i(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @r_config_set_i(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @r_config_set_i(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @r_config_set_i(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @r_config_set_i(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @r_config_set_i(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @r_config_set_i(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** @printHexFormats, align 8
  %119 = load i32, i32* @hexMode, align 4
  %120 = call i64 @R_ABS(i32 %119)
  %121 = load i64, i64* @PRINT_HEX_FORMATS, align 8
  %122 = urem i64 %120, %121
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** @printfmtSingle, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** @print3Formats, align 8
  %128 = load i32, i32* @current3format, align 4
  %129 = call i64 @R_ABS(i32 %128)
  %130 = load i64, i64* @PRINT_3_FORMATS, align 8
  %131 = urem i64 %129, %130
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @printfmtSingle, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** @print4Formats, align 8
  %137 = load i32, i32* @current4format, align 4
  %138 = call i64 @R_ABS(i32 %137)
  %139 = load i64, i64* @PRINT_4_FORMATS, align 8
  %140 = urem i64 %138, %139
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** @printfmtSingle, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** @print5Formats, align 8
  %146 = load i32, i32* @current5format, align 4
  %147 = call i64 @R_ABS(i32 %146)
  %148 = load i64, i64* @PRINT_5_FORMATS, align 8
  %149 = urem i64 %147, %148
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** @printfmtSingle, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32 %151, i32* %153, align 4
  ret void
}

declare dso_local i32 @r_return_if_fail(i32) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @r_core_visual_applyDisMode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @r_core_visual_applyHexMode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local i64 @R_ABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
