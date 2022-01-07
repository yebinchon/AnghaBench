; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeAnyItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeAnyItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@jperNotFound = common dso_local global i64 0, align 8
@WJB_DONE = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@WJB_VALUE = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@PG_UINT32_MAX = common dso_local global i64 0, align 8
@jbvBinary = common dso_local global i64 0, align 8
@jperOk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, i32*, i32*, i64, i64, i64, i32, i32)* @executeAnyItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @executeAnyItem(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_12__, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i64, i64* @jperNotFound, align 8
  store i64 %25, i64* %20, align 8
  %26 = call i32 (...) @check_stack_depth()
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %17, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %9
  %31 = load i64, i64* %20, align 8
  store i64 %31, i64* %10, align 8
  br label %167

32:                                               ; preds = %9
  %33 = load i32*, i32** %13, align 8
  %34 = call i32* @JsonbIteratorInit(i32* %33)
  store i32* %34, i32** %21, align 8
  br label %35

35:                                               ; preds = %164, %32
  %36 = call i64 @JsonbIteratorNext(i32** %21, %struct.TYPE_12__* %23, i32 1)
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* @WJB_DONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %165

39:                                               ; preds = %35
  %40 = load i64, i64* %22, align 8
  %41 = load i64, i64* @WJB_KEY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = call i64 @JsonbIteratorNext(i32** %21, %struct.TYPE_12__* %23, i32 1)
  store i64 %44, i64* %22, align 8
  %45 = load i64, i64* %22, align 8
  %46 = load i64, i64* @WJB_VALUE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i64, i64* %22, align 8
  %52 = load i64, i64* @WJB_VALUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* @WJB_ELEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %164

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* @PG_UINT32_MAX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %126

66:                                               ; preds = %62
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @PG_UINT32_MAX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @jbvBinary, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %70, %58
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %24, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i64 @executeItemOptUnwrapTarget(%struct.TYPE_13__* %87, i32* %88, %struct.TYPE_12__* %23, i32* %89, i32 %90)
  store i64 %91, i64* %20, align 8
  %92 = load i32, i32* %24, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %101

95:                                               ; preds = %78
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i64 @executeItemOptUnwrapTarget(%struct.TYPE_13__* %96, i32* %97, %struct.TYPE_12__* %23, i32* %98, i32 %99)
  store i64 %100, i64* %20, align 8
  br label %101

101:                                              ; preds = %95, %81
  %102 = load i64, i64* %20, align 8
  %103 = call i64 @jperIsError(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %165

106:                                              ; preds = %101
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* @jperOk, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %165

114:                                              ; preds = %110, %106
  br label %125

115:                                              ; preds = %75
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @copyJsonbValue(%struct.TYPE_12__* %23)
  %121 = call i32 @JsonValueListAppend(i32* %119, i32 %120)
  br label %124

122:                                              ; preds = %115
  %123 = load i64, i64* @jperOk, align 8
  store i64 %123, i64* %10, align 8
  br label %167

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %114
  br label %126

126:                                              ; preds = %125, %70, %66, %62
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %17, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @jbvBinary, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %17, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i64 @executeAnyItem(%struct.TYPE_13__* %136, i32* %137, i32* %141, i32* %142, i64 %144, i64 %145, i64 %146, i32 %147, i32 %148)
  store i64 %149, i64* %20, align 8
  %150 = load i64, i64* %20, align 8
  %151 = call i64 @jperIsError(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %135
  br label %165

154:                                              ; preds = %135
  %155 = load i64, i64* %20, align 8
  %156 = load i64, i64* @jperOk, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32*, i32** %14, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %165

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %130, %126
  br label %164

164:                                              ; preds = %163, %54
  br label %35

165:                                              ; preds = %161, %153, %113, %105, %35
  %166 = load i64, i64* %20, align 8
  store i64 %166, i64* %10, align 8
  br label %167

167:                                              ; preds = %165, %122, %30
  %168 = load i64, i64* %10, align 8
  ret i64 %168
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @executeItemOptUnwrapTarget(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @jperIsError(i64) #1

declare dso_local i32 @JsonValueListAppend(i32*, i32) #1

declare dso_local i32 @copyJsonbValue(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
