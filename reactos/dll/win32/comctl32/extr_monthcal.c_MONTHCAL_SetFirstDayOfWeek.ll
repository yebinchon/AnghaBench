; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetFirstDayOfWeek.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetFirstDayOfWeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_IFIRSTDAYOFWEEK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"No bug compatibility for day=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @MONTHCAL_SetFirstDayOfWeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_SetFirstDayOfWeek(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i32], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @MONTHCAL_GetFirstDayOfWeek(%struct.TYPE_4__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %16 = load i32, i32* @LOCALE_IFIRSTDAYOFWEEK, align 4
  %17 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @GetLocaleInfoW(i32 %15, i32 %16, i32* %17, i32 %19)
  %21 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %22 = call i32 @debugstr_w(i32* %21)
  %23 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %24 = call i32 @strlenW(i32* %23)
  %25 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24)
  %26 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %27 = call i32 @atoiW(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %50

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 7
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  store i32 6, i32* %6, align 4
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** @TRUE, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = srem i32 %55, 7
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ]
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** @FALSE, align 8
  %67 = call i32 @InvalidateRect(i32 %65, i32* null, i8* %66)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @MONTHCAL_GetFirstDayOfWeek(%struct.TYPE_4__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @atoiW(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
