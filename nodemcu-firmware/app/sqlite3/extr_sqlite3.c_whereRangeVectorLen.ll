; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereRangeVectorLen.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereRangeVectorLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64*, i64*, i32*, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_26__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32, i64, i32, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_37__*, %struct.TYPE_35__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_26__* }
%struct.TYPE_35__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_26__* }
%struct.TYPE_28__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32 }

@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@XN_ROWID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_25__*, i32, %struct.TYPE_24__*)* @whereRangeVectorLen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereRangeVectorLen(i32* %0, i32 %1, %struct.TYPE_25__* %2, i32 %3, %struct.TYPE_24__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %10, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %23 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_28__* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = call i32 @MIN(i32 %24, i64 %30)
  store i32 %31, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %184, %5
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %187

36:                                               ; preds = %32
  store i8 0, i8* %14, align 1
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  store %struct.TYPE_26__* %51, %struct.TYPE_26__** %16, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %17, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EP_xIsSelect, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %36
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  store %struct.TYPE_26__* %76, %struct.TYPE_26__** %17, align 8
  br label %89

77:                                               ; preds = %36
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  store %struct.TYPE_26__* %88, %struct.TYPE_26__** %17, align 8
  br label %89

89:                                               ; preds = %77, %63
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TK_COLUMN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %133, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %133, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %104, %113
  br i1 %114, label %133, label %115

115:                                              ; preds = %101
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %118, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %124, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %115, %101, %95, %89
  br label %187

134:                                              ; preds = %115
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XN_ROWID, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @testcase(i32 %140)
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %144 = call i32 @sqlite3ExprAffinity(%struct.TYPE_26__* %143)
  %145 = call signext i8 @sqlite3CompareAffinity(%struct.TYPE_26__* %142, i32 %144)
  store i8 %145, i8* %13, align 1
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call signext i8 @sqlite3TableColumnAffinity(i32 %148, i64 %151)
  store i8 %152, i8* %14, align 1
  %153 = load i8, i8* %13, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* %14, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %134
  br label %187

159:                                              ; preds = %134
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %163 = call %struct.TYPE_27__* @sqlite3BinaryCompareCollSeq(i32* %160, %struct.TYPE_26__* %161, %struct.TYPE_26__* %162)
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %15, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %165 = icmp eq %struct.TYPE_27__* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %187

167:                                              ; preds = %159
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @sqlite3StrICmp(i32 %170, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %167
  br label %187

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %32

187:                                              ; preds = %182, %166, %158, %133, %32
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_28__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local signext i8 @sqlite3CompareAffinity(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3ExprAffinity(%struct.TYPE_26__*) #1

declare dso_local signext i8 @sqlite3TableColumnAffinity(i32, i64) #1

declare dso_local %struct.TYPE_27__* @sqlite3BinaryCompareCollSeq(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
