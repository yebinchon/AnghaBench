; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_match_operands_qualifier.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_match_operands_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"matching FAIL\00", align 1
@F_STRICT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@AARCH64_OPND_NIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"update %s with %s for operand %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"matching SUCCESS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @match_operands_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_operands_qualifier(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* null, i64** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = call i32 @aarch64_find_best_match(%struct.TYPE_7__* %9, i32 %14, i32 -1, i64* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @DEBUG_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @F_STRICT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @aarch64_num_of_operands(%struct.TYPE_8__* %32)
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %56, %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %133

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %34

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %131

64:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %127, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %130

82:                                               ; preds = %69
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %90, %95
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @aarch64_get_qualifier_name(i64 %105)
  %107 = load i64*, i64** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @aarch64_get_qualifier_name(i64 %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @DEBUG_TRACE_IF(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %112, i32 %113)
  %115 = load i64*, i64** %8, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i64 %119, i64* %126, align 8
  br label %127

127:                                              ; preds = %82
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %65

130:                                              ; preds = %81, %65
  br label %131

131:                                              ; preds = %130, %60
  %132 = call i32 @DEBUG_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %53, %18
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @aarch64_find_best_match(%struct.TYPE_7__*, i32, i32, i64*) #1

declare dso_local i32 @DEBUG_TRACE(i8*) #1

declare dso_local i32 @aarch64_num_of_operands(%struct.TYPE_8__*) #1

declare dso_local i32 @DEBUG_TRACE_IF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @aarch64_get_qualifier_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
