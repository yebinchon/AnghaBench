; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_tts_virtual_materialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execTuples.c_tts_virtual_materialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8**, i64*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32, i64 }

@TTS_FLAG_SHOULDFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @tts_virtual_materialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tts_virtual_materialize(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = bitcast %struct.TYPE_10__* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  store i64 0, i64* %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call i64 @TTS_SHOULDFREE(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %213

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %93, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__* %33, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %32
  br label %93

50:                                               ; preds = %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %79

62:                                               ; preds = %50
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @DatumGetPointer(i8* %63)
  %65 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @att_align_nominal(i8* %69, i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32* @DatumGetEOHP(i8* %74)
  %76 = call i64 @EOH_get_flat_size(i32* %75)
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %92

79:                                               ; preds = %62, %50
  %80 = load i64, i64* %5, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @att_align_nominal(i8* %81, i32 %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @att_addlength_datum(i64 %86, i32 %89, i8* %90)
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %79, %67
  br label %93

93:                                               ; preds = %92, %49
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %26

96:                                               ; preds = %26
  %97 = load i64, i64* %5, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %213

100:                                              ; preds = %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i8* @MemoryContextAlloc(i32 %103, i64 %104)
  store i8* %105, i8** %6, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @TTS_FLAG_SHOULDFREE, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %210, %100
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %213

119:                                              ; preds = %113
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__* %120, i32 %121)
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %11, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %119
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127, %119
  br label %210

137:                                              ; preds = %127
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %12, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %180

149:                                              ; preds = %137
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @DatumGetPointer(i8* %150)
  %152 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %180

154:                                              ; preds = %149
  %155 = load i8*, i8** %12, align 8
  %156 = call i32* @DatumGetEOHP(i8* %155)
  store i32* %156, i32** %14, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @att_align_nominal(i8* %157, i32 %160)
  %162 = inttoptr i64 %161 to i8*
  store i8* %162, i8** %6, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = call i64 @EOH_get_flat_size(i32* %163)
  store i64 %164, i64* %13, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i32 @EOH_flatten_into(i32* %165, i8* %166, i64 %167)
  %169 = load i8*, i8** %6, align 8
  %170 = call i8* @PointerGetDatum(i8* %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %170, i8** %176, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 %177
  store i8* %179, i8** %6, align 8
  br label %209

180:                                              ; preds = %149, %137
  store i64 0, i64* %15, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @att_align_nominal(i8* %181, i32 %184)
  %186 = inttoptr i64 %185 to i8*
  store i8* %186, i8** %6, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = call i64 @att_addlength_datum(i64 %187, i32 %190, i8* %191)
  store i64 %192, i64* %15, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = call i32 @DatumGetPointer(i8* %194)
  %196 = load i64, i64* %15, align 8
  %197 = call i32 @memcpy(i8* %193, i32 %195, i64 %196)
  %198 = load i8*, i8** %6, align 8
  %199 = call i8* @PointerGetDatum(i8* %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i8**, i8*** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  store i8* %199, i8** %205, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  store i8* %208, i8** %6, align 8
  br label %209

209:                                              ; preds = %180, %154
  br label %210

210:                                              ; preds = %209, %136
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %113

213:                                              ; preds = %24, %99, %113
  ret void
}

declare dso_local i64 @TTS_SHOULDFREE(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @TupleDescAttr(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i8*) #1

declare dso_local i64 @att_align_nominal(i8*, i32) #1

declare dso_local i64 @EOH_get_flat_size(i32*) #1

declare dso_local i32* @DatumGetEOHP(i8*) #1

declare dso_local i64 @att_addlength_datum(i64, i32, i8*) #1

declare dso_local i8* @MemoryContextAlloc(i32, i64) #1

declare dso_local i32 @EOH_flatten_into(i32*, i8*, i64) #1

declare dso_local i8* @PointerGetDatum(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
