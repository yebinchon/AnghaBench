; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_opclass_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_opclass_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@CLAOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cache lookup failed for opclass %u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @get_opclass_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_opclass_name(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @CLAOID, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ObjectIdGetDatum(i64 %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @GETSTRUCT(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @OidIsValid(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @GetDefaultOpClass(i64 %30, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %29, %22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @NameStr(i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @OpclassIsVisible(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @quote_identifier(i8* %47)
  %49 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %61

50:                                               ; preds = %37
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @get_namespace_name(i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @quote_identifier(i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @quote_identifier(i8* %58)
  %60 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %50, %45
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ReleaseSysCache(i32 %63)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @GetDefaultOpClass(i64, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @OpclassIsVisible(i64) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
