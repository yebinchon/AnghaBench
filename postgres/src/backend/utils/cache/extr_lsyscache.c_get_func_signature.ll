; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_func_signature.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_func_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_func_signature(i32 %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @PROCOID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ObjectIdGetDatum(i32 %11)
  %13 = call i32 @SearchSysCache1(i32 %10, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @palloc(i32 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32**, i32*** %5, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i32* %51, i32 %55, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ReleaseSysCache(i32 %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
