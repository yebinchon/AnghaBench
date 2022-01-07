; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_prevPrintFormat.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_prevPrintFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@hexMode = common dso_local global i32 0, align 4
@printHexFormats = common dso_local global i32* null, align 8
@PRINT_HEX_FORMATS = common dso_local global i64 0, align 8
@printfmtSingle = common dso_local global i32* null, align 8
@disMode = common dso_local global i32 0, align 4
@current3format = common dso_local global i32 0, align 4
@PRINT_3_FORMATS = common dso_local global i64 0, align 8
@currentFormat = common dso_local global i64 0, align 8
@print3Formats = common dso_local global i32* null, align 8
@current4format = common dso_local global i32 0, align 4
@PRINT_4_FORMATS = common dso_local global i64 0, align 8
@print4Formats = common dso_local global i32* null, align 8
@current5format = common dso_local global i32 0, align 4
@PRINT_5_FORMATS = common dso_local global i64 0, align 8
@print5Formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @prevPrintFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prevPrintFormat(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %76 [
    i32 128, label %6
    i32 129, label %20
    i32 131, label %29
    i32 130, label %50
    i32 132, label %63
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @hexMode, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @hexMode, align 4
  %10 = call i32 @r_core_visual_applyHexMode(%struct.TYPE_6__* %7, i32 %9)
  %11 = load i32*, i32** @printHexFormats, align 8
  %12 = load i32, i32* @hexMode, align 4
  %13 = call i64 @R_ABS(i32 %12)
  %14 = load i64, i64* @PRINT_HEX_FORMATS, align 8
  %15 = urem i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @printfmtSingle, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = load i32, i32* @disMode, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @disMode, align 4
  %24 = call i32 @r_core_visual_applyDisMode(%struct.TYPE_6__* %21, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = call i32 @rotateAsmemu(%struct.TYPE_6__* %25)
  %27 = load i32*, i32** @printfmtSingle, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  br label %76

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = load i32, i32* @disMode, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @disMode, align 4
  %33 = call i32 @r_core_visual_applyDisMode(%struct.TYPE_6__* %30, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = call i32 @rotateAsmemu(%struct.TYPE_6__* %34)
  %36 = load i32*, i32** @printfmtSingle, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @current3format, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @current3format, align 4
  %40 = load i32, i32* @current3format, align 4
  %41 = call i64 @R_ABS(i32 %40)
  %42 = load i64, i64* @PRINT_3_FORMATS, align 8
  %43 = urem i64 %41, %42
  store i64 %43, i64* @currentFormat, align 8
  %44 = load i32*, i32** @print3Formats, align 8
  %45 = load i64, i64* @currentFormat, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @printfmtSingle, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  br label %76

50:                                               ; preds = %1
  %51 = load i32, i32* @current4format, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @current4format, align 4
  %53 = load i32, i32* @current4format, align 4
  %54 = call i64 @R_ABS(i32 %53)
  %55 = load i64, i64* @PRINT_4_FORMATS, align 8
  %56 = urem i64 %54, %55
  store i64 %56, i64* @currentFormat, align 8
  %57 = load i32*, i32** @print4Formats, align 8
  %58 = load i64, i64* @currentFormat, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @printfmtSingle, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  br label %76

63:                                               ; preds = %1
  %64 = load i32, i32* @current5format, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @current5format, align 4
  %66 = load i32, i32* @current5format, align 4
  %67 = call i64 @R_ABS(i32 %66)
  %68 = load i64, i64* @PRINT_5_FORMATS, align 8
  %69 = urem i64 %67, %68
  store i64 %69, i64* @currentFormat, align 8
  %70 = load i32*, i32** @print5Formats, align 8
  %71 = load i64, i64* @currentFormat, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** @printfmtSingle, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %1, %63, %50, %29, %20, %6
  ret void
}

declare dso_local i32 @r_core_visual_applyHexMode(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @R_ABS(i32) #1

declare dso_local i32 @r_core_visual_applyDisMode(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rotateAsmemu(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
