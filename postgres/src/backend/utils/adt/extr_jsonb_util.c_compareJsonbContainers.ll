; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_compareJsonbContainers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_compareJsonbContainers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@WJB_DONE = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unexpected jbvBinary value\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected jbvDatetime value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareJsonbContainers(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_16__* @JsonbIteratorInit(i32* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_16__* @JsonbIteratorInit(i32* %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  br label %18

18:                                               ; preds = %177, %2
  %19 = call i64 @JsonbIteratorNext(%struct.TYPE_16__** %5, %struct.TYPE_15__* %8, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = call i64 @JsonbIteratorNext(%struct.TYPE_16__** %6, %struct.TYPE_15__* %9, i32 0)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %129

24:                                               ; preds = %18
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @WJB_DONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %180

29:                                               ; preds = %24
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @WJB_END_ARRAY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @WJB_END_OBJECT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29
  br label %177

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %119 [
    i32 128, label %47
    i32 131, label %47
    i32 130, label %47
    i32 133, label %47
    i32 135, label %49
    i32 129, label %90
    i32 134, label %113
    i32 132, label %116
  ]

47:                                               ; preds = %44, %44, %44, %44
  %48 = call i32 @compareJsonbScalarValue(%struct.TYPE_15__* %8, %struct.TYPE_15__* %9)
  store i32 %48, i32* %7, align 4
  br label %119

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %49
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %81, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 -1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %77, %67
  br label %119

90:                                               ; preds = %44
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %104, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 -1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %100, %90
  br label %119

113:                                              ; preds = %44
  %114 = load i32, i32* @ERROR, align 4
  %115 = call i32 @elog(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %119

116:                                              ; preds = %44
  %117 = load i32, i32* @ERROR, align 4
  %118 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %44, %116, %113, %112, %89, %47
  br label %128

120:                                              ; preds = %38
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %122, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 -1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %120, %119
  br label %176

129:                                              ; preds = %18
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @WJB_END_ARRAY, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @WJB_END_OBJECT, align 8
  %136 = icmp ne i64 %134, %135
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i1 [ false, %129 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @Assert(i32 %139)
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* @WJB_END_ARRAY, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @WJB_END_OBJECT, align 8
  %147 = icmp ne i64 %145, %146
  br label %148

148:                                              ; preds = %144, %137
  %149 = phi i1 [ false, %137 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %153, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @Assert(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 134
  %162 = zext i1 %161 to i32
  %163 = call i32 @Assert(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 134
  %167 = zext i1 %166 to i32
  %168 = call i32 @Assert(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %170, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 -1
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %148, %128
  br label %177

177:                                              ; preds = %176, %37
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %18, label %180

180:                                              ; preds = %177, %28
  br label %181

181:                                              ; preds = %184, %180
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = icmp ne %struct.TYPE_16__* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  store %struct.TYPE_16__* %187, %struct.TYPE_16__** %12, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %189 = call i32 @pfree(%struct.TYPE_16__* %188)
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %190, %struct.TYPE_16__** %5, align 8
  br label %181

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %195, %191
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %194 = icmp ne %struct.TYPE_16__* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  store %struct.TYPE_16__* %198, %struct.TYPE_16__** %13, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = call i32 @pfree(%struct.TYPE_16__* %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %6, align 8
  br label %192

202:                                              ; preds = %192
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local %struct.TYPE_16__* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(%struct.TYPE_16__**, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @compareJsonbScalarValue(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
