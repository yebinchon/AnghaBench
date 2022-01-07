; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_rowtype_tupdesc_domain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_rowtype_tupdesc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32 }

@RECORDOID = common dso_local global i64 0, align 8
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lookup_rowtype_tupdesc_domain(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @RECORDOID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %16 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_3__* @lookup_type_cache(i64 %14, i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @lookup_rowtype_tupdesc_noerror(i32 %27, i32 %30, i32 %31)
  store i32* %32, i32** %4, align 8
  br label %66

33:                                               ; preds = %13
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @format_type_be(i64 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @ereport(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %38, %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %8, align 8
  br label %58

53:                                               ; preds = %3
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32* @lookup_rowtype_tupdesc_internal(i64 %54, i32 %55, i32 %56)
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @PinTupleDesc(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %8, align 8
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %64, %24
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i64, i32) #1

declare dso_local i32* @lookup_rowtype_tupdesc_noerror(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32* @lookup_rowtype_tupdesc_internal(i64, i32, i32) #1

declare dso_local i32 @PinTupleDesc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
