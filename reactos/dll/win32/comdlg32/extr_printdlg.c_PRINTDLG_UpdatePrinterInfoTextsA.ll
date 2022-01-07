; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrinterInfoTextsA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_PRINTDLG_UpdatePrinterInfoTextsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8* }

@COMDLG32_hInstance = common dso_local global i32 0, align 4
@PD32_PRINTER_STATUS_PAUSED = common dso_local global i64 0, align 8
@PD32_PRINTER_STATUS_READY = common dso_local global i64 0, align 8
@stc12 = common dso_local global i32 0, align 4
@stc11 = common dso_local global i32 0, align 4
@stc14 = common dso_local global i32 0, align 4
@stc13 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @PRINTDLG_UpdatePrinterInfoTextsA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PRINTDLG_UpdatePrinterInfoTextsA(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %8, align 16
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 25
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load i32, i32* @COMDLG32_hInstance, align 4
  %22 = load i64, i64* @PD32_PRINTER_STATUS_PAUSED, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = call i32 @LoadStringA(i32 %21, i64 %25, i8* %26, i32 255)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strcat(i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %20, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* @COMDLG32_hInstance, align 4
  %37 = load i64, i64* @PD32_PRINTER_STATUS_READY, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = call i32 @LoadStringA(i32 %36, i64 %37, i8* %38, i32 255)
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %42 = call i32 @strcat(i8* %40, i8* %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @stc12, align 4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %46 = call i32 @SetDlgItemTextA(i32 %43, i32 %44, i8* %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @stc11, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @SetDlgItemTextA(i32 %47, i32 %48, i8* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %35
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @stc14, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @SetDlgItemTextA(i32 %66, i32 %67, i8* %70)
  br label %79

72:                                               ; preds = %57, %35
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @stc14, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @SetDlgItemTextA(i32 %73, i32 %74, i8* %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @stc13, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i8* [ %89, %86 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %90 ]
  %93 = call i32 @SetDlgItemTextA(i32 %80, i32 %81, i8* %92)
  ret void
}

declare dso_local i32 @LoadStringA(i32, i64, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @SetDlgItemTextA(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
