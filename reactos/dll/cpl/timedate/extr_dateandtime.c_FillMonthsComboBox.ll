; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_FillMonthsComboBox.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_FillMonthsComboBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CB_RESETCONTENT = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SMONTHNAME1 = common dso_local global i64 0, align 8
@LOCALE_SMONTHNAME13 = common dso_local global i64 0, align 8
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @FillMonthsComboBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillMonthsComboBox(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = call i32 @GetLocalTime(%struct.TYPE_3__* %4)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CB_RESETCONTENT, align 4
  %12 = call i64 @SendMessageW(i32 %10, i32 %11, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 13
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 13
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* @LOCALE_SMONTHNAME1, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = sub nsw i64 %24, 1
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @LOCALE_SMONTHNAME13, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i64 [ %25, %20 ], [ %27, %26 ]
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %31 = call i32 @GetLocaleInfoW(i32 %17, i64 %29, i32* %30, i32 64)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CB_ADDSTRING, align 4
  %37 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %38 = ptrtoint i32* %37 to i32
  %39 = call i64 @SendMessageW(i32 %35, i32 %36, i32 0, i32 %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CB_ERR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @CB_SETITEMDATA, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @SendMessageW(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @CB_SETCURSEL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @SendMessageW(i32 %56, i32 %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %44
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %28
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_3__*) #2

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @GetLocaleInfoW(i32, i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
