; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_box_interpt_lseg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_box_interpt_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_25__, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @box_interpt_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @box_interpt_lseg(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @float8_min(i32 %16, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @float8_min(i32 %31, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @float8_max(i32 %46, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @float8_max(i32 %61, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = call i32 @box_ov(%struct.TYPE_24__* %8, %struct.TYPE_24__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %154

75:                                               ; preds = %3
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = icmp ne %struct.TYPE_22__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = call i32 @box_cn(%struct.TYPE_22__* %10, %struct.TYPE_24__* %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %83 = call i32 @lseg_closept_point(%struct.TYPE_22__* %81, %struct.TYPE_23__* %82, %struct.TYPE_22__* %10)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i64 0
  %90 = call i64 @box_contain_point(%struct.TYPE_24__* %85, %struct.TYPE_21__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 1
  %98 = call i64 @box_contain_point(%struct.TYPE_24__* %93, %struct.TYPE_21__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %84
  store i32 1, i32* %4, align 4
  br label %154

101:                                              ; preds = %92
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = call i32 @statlseg_construct(%struct.TYPE_23__* %9, %struct.TYPE_25__* %113, %struct.TYPE_22__* %10)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = call i64 @lseg_interpt_lseg(i32* null, %struct.TYPE_23__* %9, %struct.TYPE_23__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %154

119:                                              ; preds = %101
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = call i32 @statlseg_construct(%struct.TYPE_23__* %9, %struct.TYPE_25__* %121, %struct.TYPE_22__* %10)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = call i64 @lseg_interpt_lseg(i32* null, %struct.TYPE_23__* %9, %struct.TYPE_23__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 1, i32* %4, align 4
  br label %154

127:                                              ; preds = %119
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = call i32 @statlseg_construct(%struct.TYPE_23__* %9, %struct.TYPE_25__* %139, %struct.TYPE_22__* %10)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = call i64 @lseg_interpt_lseg(i32* null, %struct.TYPE_23__* %9, %struct.TYPE_23__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %127
  store i32 1, i32* %4, align 4
  br label %154

145:                                              ; preds = %127
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = call i32 @statlseg_construct(%struct.TYPE_23__* %9, %struct.TYPE_25__* %147, %struct.TYPE_22__* %10)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = call i64 @lseg_interpt_lseg(i32* null, %struct.TYPE_23__* %9, %struct.TYPE_23__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i32 1, i32* %4, align 4
  br label %154

153:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %152, %144, %126, %118, %100, %74
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i8* @float8_min(i32, i32) #1

declare dso_local i8* @float8_max(i32, i32) #1

declare dso_local i32 @box_ov(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @box_cn(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @lseg_closept_point(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i64 @box_contain_point(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i32 @statlseg_construct(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_22__*) #1

declare dso_local i64 @lseg_interpt_lseg(i32*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
