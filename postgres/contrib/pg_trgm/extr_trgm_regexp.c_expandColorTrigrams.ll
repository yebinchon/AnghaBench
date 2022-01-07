; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_expandColorTrigrams.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_expandColorTrigrams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64* }

@TRGMHDRSIZE = common dso_local global i64 0, align 8
@ARRKEY = common dso_local global i32 0, align 4
@COLOR_BLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, i32)* @expandColorTrigrams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @expandColorTrigrams(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca [3 x %struct.TYPE_15__*], align 16
  %12 = alloca [3 x %struct.TYPE_13__], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* @TRGMHDRSIZE, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %23, %28
  %30 = call i64 @MemoryContextAllocZero(i32 %22, i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %5, align 8
  %32 = load i32, i32* @ARRKEY, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = load i32, i32* @ARRKEY, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CALCGTSIZE(i32 %36, i32 %39)
  %41 = call i32 @SET_VARSIZE(%struct.TYPE_16__* %35, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = call i32* @GETARR(%struct.TYPE_16__* %42)
  store i32* %43, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %173, %2
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %176

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %55
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %10, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %173

62:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %101

66:                                               ; preds = %63
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @COLOR_BLANK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %66
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 %91
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %92, align 8
  br label %97

93:                                               ; preds = %66
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 %95
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %96, align 8
  br label %97

97:                                               ; preds = %93, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %63

101:                                              ; preds = %63
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %169, %101
  %103 = load i32, i32* %14, align 4
  %104 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 16
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %172

109:                                              ; preds = %102
  %110 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %12, i64 0, i64 0
  %111 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 16
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %116
  %118 = bitcast %struct.TYPE_13__* %110 to i8*
  %119 = bitcast %struct.TYPE_13__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %165, %109
  %121 = load i32, i32* %15, align 4
  %122 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %120
  %128 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %12, i64 0, i64 1
  %129 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = bitcast %struct.TYPE_13__* %128 to i8*
  %137 = bitcast %struct.TYPE_13__* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %161, %127
  %139 = load i32, i32* %16, align 4
  %140 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 16
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %138
  %146 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %12, i64 0, i64 2
  %147 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %11, i64 0, i64 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 16
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %152
  %154 = bitcast %struct.TYPE_13__* %146 to i8*
  %155 = bitcast %struct.TYPE_13__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 4, i1 false)
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %12, i64 0, i64 0
  %158 = call i32 @fillTrgm(i32* %156, %struct.TYPE_13__* %157)
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %6, align 8
  br label %161

161:                                              ; preds = %145
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %138

164:                                              ; preds = %138
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %120

168:                                              ; preds = %120
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %102

172:                                              ; preds = %102
  br label %173

173:                                              ; preds = %172, %61
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %44

176:                                              ; preds = %44
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %177
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i64) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @CALCGTSIZE(i32, i32) #1

declare dso_local i32* @GETARR(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fillTrgm(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
