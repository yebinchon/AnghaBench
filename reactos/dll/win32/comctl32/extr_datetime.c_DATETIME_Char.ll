; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Char.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8*, i32 }

@DTHT_DATEFIELD = common dso_local global i32 0, align 4
@ONELETTERAMPM = common dso_local global i32 0, align 4
@TWOLETTERAMPM = common dso_local global i32 0, align 4
@INVALIDFULLYEAR = common dso_local global i32 0, align 4
@FULLYEAR = common dso_local global i32 0, align 4
@ONEDIGIT12HOUR = common dso_local global i32 0, align 4
@TWODIGIT12HOUR = common dso_local global i32 0, align 4
@ONEDIGIT24HOUR = common dso_local global i32 0, align 4
@TWODIGIT24HOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8)* @DATETIME_Char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_Char(%struct.TYPE_4__* %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DTHT_DATEFIELD, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ONELETTERAMPM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TWOLETTERAMPM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23, %2
  %28 = load i8, i8* %4, align 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %28, i8* %32, align 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @DATETIME_ApplySelectedField(%struct.TYPE_4__* %35)
  br label %103

37:                                               ; preds = %23
  %38 = load i8, i8* %4, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 48
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 57
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  %46 = load i8, i8* %4, align 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 %46, i8* %55, align 1
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @INVALIDFULLYEAR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @FULLYEAR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %45
  store i32 4, i32* %7, align 4
  br label %65

64:                                               ; preds = %59
  store i32 2, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ONEDIGIT12HOUR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @TWODIGIT12HOUR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ONEDIGIT24HOUR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @TWODIGIT24HOUR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %73, %69, %65
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8, i8* %4, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 51
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %81, %77
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = call i32 @DATETIME_ApplySelectedField(%struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %41, %37
  br label %103

103:                                              ; preds = %102, %27
  ret i32 0
}

declare dso_local i32 @DATETIME_ApplySelectedField(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
