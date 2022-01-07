; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_variable_range.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_variable_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i32*, i32*)* @get_variable_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_variable_range(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %180

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @get_opcode(i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = call i32 @statistic_proc_security_check(%struct.TYPE_8__* %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %180

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_typlenbyval(i32 %39, i32* %15, i32* %16)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %47 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @datumCopy(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @datumCopy(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %53, %49
  %73 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  br label %85

74:                                               ; preds = %36
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %79 = load i32, i32* @InvalidOid, align 4
  %80 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %77, i32 %78, i32 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  store i32 0, i32* %6, align 4
  br label %180

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %72
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %90 = load i32, i32* @InvalidOid, align 4
  %91 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %92 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %174

94:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @fmgr_info(i32 %95, i32* %22)
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %153, %94
  %98 = load i32, i32* %19, align 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  store i32 %111, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %153

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @FunctionCall2Coll(i32* %22, i32 %114, i32 %120, i32 %121)
  %123 = call i64 @DatumGetBool(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  store i32 1, i32* %20, align 4
  br label %132

132:                                              ; preds = %125, %112
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @FunctionCall2Coll(i32* %22, i32 %134, i32 %135, i32 %141)
  %143 = call i64 @DatumGetBool(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %152

152:                                              ; preds = %145, %132
  br label %153

153:                                              ; preds = %152, %105
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %97

156:                                              ; preds = %97
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @datumCopy(i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @datumCopy(i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %167, %164
  %173 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  br label %174

174:                                              ; preds = %172, %85
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %10, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32*, i32** %11, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %174, %82, %35, %28
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @statistic_proc_security_check(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @get_typlenbyval(i32, i32*, i32*) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_9__*) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
