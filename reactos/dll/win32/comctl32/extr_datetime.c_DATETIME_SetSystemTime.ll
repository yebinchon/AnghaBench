; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_SetSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_SetSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"%04d/%02d/%02d %02d:%02d:%02d\0A\00", align 1
@GDT_VALID = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@MCM_SETCURSEL = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@DTS_SHOWNONE = common dso_local global i32 0, align 4
@GDT_NONE = common dso_local global i64 0, align 8
@BST_UNCHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i64, %struct.TYPE_8__*)* @DATETIME_SetSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DATETIME_SetSystemTime(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %4, align 8
  br label %154

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @GDT_VALID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %123

35:                                               ; preds = %12
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %87, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %87, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 12
  br i1 %49, label %87, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %87, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @MONTHCAL_MonthLength(i32 %61, i64 %64)
  %66 = icmp sgt i32 %58, %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %55
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 23
  br i1 %71, label %87, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 59
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 59
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 999
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %77, %72, %67, %55, %50, %45, %40, %35
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** %4, align 8
  br label %154

89:                                               ; preds = %82
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = call i32 @DATETIME_IsDateInValidRange(%struct.TYPE_9__* %90, %struct.TYPE_8__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** @TRUE, align 8
  store i8* %95, i8** %4, align 8
  br label %154

96:                                               ; preds = %89
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = bitcast %struct.TYPE_8__* %101 to i8*
  %104 = bitcast %struct.TYPE_8__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 32, i1 false)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i8*, i8** @TRUE, align 8
  %108 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_8__* %106, i8* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MCM_SETCURSEL, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = ptrtoint %struct.TYPE_8__* %114 to i32
  %116 = call i32 @SendMessageW(i32 %111, i32 %112, i32 0, i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BM_SETCHECK, align 4
  %121 = load i32, i32* @BST_CHECKED, align 4
  %122 = call i32 @SendMessageW(i32 %119, i32 %120, i32 %121, i32 0)
  br label %147

123:                                              ; preds = %12
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DTS_SHOWNONE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @GDT_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i8*, i8** @FALSE, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @BM_SETCHECK, align 4
  %142 = load i32, i32* @BST_UNCHECKED, align 4
  %143 = call i32 @SendMessageW(i32 %140, i32 %141, i32 %142, i32 0)
  br label %146

144:                                              ; preds = %130, %123
  %145 = load i8*, i8** @FALSE, align 8
  store i8* %145, i8** %4, align 8
  br label %154

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %96
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** @TRUE, align 8
  %152 = call i32 @InvalidateRect(i32 %150, i32* null, i8* %151)
  %153 = load i8*, i8** @TRUE, align 8
  store i8* %153, i8** %4, align 8
  br label %154

154:                                              ; preds = %147, %144, %94, %87, %10
  %155 = load i8*, i8** %4, align 8
  ret i8* %155
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MONTHCAL_MonthLength(i32, i64) #1

declare dso_local i32 @DATETIME_IsDateInValidRange(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
