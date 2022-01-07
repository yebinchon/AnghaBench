; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvAdjust.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@IDC_COMBO_FROM = common dso_local global i32 0, align 4
@IDC_COMBO_TO = common dso_local global i32 0, align 4
@IDC_COMBO_CATEGORY = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@conv_table = common dso_local global %struct.TYPE_10__* null, align 8
@calc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConvAdjust(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x %struct.TYPE_10__], align 16
  %6 = alloca [128 x %struct.TYPE_10__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_COMBO_FROM, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IDC_COMBO_TO, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IDC_COMBO_CATEGORY, align 4
  %19 = load i32, i32* @CB_GETLBTEXT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %22 = ptrtoint %struct.TYPE_10__* %21 to i32
  %23 = call i32 @SendDlgItemMessage(i32 %17, i32 %18, i32 %19, i32 %20, i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %53, %2
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @conv_table, align 8
  %27 = call i32 @SIZEOF(%struct.TYPE_10__* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @conv_table, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %9, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @calc, i32 0, i32 0), align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @conv_table, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %44 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %45 = call i32 @SIZEOF(%struct.TYPE_10__* %44)
  %46 = call i32 @LoadString(i32 %36, i64 %42, %struct.TYPE_10__* %43, i32 %45)
  %47 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %49 = call i32 @_tcscmp(%struct.TYPE_10__* %47, %struct.TYPE_10__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %29
  br label %56

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %24

56:                                               ; preds = %51, %24
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @CB_RESETCONTENT, align 4
  %59 = call i32 @SendMessage(i32 %57, i32 %58, i32 0, i32 0)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @CB_RESETCONTENT, align 4
  %62 = call i32 @SendMessage(i32 %60, i32 %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %68, %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @calc, i32 0, i32 0), align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %74 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %75 = call i32 @SIZEOF(%struct.TYPE_10__* %74)
  %76 = call i32 @LoadString(i32 %69, i64 %72, %struct.TYPE_10__* %73, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @CB_ADDSTRING, align 4
  %79 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %80 = ptrtoint %struct.TYPE_10__* %79 to i32
  %81 = call i32 @SendMessage(i32 %77, i32 %78, i32 0, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @CB_ADDSTRING, align 4
  %84 = getelementptr inbounds [128 x %struct.TYPE_10__], [128 x %struct.TYPE_10__]* %5, i64 0, i64 0
  %85 = ptrtoint %struct.TYPE_10__* %84 to i32
  %86 = call i32 @SendMessage(i32 %82, i32 %83, i32 0, i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 1
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %9, align 8
  br label %63

89:                                               ; preds = %63
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @CB_SETCURSEL, align 4
  %92 = call i32 @SendMessage(i32 %90, i32 %91, i32 0, i32 0)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @CB_SETCURSEL, align 4
  %95 = call i32 @SendMessage(i32 %93, i32 %94, i32 0, i32 0)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SIZEOF(%struct.TYPE_10__*) #1

declare dso_local i32 @LoadString(i32, i64, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @_tcscmp(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
