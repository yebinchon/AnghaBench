; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_silly_cmp_tsvector.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_silly_cmp_tsvector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*)* @silly_cmp_tsvector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silly_cmp_tsvector(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i64 @VARSIZE(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i64 @VARSIZE(%struct.TYPE_14__* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %194

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i64 @VARSIZE(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i64 @VARSIZE(%struct.TYPE_14__* %22)
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %194

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %194

35:                                               ; preds = %26
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %194

44:                                               ; preds = %35
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = call %struct.TYPE_13__* @ARRPTR(%struct.TYPE_14__* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %6, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call %struct.TYPE_13__* @ARRPTR(%struct.TYPE_14__* %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %186, %44
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %189

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 1
  store i32 %73, i32* %3, align 4
  br label %194

74:                                               ; preds = %56
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call i64 @STRPTR(%struct.TYPE_14__* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i64 @STRPTR(%struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @tsCompareString(i64 %80, i32 %83, i64 %89, i32 %92, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %74
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %194

97:                                               ; preds = %74
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %179

102:                                              ; preds = %97
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = call i32* @POSDATAPTR(%struct.TYPE_14__* %103, %struct.TYPE_13__* %104)
  store i32* %105, i32** %10, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = call i32* @POSDATAPTR(%struct.TYPE_14__* %106, %struct.TYPE_13__* %107)
  store i32* %108, i32** %11, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = call i32 @POSDATALEN(%struct.TYPE_14__* %109, %struct.TYPE_13__* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = call i32 @POSDATALEN(%struct.TYPE_14__* %112, %struct.TYPE_13__* %113)
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %102
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = call i32 @POSDATALEN(%struct.TYPE_14__* %117, %struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = call i32 @POSDATALEN(%struct.TYPE_14__* %120, %struct.TYPE_13__* %121)
  %123 = icmp sgt i32 %119, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 -1, i32 1
  store i32 %125, i32* %3, align 4
  br label %194

126:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %175, %126
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = call i32 @POSDATALEN(%struct.TYPE_14__* %129, %struct.TYPE_13__* %130)
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %178

133:                                              ; preds = %127
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @WEP_GETPOS(i32 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @WEP_GETPOS(i32 %138)
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %133
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @WEP_GETPOS(i32 %143)
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @WEP_GETPOS(i32 %146)
  %148 = icmp sgt i64 %144, %147
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 -1, i32 1
  store i32 %150, i32* %3, align 4
  br label %194

151:                                              ; preds = %133
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @WEP_GETWEIGHT(i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @WEP_GETWEIGHT(i32 %156)
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %151
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @WEP_GETWEIGHT(i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @WEP_GETWEIGHT(i32 %164)
  %166 = icmp sgt i64 %162, %165
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 -1, i32 1
  store i32 %168, i32* %3, align 4
  br label %194

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %10, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %10, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %11, align 8
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %127

178:                                              ; preds = %127
  br label %179

179:                                              ; preds = %178, %97
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 1
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %6, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 1
  store %struct.TYPE_13__* %185, %struct.TYPE_13__** %7, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %49

189:                                              ; preds = %49
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %159, %141, %116, %95, %64, %43, %34, %25, %18
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i64 @VARSIZE(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @ARRPTR(%struct.TYPE_14__*) #1

declare dso_local i32 @tsCompareString(i64, i32, i64, i32, i32) #1

declare dso_local i64 @STRPTR(%struct.TYPE_14__*) #1

declare dso_local i32* @POSDATAPTR(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @POSDATALEN(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i64 @WEP_GETPOS(i32) #1

declare dso_local i64 @WEP_GETWEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
