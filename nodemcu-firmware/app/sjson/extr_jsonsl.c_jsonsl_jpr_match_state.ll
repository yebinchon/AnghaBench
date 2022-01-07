; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_jpr_match_state.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_jpr_match_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32**, %struct.jsonsl_state_st* }
%struct.jsonsl_state_st = type { i32, i64, i64 }

@JSONSL_MATCH_NOMATCH = common dso_local global i64 0, align 8
@JSONSL_T_LIST = common dso_local global i64 0, align 8
@JSONSL_MATCH_COMPLETE = common dso_local global i64 0, align 8
@JSONSL_MATCH_POSSIBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jsonsl_jpr_match_state(%struct.TYPE_3__* %0, %struct.jsonsl_state_st* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.jsonsl_state_st*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.jsonsl_state_st*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store %struct.jsonsl_state_st* %1, %struct.jsonsl_state_st** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* null, i32** %13, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* @JSONSL_MATCH_NOMATCH, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  store i32* null, i32** %6, align 8
  br label %152

27:                                               ; preds = %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %35 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %33, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %30, i64 %39
  store i64* %40, i64** %15, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  store i64* %46, i64** %14, align 8
  %47 = load i64*, i64** %15, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %27
  %51 = load i64*, i64** %14, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @JSONSL_MATCH_NOMATCH, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  store i32* null, i32** %6, align 8
  br label %152

54:                                               ; preds = %27
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %56, align 8
  %58 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %59 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %57, i64 %61
  %63 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %62, i64 -1
  store %struct.jsonsl_state_st* %63, %struct.jsonsl_state_st** %12, align 8
  %64 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %12, align 8
  %65 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @JSONSL_T_LIST, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %12, align 8
  %71 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = load i64*, i64** %14, align 8
  store i64 0, i64* %74, align 8
  store i64 0, i64* %18, align 8
  %75 = load i64*, i64** %14, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(i64* %75, i32 0, i32 %81)
  store i64 0, i64* %17, align 8
  br label %83

83:                                               ; preds = %141, %73
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %144

90:                                               ; preds = %83
  %91 = load i64*, i64** %15, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %90
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %19, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %12, align 8
  %107 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %12, align 8
  %110 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @jsonsl_jpr_match(i32* %105, i64 %108, i32 %111, i8* %112, i64 %113)
  %115 = load i64*, i64** %11, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @JSONSL_MATCH_COMPLETE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %97
  %121 = load i32*, i32** %19, align 8
  store i32* %121, i32** %13, align 8
  %122 = load i64*, i64** %14, align 8
  store i64 0, i64* %122, align 8
  %123 = load i32*, i32** %13, align 8
  store i32* %123, i32** %6, align 8
  br label %152

124:                                              ; preds = %97
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @JSONSL_MATCH_POSSIBLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, 1
  %132 = load i64*, i64** %14, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %18, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %18, align 8
  br label %137

137:                                              ; preds = %129, %124
  br label %138

138:                                              ; preds = %137
  br label %140

139:                                              ; preds = %90
  br label %144

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %17, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %17, align 8
  br label %83

144:                                              ; preds = %139, %83
  %145 = load i64*, i64** %14, align 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* @JSONSL_MATCH_NOMATCH, align 8
  %150 = load i64*, i64** %11, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %148, %144
  store i32* null, i32** %6, align 8
  br label %152

152:                                              ; preds = %151, %120, %50, %24
  %153 = load i32*, i32** %6, align 8
  ret i32* %153
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @jsonsl_jpr_match(i32*, i64, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
