; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_trftypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_trftypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PROCOID = common dso_local global i32 0, align 4
@Anum_pg_proc_protrftypes = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"protrftypes is not a 1-D Oid array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_func_trftypes(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %10 = load i32, i32* @PROCOID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @Anum_pg_proc_protrftypes, align 4
  %13 = call i32 @SysCacheGetAttr(i32 %10, i32 %11, i32 %12, i32* %9)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @DatumGetArrayTypeP(i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @ARR_DIMS(i32* %19)
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ARR_NDIM(i32* %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %38, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @ARR_HASNULL(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @ARR_ELEMTYPE(i32* %34)
  %36 = load i64, i64* @OIDOID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %29, %26, %16
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @GETSTRUCT(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %42, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @palloc(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32**, i32*** %5, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32**, i32*** %5, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ARR_DATA_PTR(i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32* %59, i32 %61, i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ARR_DATA_PTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
