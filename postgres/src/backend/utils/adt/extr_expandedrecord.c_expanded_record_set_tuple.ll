; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8*, i8*, i32, i32*, i32*, i32, i64, %struct.TYPE_18__*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }

@ER_FLAG_IS_DUMMY = common dso_local global i32 0, align 4
@ER_FLAG_IS_DOMAIN = common dso_local global i32 0, align 4
@ER_FLAGS_NON_DATA = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_ALLOCED = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4
@ER_FLAG_HAVE_EXTERNAL = common dso_local global i32 0, align 4
@ER_FLAG_DVALUES_ALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expanded_record_set_tuple(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ER_FLAG_IS_DUMMY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ER_FLAG_IS_DOMAIN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = call i32 @check_domain_for_new_tuple(%struct.TYPE_19__* %35, %struct.TYPE_18__* %36)
  br label %38

38:                                               ; preds = %34, %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = icmp ne %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = call i64 @HeapTupleHasExternal(%struct.TYPE_18__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = call i32 @get_short_term_cxt(%struct.TYPE_19__* %51)
  %53 = call i32 @MemoryContextSwitchTo(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_18__* @toast_flatten_tuple(%struct.TYPE_18__* %54, i32 %57)
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @MemoryContextSwitchTo(i32 %59)
  br label %62

61:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %41, %38
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ER_FLAGS_NON_DATA, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %63
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MemoryContextSwitchTo(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = call %struct.TYPE_18__* @heap_copytuple(%struct.TYPE_18__* %81)
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %14, align 8
  %83 = load i32, i32* @ER_FLAG_FVALUE_ALLOCED, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @MemoryContextSwitchTo(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @MemoryContextReset(i32 %93)
  br label %95

95:                                               ; preds = %90, %75
  br label %98

96:                                               ; preds = %72, %63
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %14, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %10, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %11, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %12, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %109 = icmp ne %struct.TYPE_18__* %108, null
  br i1 %109, label %110, label %142

110:                                              ; preds = %98
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 8
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %135 = call i64 @HeapTupleHasExternal(%struct.TYPE_18__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %110
  %138 = load i32, i32* @ER_FLAG_HAVE_EXTERNAL, align 4
  %139 = load i32, i32* %13, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %137, %110
  br label %149

142:                                              ; preds = %98
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %144, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  store i8* null, i8** %146, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  store i8* null, i8** %148, align 8
  br label %149

149:                                              ; preds = %142, %141
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 7
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @ER_FLAG_DVALUES_ALLOCED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %211

159:                                              ; preds = %149
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %163

163:                                              ; preds = %207, %159
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %210

169:                                              ; preds = %163
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %206, label %178

178:                                              ; preds = %169
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = call %struct.TYPE_16__* @TupleDescAttr(i32 %179, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %206, label %185

185:                                              ; preds = %178
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @DatumGetPointer(i32 %192)
  %194 = inttoptr i64 %193 to i8*
  store i8* %194, i8** %18, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = icmp ult i8* %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %185
  %199 = load i8*, i8** %18, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = icmp uge i8* %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198, %185
  %203 = load i8*, i8** %18, align 8
  %204 = call i32 @pfree(i8* %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %206

206:                                              ; preds = %205, %178, %169
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %163

210:                                              ; preds = %163
  br label %211

211:                                              ; preds = %210, %149
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @ER_FLAG_FVALUE_ALLOCED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %218 = call i32 @heap_freetuple(%struct.TYPE_18__* %217)
  br label %219

219:                                              ; preds = %216, %211
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @check_domain_for_new_tuple(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @HeapTupleHasExternal(%struct.TYPE_18__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_short_term_cxt(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @toast_flatten_tuple(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @heap_copytuple(%struct.TYPE_18__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local %struct.TYPE_16__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
