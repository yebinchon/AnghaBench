; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetHotDivider.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetHotDivider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@HHT_TOLEFT = common dso_local global i32 0, align 4
@HHT_NOWHERE = common dso_local global i32 0, align 4
@HHT_TORIGHT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i64, i64)* @HEADER_SetHotDivider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HEADER_SetHotDivider(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @LOWORD(i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = call i32 @HEADER_InternalHitTest(%struct.TYPE_13__* %20, %struct.TYPE_11__* %10, i32* %11, i64* %8)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @HHT_TOLEFT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %67

27:                                               ; preds = %15
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @HHT_NOWHERE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @HHT_TORIGHT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  br label %66

41:                                               ; preds = %32
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %45
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %48, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %41
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @HEADER_NextItem(%struct.TYPE_13__* %62, i64 %63)
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %61, %41
  br label %66

66:                                               ; preds = %65, %37
  br label %67

67:                                               ; preds = %66, %26
  br label %70

68:                                               ; preds = %3
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i64, i64* %8, align 8
  %72 = icmp ult i64 %71, -1
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73, %70
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %4, align 8
  br label %119

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, -1
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = call i32 @HEADER_GetHotDividerRect(%struct.TYPE_13__* %95, i32* %9)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @InvalidateRect(i32 %99, i32* %9, i32 %100)
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp ne i64 %106, -1
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = call i32 @HEADER_GetHotDividerRect(%struct.TYPE_13__* %109, i32* %9)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @InvalidateRect(i32 %113, i32* %9, i32 %114)
  br label %116

116:                                              ; preds = %108, %102
  br label %117

117:                                              ; preds = %116, %83
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %117, %81
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i64 @LOWORD(i64) #1

declare dso_local i32 @HEADER_InternalHitTest(%struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i64*) #1

declare dso_local i64 @HEADER_NextItem(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @HEADER_GetHotDividerRect(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
