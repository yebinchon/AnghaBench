; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_picksplit.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_picksplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32*, i64, i64, i8*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32* }

@FirstOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @gbt_num_picksplit(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = trunc i64 %20 to i32
  %22 = call i64 @palloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @palloc(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @palloc(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = call i8* @PointerGetDatum(i32 0)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = call i8* @PointerGetDatum(i32 0)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* @FirstOffsetNumber, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %77, %4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @DatumGetPointer(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store i32* %65, i32** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @OffsetNumberNext(i32 %78)
  store i32 %79, i32* %9, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %82 = load i64, i64* @FirstOffsetNumber, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i64 %82
  %84 = bitcast %struct.TYPE_13__* %83 to i8*
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @FirstOffsetNumber, align 8
  %88 = sub i64 %86, %87
  %89 = add i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %8, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = call i32 @qsort_arg(i8* %84, i32 %90, i32 16, i32 %94, i8* %96)
  %98 = load i64, i64* @FirstOffsetNumber, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %173, %80
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %176

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @FirstOffsetNumber, align 8
  %110 = sub i64 %108, %109
  %111 = add i64 %110, 1
  %112 = udiv i64 %111, 2
  %113 = icmp ule i64 %106, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %104
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @gbt_num_bin_union(i8** %116, i32* %122, %struct.TYPE_12__* %123, i32* %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %172

143:                                              ; preds = %104
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @gbt_num_bin_union(i8** %145, i32* %151, %struct.TYPE_12__* %152, i32* %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %160, i32* %167, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %143, %114
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @OffsetNumberNext(i32 %174)
  store i32 %175, i32* %9, align 4
  br label %100

176:                                              ; preds = %100
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %177
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @PointerGetDatum(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @qsort_arg(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @gbt_num_bin_union(i8**, i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
