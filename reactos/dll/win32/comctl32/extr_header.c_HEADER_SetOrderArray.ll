; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetOrderArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetOrderArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"count=%d, order array={\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64*)* @HEADER_SetOrderArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_SetOrderArray(%struct.TYPE_6__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %153

20:                                               ; preds = %3
  %21 = load i32, i32* @header, align 4
  %22 = call i64 @TRACE_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %43, %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, 1
  %39 = icmp ne i64 %36, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 44, i32 125
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %27

46:                                               ; preds = %27
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %20
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %119, %48
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60, %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @get_nextvalue(i64* %69, i64 %70, i64 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %73, i64* %78, align 8
  br label %118

79:                                               ; preds = %60
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %101, %79
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @has_duplicate(i64* %93, i64 %94, i64 %98)
  store i64 %99, i64* %11, align 8
  %100 = icmp ne i64 %99, -1
  br i1 %100, label %101, label %117

101:                                              ; preds = %90
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i8* @get_nextvalue(i64* %104, i64 %105, i64 %106)
  %108 = ptrtoint i8* %107 to i64
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %109, i64* %114, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, -1
  store i64 %116, i64* %10, align 8
  br label %90

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117, %66
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %49

122:                                              ; preds = %49
  store i64 0, i64* %9, align 8
  br label %123

123:                                              ; preds = %141, %122
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %136
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %127
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %9, align 8
  br label %123

144:                                              ; preds = %123
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = call i32 @HEADER_SetItemBounds(%struct.TYPE_6__* %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @InvalidateRect(i32 %149, i32* null, i32 %150)
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %144, %18
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @get_nextvalue(i64*, i64, i64) #1

declare dso_local i64 @has_duplicate(i64*, i64, i64) #1

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_6__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
