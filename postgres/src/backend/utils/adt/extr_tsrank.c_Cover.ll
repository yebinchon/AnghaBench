; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_Cover.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_Cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_11__*, %struct.TYPE_11__* }

@INT_MAX = common dso_local global i64 0, align 8
@TS_EXEC_EMPTY = common dso_local global i32 0, align 4
@checkcondition_QueryOperand = common dso_local global i32 0, align 4
@TS_EXEC_CALC_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*, %struct.TYPE_12__*)* @Cover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Cover(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = call i32 (...) @check_stack_depth()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = call i32 @resetQueryRepresentation(%struct.TYPE_10__* %17, i32 0)
  %19 = load i64, i64* @INT_MAX, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %28
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  br label %30

30:                                               ; preds = %81, %4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = ptrtoint %struct.TYPE_11__* %31 to i64
  %34 = ptrtoint %struct.TYPE_11__* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = call i32 @fillQueryRepresentationData(%struct.TYPE_10__* %41, %struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GETQUERY(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = bitcast %struct.TYPE_10__* %48 to i8*
  %50 = load i32, i32* @TS_EXEC_EMPTY, align 4
  %51 = load i32, i32* @checkcondition_QueryOperand, align 4
  %52 = call i64 @TS_execute(i32 %47, i8* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @WEP_GETPOS(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @WEP_GETPOS(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = ptrtoint %struct.TYPE_11__* %73 to i64
  %76 = ptrtoint %struct.TYPE_11__* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %63, %54
  br label %84

81:                                               ; preds = %40
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 1
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %10, align 8
  br label %30

84:                                               ; preds = %80, %30
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %170

88:                                               ; preds = %84
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = call i32 @resetQueryRepresentation(%struct.TYPE_10__* %89, i32 1)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %10, align 8
  br label %95

95:                                               ; preds = %138, %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %101
  %103 = icmp uge %struct.TYPE_11__* %96, %102
  br i1 %103, label %104, label %141

104:                                              ; preds = %95
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = call i32 @fillQueryRepresentationData(%struct.TYPE_10__* %105, %struct.TYPE_11__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @GETQUERY(i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = bitcast %struct.TYPE_10__* %112 to i8*
  %114 = load i32, i32* @TS_EXEC_CALC_NOT, align 4
  %115 = load i32, i32* @checkcondition_QueryOperand, align 4
  %116 = call i64 @TS_execute(i32 %111, i8* %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %104
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @WEP_GETPOS(i32 %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @WEP_GETPOS(i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %127, %118
  br label %141

138:                                              ; preds = %104
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 -1
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %10, align 8
  br label %95

141:                                              ; preds = %137, %95
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp sle i64 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = ptrtoint %struct.TYPE_11__* %150 to i64
  %153 = ptrtoint %struct.TYPE_11__* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = add nsw i64 %155, 1
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  store i32 1, i32* %5, align 4
  br label %170

160:                                              ; preds = %141
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = call i32 @Cover(%struct.TYPE_11__* %165, i32 %166, %struct.TYPE_10__* %167, %struct.TYPE_12__* %168)
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %160, %149, %87
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @resetQueryRepresentation(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @fillQueryRepresentationData(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @TS_execute(i32, i8*, i32, i32) #1

declare dso_local i32 @GETQUERY(i32) #1

declare dso_local i64 @WEP_GETPOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
