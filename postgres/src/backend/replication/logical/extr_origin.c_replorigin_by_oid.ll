; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_by_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_by_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidRepOriginId = common dso_local global i64 0, align 8
@DoNotReplicateId = common dso_local global i64 0, align 8
@REPLORIGIDENT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"replication origin with OID %u does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replorigin_by_oid(i64 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @OidIsValid(i32 %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @InvalidRepOriginId, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @DoNotReplicateId, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* @REPLORIGIDENT, align 4
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = call i32 @SearchSysCache1(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HeapTupleIsValid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @GETSTRUCT(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %9, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i8* @text_to_cstring(i32* %37)
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ReleaseSysCache(i32 %40)
  store i32 1, i32* %4, align 4
  br label %54

42:                                               ; preds = %3
  %43 = load i8**, i8*** %7, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
