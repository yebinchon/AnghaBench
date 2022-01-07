; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ParseMinMaxQuantifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ParseMinMaxQuantifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@OVERFLOW_VALUE = common dso_local global i64 0, align 8
@JSMSG_MIN_TOO_BIG = common dso_local global i32 0, align 4
@JSMSG_MAX_TOO_BIG = common dso_local global i32 0, align 4
@JSMSG_OUT_OF_ORDER = common dso_local global i32 0, align 4
@REOP_QUANT = common dso_local global i32 0, align 4
@JSMSG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @ParseMinMaxQuantifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMinMaxQuantifier(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = load i8, i8* %8, align 1
  %19 = call i64 @JS7_ISDEC(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %134

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %8, align 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i64 @GetDecimalValue(i8 signext %26, i32 65535, i32* null, %struct.TYPE_10__* %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %8, align 1
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @OVERFLOW_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @JSMSG_MIN_TOO_BIG, align 4
  store i32 %40, i32* %3, align 4
  br label %138

41:                                               ; preds = %35, %21
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %8, align 1
  %51 = load i8, i8* %8, align 1
  %52 = call i64 @JS7_ISDEC(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8, i8* %8, align 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i64 @GetDecimalValue(i8 signext %59, i32 65535, i32* null, %struct.TYPE_10__* %60)
  store i64 %61, i64* %7, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %8, align 1
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %54
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @OVERFLOW_VALUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @JSMSG_MAX_TOO_BIG, align 4
  store i32 %73, i32* %3, align 4
  br label %138

74:                                               ; preds = %68, %54
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @JSMSG_OUT_OF_ORDER, align 4
  store i32 %82, i32* %3, align 4
  br label %138

83:                                               ; preds = %77, %74
  br label %85

84:                                               ; preds = %45
  store i64 -1, i64* %7, align 8
  br label %85

85:                                               ; preds = %84, %83
  br label %88

86:                                               ; preds = %41
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 125
  br i1 %91, label %92, label %133

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load i32, i32* @REOP_QUANT, align 4
  %95 = call %struct.TYPE_11__* @NewRENode(%struct.TYPE_10__* %93, i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @JSMSG_OUT_OF_MEMORY, align 4
  store i32 %103, i32* %3, align 4
  br label %138

104:                                              ; preds = %92
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %105, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i64 %112, i64* %118, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @GetCompactIndexWidth(i64 %119)
  %121 = add nsw i64 1, %120
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i64 @GetCompactIndexWidth(i64 %123)
  %125 = add nsw i64 %121, %124
  %126 = add nsw i64 %125, 3
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  store i32 0, i32* %3, align 4
  br label %138

133:                                              ; preds = %88
  br label %134

134:                                              ; preds = %133, %2
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  store i32 -1, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %104, %102, %81, %72, %39
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @JS7_ISDEC(i8 signext) #1

declare dso_local i64 @GetDecimalValue(i8 signext, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @NewRENode(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @GetCompactIndexWidth(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
