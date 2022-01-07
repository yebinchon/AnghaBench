; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@TypeRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@OBJECT_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"\22%s\22 is not a domain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32*, i32)* @get_object_address_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_address_type(%struct.TYPE_4__* noalias sret %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %9 = load i32, i32* @TypeRelationId, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @InvalidOid, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @LookupTypeName(i32* null, i32* %14, i32* null, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @TypeNameToString(i32* %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @ereport(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %23, %20
  br label %59

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @typeTypeId(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @OBJECT_DOMAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @GETSTRUCT(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @TypeNameToString(i32* %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = call i32 @ereport(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ReleaseSysCache(i32 %57)
  br label %59

59:                                               ; preds = %56, %31
  ret void
}

declare dso_local i32 @LookupTypeName(i32*, i32*, i32*, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i32 @typeTypeId(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
