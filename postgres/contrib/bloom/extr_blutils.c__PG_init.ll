; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blutils.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@bl_relopt_kind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Length of signature in bits\00", align 1
@DEFAULT_BLOOM_LENGTH = common dso_local global i32 0, align 4
@MAX_BLOOM_LENGTH = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@bl_relopt_tab = common dso_local global %struct.TYPE_2__* null, align 8
@RELOPT_TYPE_INT = common dso_local global i8* null, align 8
@BloomOptions = common dso_local global i32 0, align 4
@bloomLength = common dso_local global i32 0, align 4
@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"col%d\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Number of bits generated for each index column\00", align 1
@DEFAULT_BLOOM_BITS = common dso_local global i32 0, align 4
@MAX_BLOOM_BITS = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@bitSize = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = call i32 (...) @add_reloption_kind()
  store i32 %3, i32* @bl_relopt_kind, align 4
  %4 = load i32, i32* @bl_relopt_kind, align 4
  %5 = load i32, i32* @DEFAULT_BLOOM_LENGTH, align 4
  %6 = load i32, i32* @MAX_BLOOM_LENGTH, align 4
  %7 = load i32, i32* @AccessExclusiveLock, align 4
  %8 = call i32 @add_int_reloption(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %5, i32 1, i32 %6, i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** @RELOPT_TYPE_INT, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @BloomOptions, align 4
  %17 = load i32, i32* @bloomLength, align 4
  %18 = call i8* @offsetof(i32 %16, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %68, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @snprintf(i8* %27, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @bl_relopt_kind, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %33 = load i32, i32* @DEFAULT_BLOOM_BITS, align 4
  %34 = load i32, i32* @MAX_BLOOM_BITS, align 4
  %35 = load i32, i32* @AccessExclusiveLock, align 4
  %36 = call i32 @add_int_reloption(i32 %31, i8* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 1, i32 %34, i32 %35)
  %37 = load i32, i32* @TopMemoryContext, align 4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %39 = call i8* @MemoryContextStrdup(i32 %37, i8* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  %46 = load i8*, i8** @RELOPT_TYPE_INT, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i8* %46, i8** %52, align 8
  %53 = load i32, i32* @BloomOptions, align 4
  %54 = load i32*, i32** @bitSize, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @offsetof(i32 %53, i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = getelementptr i8, i8* %57, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bl_relopt_tab, align 8
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i8* %61, i8** %67, align 8
  br label %68

68:                                               ; preds = %26
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %22

71:                                               ; preds = %22
  ret void
}

declare dso_local i32 @add_reloption_kind(...) #1

declare dso_local i32 @add_int_reloption(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @offsetof(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @MemoryContextStrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
