; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getOpFamilyDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getOpFamilyDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@OPFAMILYOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for opfamily %u\00", align 1
@AMOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"operator family %s for access method %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @getOpFamilyDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getOpFamilyDescription(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @OPFAMILYOID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ObjectIdGetDatum(i32 %11)
  %13 = call i32 @SearchSysCache1(i32 %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %6, align 8
  %25 = load i32, i32* @AMOID, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @SearchSysCache1(i32 %25, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @ERROR, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %21
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @GETSTRUCT(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @OpfamilyIsVisible(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i8* null, i8** %9, align 8
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @get_namespace_name(i32 %51)
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @NameStr(i32 %59)
  %61 = call i32 @quote_qualified_identifier(i8* %56, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NameStr(i32 %64)
  %66 = call i32 @appendStringInfo(i32 %54, i32 %55, i32 %61, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ReleaseSysCache(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ReleaseSysCache(i32 %69)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @OpfamilyIsVisible(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @quote_qualified_identifier(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
