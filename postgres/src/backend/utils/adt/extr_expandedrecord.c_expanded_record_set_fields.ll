; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_fields.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i8*, i8*, %struct.TYPE_11__, i32, i32, i32*, i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.varlena = type { i32 }

@ER_FLAG_IS_DUMMY = common dso_local global i32 0, align 4
@ER_FLAG_DVALUES_VALID = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4
@ER_FLAG_HAVE_EXTERNAL = common dso_local global i32 0, align 4
@ER_FLAG_DVALUES_ALLOCED = common dso_local global i32 0, align 4
@ER_FLAG_IS_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expanded_record_set_fields(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ER_FLAG_IS_DUMMY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ER_FLAG_DVALUES_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = call i32 @deconstruct_expanded_record(%struct.TYPE_14__* %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 10
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MemoryContextSwitchTo(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %193, %36
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %196

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__* %75, i32 %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %14, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %193

83:                                               ; preds = %74
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %16, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %182, label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %147, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  %107 = load i32, i32* %15, align 4
  %108 = call i64 @DatumGetPointer(i32 %107)
  %109 = call i64 @VARATT_IS_EXTERNAL(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = call i64 @DatumGetPointer(i32 %115)
  %117 = inttoptr i64 %116 to %struct.varlena*
  %118 = call i32 @detoast_external_attr(%struct.varlena* %117)
  %119 = call i32 @PointerGetDatum(i32 %118)
  store i32 %119, i32* %15, align 4
  br label %134

120:                                              ; preds = %111
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @datumCopy(i32 %121, i32 0, i32 -1)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i64 @DatumGetPointer(i32 %123)
  %125 = call i64 @VARATT_IS_EXTERNAL(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @ER_FLAG_HAVE_EXTERNAL, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %120
  br label %134

134:                                              ; preds = %133, %114
  br label %141

135:                                              ; preds = %106, %101
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @datumCopy(i32 %136, i32 0, i32 %139)
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %135, %134
  %142 = load i32, i32* @ER_FLAG_DVALUES_ALLOCED, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %98
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %147
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @DatumGetPointer(i32 %163)
  %165 = inttoptr i64 %164 to i8*
  store i8* %165, i8** %17, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ult i8* %166, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load i8*, i8** %17, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = icmp uge i8* %172, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171, %158
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 @pfree(i8* %178)
  br label %180

180:                                              ; preds = %177, %171
  br label %181

181:                                              ; preds = %180, %147
  br label %182

182:                                              ; preds = %181, %83
  %183 = load i32, i32* %15, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %182, %82
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %68

196:                                              ; preds = %68
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ER_FLAG_IS_DOMAIN, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %196
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = call i32 @get_short_term_cxt(%struct.TYPE_14__* %204)
  %206 = call i32 @MemoryContextSwitchTo(i32 %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %208 = call i32 @ExpandedRecordGetRODatum(%struct.TYPE_14__* %207)
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @domain_check(i32 %208, i32 0, i32 %211, i32* %213, i32 %217)
  br label %219

219:                                              ; preds = %203, %196
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @MemoryContextSwitchTo(i32 %220)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @deconstruct_expanded_record(%struct.TYPE_14__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i64) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @get_short_term_cxt(%struct.TYPE_14__*) #1

declare dso_local i32 @domain_check(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ExpandedRecordGetRODatum(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
