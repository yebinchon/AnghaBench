; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isCandidateForInOpt.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isCandidateForInOpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, %struct.TYPE_19__*, %struct.TYPE_17__*, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_VarSelect = common dso_local global i32 0, align 4
@SF_Distinct = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*)* @isCandidateForInOpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @isCandidateForInOpt(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = load i32, i32* @EP_xIsSelect, align 4
  %12 = call i64 @ExprHasProperty(%struct.TYPE_20__* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = load i32, i32* @EP_VarSelect, align 4
  %18 = call i64 @ExprHasProperty(%struct.TYPE_20__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

21:                                               ; preds = %15
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

31:                                               ; preds = %21
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SF_Distinct, align 4
  %36 = load i32, i32* @SF_Aggregate, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SF_Distinct, align 4
  %45 = load i32, i32* @SF_Aggregate, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* @SF_Distinct, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SF_Distinct, align 4
  %56 = load i32, i32* @SF_Aggregate, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = load i32, i32* @SF_Aggregate, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @testcase(i32 %61)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

63:                                               ; preds = %31
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

75:                                               ; preds = %63
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

87:                                               ; preds = %75
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %5, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = icmp ne %struct.TYPE_17__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

100:                                              ; preds = %87
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

109:                                              ; preds = %100
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %7, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = call i64 @IsVirtual(%struct.TYPE_16__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

130:                                              ; preds = %109
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %6, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = icmp ne %struct.TYPE_19__* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %172, %130
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %138
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %9, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TK_COLUMN, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %177

159:                                              ; preds = %144
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %162, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  br label %172

172:                                              ; preds = %159
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %138

175:                                              ; preds = %138
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %176, %struct.TYPE_18__** %2, align 8
  br label %177

177:                                              ; preds = %175, %158, %129, %108, %99, %86, %74, %40, %30, %20, %14
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %178
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
