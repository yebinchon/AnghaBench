; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_class_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_class_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"relation with OID %u does not exist\00", align 1
@ACL_INSERT = common dso_local global i32 0, align 4
@ACL_UPDATE = common dso_local global i32 0, align 4
@ACL_DELETE = common dso_local global i32 0, align 4
@ACL_TRUNCATE = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@Anum_pg_class_relacl = common dso_local global i32 0, align 4
@OBJECT_SEQUENCE = common dso_local global i32 0, align 4
@OBJECT_TABLE = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_class_aclmask(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @RELOID, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @SearchSysCache1(i32 %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @HeapTupleIsValid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_UNDEFINED_TABLE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @ereport(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @GETSTRUCT(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ACL_INSERT, align 4
  %37 = load i32, i32* @ACL_UPDATE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ACL_DELETE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ACL_TRUNCATE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ACL_USAGE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %35, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = call i64 @IsSystemClass(i32 %48, %struct.TYPE_3__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RELKIND_VIEW, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @superuser_arg(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @allowSystemTableMods, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @ACL_INSERT, align 4
  %67 = load i32, i32* @ACL_UPDATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ACL_DELETE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ACL_TRUNCATE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ACL_USAGE, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %65, %62, %58, %52, %47, %31
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @superuser_arg(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ReleaseSysCache(i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %5, align 4
  br label %134

86:                                               ; preds = %78
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* @RELOID, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @Anum_pg_class_relacl, align 4
  %93 = call i64 @SysCacheGetAttr(i32 %90, i32 %91, i32 %92, i32* %14)
  store i64 %93, i64* %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %86
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %104 [
    i32 128, label %100
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* @OBJECT_SEQUENCE, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32* @acldefault(i32 %101, i32 %102)
  store i32* %103, i32** %15, align 8
  br label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @OBJECT_TABLE, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32* @acldefault(i32 %105, i32 %106)
  store i32* %107, i32** %15, align 8
  br label %108

108:                                              ; preds = %104, %100
  store i64 0, i64* %13, align 8
  br label %112

109:                                              ; preds = %86
  %110 = load i64, i64* %13, align 8
  %111 = call i32* @DatumGetAclP(i64 %110)
  store i32* %111, i32** %15, align 8
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @aclmask(i32* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %112
  %122 = load i32*, i32** %15, align 8
  %123 = ptrtoint i32* %122 to i64
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @DatumGetPointer(i64 %124)
  %126 = icmp ne i64 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @pfree(i32* %128)
  br label %130

130:                                              ; preds = %127, %121, %112
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @ReleaseSysCache(i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %82
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @IsSystemClass(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i64) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i64) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
