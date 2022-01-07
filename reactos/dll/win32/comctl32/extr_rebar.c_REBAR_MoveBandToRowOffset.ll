; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MoveBandToRowOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MoveBandToRowOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@RBBS_BREAK = common dso_local global i32 0, align 4
@SEP_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32)* @REBAR_MoveBandToRowOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_MoveBandToRowOffset(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %19, i32 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RBBS_BREAK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %54, %31
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SEP_WIDTH, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @next_visible(%struct.TYPE_8__* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  br label %33

58:                                               ; preds = %41, %33
  br label %93

59:                                               ; preds = %6
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %88, %59
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %66, i32 %67)
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %18, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %92

78:                                               ; preds = %65
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SEP_WIDTH, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @next_visible(%struct.TYPE_8__* %89, i32 %90)
  store i32 %91, i32* %16, align 4
  br label %61

92:                                               ; preds = %77, %61
  br label %93

93:                                               ; preds = %92, %58
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @DPA_DeletePtr(i32 %96, i32 %97)
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %93
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %111 = call i32 @DPA_InsertPtr(i32 %108, i32 %109, %struct.TYPE_9__* %110)
  %112 = load i32, i32* @RBBS_BREAK, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %105
  %121 = load i32, i32* @RBBS_BREAK, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %122, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %120, %105
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %7, align 4
  br label %140

139:                                              ; preds = %128
  store i32 -1, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %134
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @next_visible(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DPA_DeletePtr(i32, i32) #1

declare dso_local i32 @DPA_InsertPtr(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
