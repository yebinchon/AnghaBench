; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_FindWord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_FindWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__*, i32, i64 }

@FF_COMPOUNDFLAGMASK = common dso_local global i32 0, align 4
@FF_COMPOUNDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i32)* @FindWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindWord(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %14, align 8
  %20 = load i32, i32* @FF_COMPOUNDFLAGMASK, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %130, %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64*, i64** %14, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %131

32:                                               ; preds = %30
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %11, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %42
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %12, align 8
  br label %44

44:                                               ; preds = %124, %32
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = icmp ult %struct.TYPE_6__* %45, %46
  br i1 %47, label %48, label %125

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = ptrtoint %struct.TYPE_6__* %50 to i64
  %53 = ptrtoint %struct.TYPE_6__* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 40
  %56 = ashr i64 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %56
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %13, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %14, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %48
  %65 = load i64*, i64** %14, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @FF_COMPOUNDONLY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %132

85:                                               ; preds = %77
  br label %95

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %132

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %85
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @IsAffixFlagInUse(%struct.TYPE_8__* %96, i32 %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %132

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %69, %64
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %10, align 8
  %109 = load i64*, i64** %14, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %14, align 8
  br label %125

111:                                              ; preds = %48
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %14, align 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 1
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %11, align 8
  br label %123

121:                                              ; preds = %111
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %12, align 8
  br label %123

123:                                              ; preds = %121, %118
  br label %124

124:                                              ; preds = %123
  br label %44

125:                                              ; preds = %105, %44
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %128 = icmp uge %struct.TYPE_6__* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %131

130:                                              ; preds = %125
  br label %23

131:                                              ; preds = %129, %30
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %103, %93, %84
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @IsAffixFlagInUse(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
