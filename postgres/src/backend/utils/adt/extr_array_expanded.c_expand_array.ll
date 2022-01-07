; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_expand_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_expand_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i8*, i32, i32, i32*, i64, i64, i64, i32*, i32*, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"expanded array\00", align 1
@ALLOCSET_START_SMALL_SIZES = common dso_local global i32 0, align 4
@EA_methods = common dso_local global i32 0, align 4
@EA_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_array(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ALLOCSET_START_SMALL_SIZES, align 4
  %16 = call i32 @AllocSetContextCreate(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @MemoryContextAlloc(i32 %17, i32 112)
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @EOH_init_header(i32* %21, i32* @EA_methods, i32 %22)
  %24 = load i64, i64* @EA_MAGIC, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DatumGetPointer(i32 %27)
  %29 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @DatumGetEOHP(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %13, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EA_MAGIC, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %45
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = call i32 @copy_byval_expanded_array(%struct.TYPE_6__* %76, %struct.TYPE_6__* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = call i32 @EOHPGetRWDatum(i32* %80)
  store i32 %81, i32* %4, align 4
  br label %196

82:                                               ; preds = %70, %45
  br label %83

83:                                               ; preds = %82, %3
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @MemoryContextSwitchTo(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32* @DatumGetArrayTypePCopy(i32 %86)
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @MemoryContextSwitchTo(i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @ARR_NDIM(i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 16
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @ARR_DIMS(i32* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 15
  store i32 %95, i32* %97, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @ARR_LBOUND(i32* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 14
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i64 @ARR_ELEMTYPE(i32* %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %83
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %108
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 12
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 11
  store i32 %129, i32* %131, align 8
  br label %167

132:                                              ; preds = %108, %83
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 13
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 12
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 11
  %142 = call i32 @get_typlenbyvalalign(i64 %135, i32* %137, i64* %139, i32* %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %132
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 12
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %145, %132
  br label %167

167:                                              ; preds = %166, %116
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 10
  store i32* null, i32** %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 9
  store i32* null, i32** %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 8
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 7
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 6
  store i64 0, i64* %177, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  store i32* %178, i32** %180, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @ARR_DATA_PTR(i32* %181)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = bitcast i32* %185 to i8*
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @ARR_SIZE(i32* %187)
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = call i32 @EOHPGetRWDatum(i32* %194)
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %167, %75
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @EOH_init_header(i32*, i32*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @DatumGetEOHP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @copy_byval_expanded_array(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @EOHPGetRWDatum(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @DatumGetArrayTypePCopy(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_LBOUND(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @get_typlenbyvalalign(i64, i32*, i64*, i32*) #1

declare dso_local i32 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @ARR_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
