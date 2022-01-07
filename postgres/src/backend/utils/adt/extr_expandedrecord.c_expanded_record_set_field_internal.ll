; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_field_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_expanded_record_set_field_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32*, i8*, i8*, i64, i32*, i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.varlena = type { i32 }

@ER_FLAG_IS_DUMMY = common dso_local global i32 0, align 4
@ER_FLAG_IS_DOMAIN = common dso_local global i32 0, align 4
@ER_FLAG_DVALUES_VALID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot assign to field %d of expanded record\00", align 1
@ER_FLAG_DVALUES_ALLOCED = common dso_local global i32 0, align 4
@ER_FLAG_HAVE_EXTERNAL = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expanded_record_set_field_internal(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ER_FLAG_IS_DUMMY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %6
  %30 = phi i1 [ true, %6 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ER_FLAG_IS_DOMAIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @check_domain_for_new_field(%struct.TYPE_14__* %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %29
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ER_FLAG_DVALUES_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = call i32 @deconstruct_expanded_record(%struct.TYPE_14__* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %13, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br label %80

80:                                               ; preds = %73, %58
  %81 = phi i1 [ true, %58 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__* %90, i32 %92)
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %14, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %169, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %169, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @DatumGetPointer(i32 %110)
  %112 = call i64 @VARATT_IS_EXTERNAL(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = call i32 @get_short_term_cxt(%struct.TYPE_14__* %115)
  %117 = call i32 @MemoryContextSwitchTo(i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @DatumGetPointer(i32 %118)
  %120 = inttoptr i64 %119 to %struct.varlena*
  %121 = call i32 @detoast_external_attr(%struct.varlena* %120)
  %122 = call i32 @PointerGetDatum(i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @MemoryContextSwitchTo(i32 %123)
  br label %126

125:                                              ; preds = %109, %104
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %114
  br label %127

127:                                              ; preds = %126, %101
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @MemoryContextSwitchTo(i32 %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @datumCopy(i32 %133, i32 0, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @MemoryContextSwitchTo(i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %127
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MemoryContextReset(i32 %145)
  br label %147

147:                                              ; preds = %142, %127
  %148 = load i32, i32* @ER_FLAG_DVALUES_ALLOCED, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %168

157:                                              ; preds = %147
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @DatumGetPointer(i32 %158)
  %160 = call i64 @VARATT_IS_EXTERNAL(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* @ER_FLAG_HAVE_EXTERNAL, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %157, %147
  br label %169

169:                                              ; preds = %168, %96, %89
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %15, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %16, align 8
  %176 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 5
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %205, label %188

188:                                              ; preds = %169
  %189 = load i32*, i32** %16, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %188
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @DatumGetPointer(i32 %202)
  %204 = inttoptr i64 %203 to i8*
  store i8* %204, i8** %17, align 8
  br label %206

205:                                              ; preds = %188, %169
  store i8* null, i8** %17, align 8
  br label %206

206:                                              ; preds = %205, %196
  %207 = load i32, i32* %9, align 4
  %208 = load i32*, i32** %15, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i8*, i8** %17, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %244

221:                                              ; preds = %206
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ER_FLAG_IS_DUMMY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %221
  %229 = load i8*, i8** %17, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ult i8* %229, %232
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = load i8*, i8** %17, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = icmp uge i8* %235, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234, %228
  %241 = load i8*, i8** %17, align 8
  %242 = call i32 @pfree(i8* %241)
  br label %243

243:                                              ; preds = %240, %234
  br label %244

244:                                              ; preds = %243, %221, %206
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @check_domain_for_new_field(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @deconstruct_expanded_record(%struct.TYPE_14__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i64) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_short_term_cxt(%struct.TYPE_14__*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
