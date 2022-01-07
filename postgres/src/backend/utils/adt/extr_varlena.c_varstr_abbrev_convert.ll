; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_abbrev_convert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_abbrev_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BPCHAROID = common dso_local global i64 0, align 8
@MaxAllocSize = common dso_local global i32 0, align 4
@PG_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@COLLPROVIDER_LIBC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i64 0, align 8
@U_ZERO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @varstr_abbrev_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @varstr_abbrev_convert(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @DatumGetVarStringPP(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @VARDATA_ANY(i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = bitcast i32* %8 to i8*
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @memset(i8* %22, i32 0, i32 4)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @VARSIZE_ANY_EXHDR(i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BPCHAROID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @bpchartruelen(i8* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @Min(i32 %43, i32 4)
  %45 = call i32 @memcpy(i8* %41, i8* %42, i32 %44)
  br label %171

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @pfree(i8* %55)
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  %63 = load i32, i32* @MaxAllocSize, align 4
  %64 = call i32 @Min(i32 %62, i32 %63)
  %65 = call i8* @Max(i32 %58, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @palloc(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %52, %46
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @memcmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @Min(i32 4, i32 %101)
  %103 = call i32 @memcpy(i8* %95, i8* %98, i32 %102)
  br label %201

104:                                              ; preds = %86, %81, %75
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @memcpy(i8* %107, i8* %108, i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %140, %104
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @strxfrm(i8* %123, i8* %126, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %120
  br label %163

140:                                              ; preds = %120
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @pfree(i8* %143)
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 2
  %151 = load i32, i32* @MaxAllocSize, align 4
  %152 = call i32 @Min(i32 %150, i32 %151)
  %153 = call i8* @Max(i32 %146, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @palloc(i32 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  br label %120

163:                                              ; preds = %139
  %164 = load i8*, i8** %9, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @Min(i32 4, i32 %168)
  %170 = call i32 @memcpy(i8* %164, i8* %167, i32 %169)
  br label %171

171:                                              ; preds = %163, %40
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @PG_CACHE_LINE_SIZE, align 4
  %175 = call i32 @Min(i32 %173, i32 %174)
  %176 = call i32 @hash_any(i8* %172, i32 %175)
  %177 = call i32 @DatumGetUInt32(i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @PG_CACHE_LINE_SIZE, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %171
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @hash_uint32(i32 %182)
  %184 = call i32 @DatumGetUInt32(i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = xor i32 %185, %184
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %181, %171
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 9
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @addHyperLogLog(i32* %189, i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @hash_uint32(i32 %192)
  %194 = call i32 @DatumGetUInt32(i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @addHyperLogLog(i32* %196, i32 %197)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %187, %94
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @DatumBigEndianToNative(i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i8*, i8** %6, align 8
  %205 = call i32 @PointerGetDatum(i8* %204)
  %206 = load i32, i32* %3, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load i8*, i8** %6, align 8
  %210 = call i32 @pfree(i8* %209)
  br label %211

211:                                              ; preds = %208, %201
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i8* @DatumGetVarStringPP(i32) #1

declare dso_local i8* @VARDATA_ANY(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i8*) #1

declare dso_local i32 @bpchartruelen(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @Max(i32, i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strxfrm(i8*, i8*, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_any(i8*, i32) #1

declare dso_local i32 @hash_uint32(i32) #1

declare dso_local i32 @addHyperLogLog(i32*, i32) #1

declare dso_local i32 @DatumBigEndianToNative(i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
