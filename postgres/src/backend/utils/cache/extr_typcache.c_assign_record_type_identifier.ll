; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_assign_record_type_identifier.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_assign_record_type_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@RECORDOID = common dso_local global i64 0, align 8
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1
@RecordCacheArrayLen = common dso_local global i64 0, align 8
@RecordCacheArray = common dso_local global i32** null, align 8
@RecordIdentifierArray = common dso_local global i64* null, align 8
@tupledesc_id_counter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @assign_record_type_identifier(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @RECORDOID, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %13 = call %struct.TYPE_3__* @lookup_type_cache(i64 %11, i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @format_type_be(i64 %22)
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %64

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = icmp uge i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @RecordCacheArrayLen, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32**, i32*** @RecordCacheArray, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64*, i64** @RecordIdentifierArray, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load i64*, i64** @RecordIdentifierArray, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %3, align 8
  br label %64

61:                                               ; preds = %43, %39, %36
  %62 = load i64, i64* @tupledesc_id_counter, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @tupledesc_id_counter, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %61, %49, %26
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
