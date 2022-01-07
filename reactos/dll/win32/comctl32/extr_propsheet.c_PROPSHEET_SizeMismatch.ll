; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_SizeMismatch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_SizeMismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@IDC_TABCONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"orig tab %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"biggest page %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @PROPSHEET_SizeMismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPSHEET_SizeMismatch(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDC_TABCONTROL, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @GetClientRect(i32 %12, %struct.TYPE_8__* %7)
  %14 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %7)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SetRect(%struct.TYPE_8__* %8, i32 0, i32 0, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MapDialogRect(i32 %23, %struct.TYPE_8__* %8)
  %25 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %8)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = icmp ne i64 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %38
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_8__*) #1

declare dso_local i32 @SetRect(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @MapDialogRect(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
