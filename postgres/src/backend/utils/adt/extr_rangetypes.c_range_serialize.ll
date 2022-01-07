; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_serialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i8, i8 }
%struct.TYPE_16__ = type { i32, i8*, i64, i64 }

@RANGE_EMPTY = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"range lower bound must be less than or equal to range upper bound\00", align 1
@RANGE_LB_INF = common dso_local global i8 0, align 1
@RANGE_LB_INC = common dso_local global i8 0, align 1
@RANGE_UB_INF = common dso_local global i8 0, align 1
@RANGE_UB_INC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @range_serialize(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8 0, i8* %17, align 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i8, i8* @RANGE_EMPTY, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* %17, align 1
  %35 = sext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %17, align 1
  br label %123

38:                                               ; preds = %4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = call i32 @range_cmp_bound_values(%struct.TYPE_14__* %39, %struct.TYPE_16__* %40, %struct.TYPE_16__* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59, %54
  %65 = load i8, i8* @RANGE_EMPTY, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %17, align 1
  %68 = sext i8 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %17, align 1
  br label %122

71:                                               ; preds = %59, %51
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i8, i8* @RANGE_LB_INF, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* %17, align 1
  %80 = sext i8 %79 to i32
  %81 = or i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %17, align 1
  br label %96

83:                                               ; preds = %71
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i8, i8* @RANGE_LB_INC, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* %17, align 1
  %92 = sext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %17, align 1
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %76
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i8, i8* @RANGE_UB_INF, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* %17, align 1
  %105 = sext i8 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %17, align 1
  br label %121

108:                                              ; preds = %96
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i8, i8* @RANGE_UB_INC, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* %17, align 1
  %117 = sext i8 %116 to i32
  %118 = or i32 %117, %115
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %17, align 1
  br label %120

120:                                              ; preds = %113, %108
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %64
  br label %123

123:                                              ; preds = %122, %31
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %13, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %14, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 4
  store i8 %138, i8* %15, align 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i8, i8* %142, align 1
  store i8 %143, i8* %16, align 1
  store i32 4, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @MAXALIGN(i32 %145)
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load i8, i8* %17, align 1
  %151 = call i64 @RANGE_HAS_LBOUND(i8 signext %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %123
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @PG_DETOAST_DATUM_PACKED(i8* %159)
  %161 = call i8* @PointerGetDatum(i32 %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i8, i8* %15, align 1
  %171 = load i32, i32* %13, align 4
  %172 = load i8, i8* %16, align 1
  %173 = call i32 @datum_compute_size(i32 %165, i8* %168, i32 %169, i8 signext %170, i32 %171, i8 signext %172)
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %164, %123
  %175 = load i8, i8* %17, align 1
  %176 = call i64 @RANGE_HAS_UBOUND(i8 signext %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @PG_DETOAST_DATUM_PACKED(i8* %184)
  %186 = call i8* @PointerGetDatum(i32 %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %181, %178
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i8, i8* %15, align 1
  %196 = load i32, i32* %13, align 4
  %197 = load i8, i8* %16, align 1
  %198 = call i32 @datum_compute_size(i32 %190, i8* %193, i32 %194, i8 signext %195, i32 %196, i8 signext %197)
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %189, %174
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, 1
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @palloc0(i32 %204)
  %206 = inttoptr i64 %205 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %206, %struct.TYPE_15__** %9, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @SET_VARSIZE(%struct.TYPE_15__* %207, i32 %208)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 1
  %217 = bitcast %struct.TYPE_15__* %216 to i8*
  store i8* %217, i8** %12, align 8
  %218 = load i8, i8* %17, align 1
  %219 = call i64 @RANGE_HAS_LBOUND(i8 signext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %199
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @Assert(i32 %224)
  %226 = load i8*, i8** %12, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load i8, i8* %15, align 1
  %232 = load i32, i32* %13, align 4
  %233 = load i8, i8* %16, align 1
  %234 = call i8* @datum_write(i8* %226, i8* %229, i32 %230, i8 signext %231, i32 %232, i8 signext %233)
  store i8* %234, i8** %12, align 8
  br label %235

235:                                              ; preds = %221, %199
  %236 = load i8, i8* %17, align 1
  %237 = call i64 @RANGE_HAS_UBOUND(i8 signext %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = call i32 @Assert(i32 %245)
  %247 = load i8*, i8** %12, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i8, i8* %15, align 1
  %253 = load i32, i32* %13, align 4
  %254 = load i8, i8* %16, align 1
  %255 = call i8* @datum_write(i8* %247, i8* %250, i32 %251, i8 signext %252, i32 %253, i8 signext %254)
  store i8* %255, i8** %12, align 8
  br label %256

256:                                              ; preds = %239, %235
  %257 = load i8, i8* %17, align 1
  %258 = load i8*, i8** %12, align 8
  store i8 %257, i8* %258, align 1
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  ret %struct.TYPE_15__* %259
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @range_cmp_bound_values(%struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @RANGE_HAS_LBOUND(i8 signext) #1

declare dso_local i8* @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM_PACKED(i8*) #1

declare dso_local i32 @datum_compute_size(i32, i8*, i32, i8 signext, i32, i8 signext) #1

declare dso_local i64 @RANGE_HAS_UBOUND(i8 signext) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @datum_write(i8*, i8*, i32, i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
