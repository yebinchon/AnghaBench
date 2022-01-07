; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_CopyCachedPlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_CopyCachedPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i8*, i64, i8*, i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32*, i32, i32, i8* }

@CACHEDPLANSOURCE_MAGIC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot copy a one-shot cached plan\00", align 1
@CurrentMemoryContext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"CachedPlanSource\00", align 1
@ALLOCSET_START_SMALL_SIZES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CachedPlanQuery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @CopyCachedPlan(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CACHEDPLANSOURCE_MAGIC, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i8*, i8** @CurrentMemoryContext, align 8
  %27 = load i32, i32* @ALLOCSET_START_SMALL_SIZES, align 4
  %28 = call i8* @AllocSetContextCreate(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @MemoryContextSwitchTo(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = call i64 @palloc0(i32 168)
  %32 = inttoptr i64 %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %3, align 8
  %33 = load i64, i64* @CACHEDPLANSOURCE_MAGIC, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 28
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @copyObject(i8* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 28
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 27
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pstrdup(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 27
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 27
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MemoryContextSetIdentifier(i8* %48, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 26
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %25
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i64 @palloc(i32 %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 25
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 25
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 25
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32* %75, i32* %78, i32 %84)
  br label %89

86:                                               ; preds = %25
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 25
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %86, %62
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 24
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 24
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 23
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 23
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 22
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 22
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 21
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 21
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 20
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %89
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 20
  %122 = load i32*, i32** %121, align 8
  %123 = call i32* @CreateTupleDescCopy(i32* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 20
  store i32* %123, i32** %125, align 8
  br label %129

126:                                              ; preds = %89
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 20
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %126, %119
  %130 = load i8*, i8** %4, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 19
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* @ALLOCSET_START_SMALL_SIZES, align 4
  %135 = call i8* @AllocSetContextCreate(i8* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  store i8* %135, i8** %5, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = call i8* @MemoryContextSwitchTo(i8* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 18
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @copyObject(i8* %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 18
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 17
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @copyObject(i8* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 17
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 16
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @copyObject(i8* %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 16
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 15
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %129
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 15
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @CopyOverrideSearchPath(i64 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 15
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %129
  %168 = load i8*, i8** %5, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 14
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 13
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 12
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 10
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 4
  store i32 0, i32* %193, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 8
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = call i8* @MemoryContextSwitchTo(i8* %219)
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %221
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i8* @AllocSetContextCreate(i8*, i8*, i32) #1

declare dso_local i8* @MemoryContextSwitchTo(i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @copyObject(i8*) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @MemoryContextSetIdentifier(i8*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @CreateTupleDescCopy(i32*) #1

declare dso_local i64 @CopyOverrideSearchPath(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
