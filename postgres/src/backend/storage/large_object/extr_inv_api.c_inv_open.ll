; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64, i32 }

@INV_WRITE = common dso_local global i32 0, align 4
@IFS_WRLOCK = common dso_local global i32 0, align 4
@IFS_RDLOCK = common dso_local global i32 0, align 4
@INV_READ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid flags for opening a large object: %d\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"large object %u does not exist\00", align 1
@lo_compat_privileges = common dso_local global i32 0, align 4
@ACL_SELECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"permission denied for large object %u\00", align 1
@ACL_UPDATE = common dso_local global i32 0, align 4
@TopTransactionResourceOwner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @inv_open(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @INV_WRITE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @IFS_WRLOCK, align 4
  %16 = load i32, i32* @IFS_RDLOCK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @INV_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @IFS_RDLOCK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IFS_WRLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32* null, i32** %8, align 8
  br label %47

45:                                               ; preds = %39
  %46 = call i32* (...) @GetActiveSnapshot()
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @myLargeObjectExists(i32 %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @IFS_RDLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load i32, i32* @lo_compat_privileges, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (...) @GetUserId()
  %70 = load i32, i32* @ACL_SELECT, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @pg_largeobject_aclcheck_snapshot(i32 %68, i32 %69, i32 %70, i32* %71)
  %73 = load i64, i64* @ACLCHECK_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = call i32 @ereport(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %67, %64
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IFS_WRLOCK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load i32, i32* @lo_compat_privileges, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (...) @GetUserId()
  %94 = load i32, i32* @ACL_UPDATE, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i64 @pg_largeobject_aclcheck_snapshot(i32 %92, i32 %93, i32 %94, i32* %95)
  %97 = load i64, i64* @ACLCHECK_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %102 = call i32 @errcode(i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = call i32 @ereport(i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %99, %91, %88
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @MemoryContextAlloc(i32 %108, i32 32)
  %110 = inttoptr i64 %109 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %7, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = call i32 (...) @GetCurrentSubTransactionId()
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @TopTransactionResourceOwner, align 4
  %127 = call i32* @RegisterSnapshotOnOwner(i32* %125, i32 %126)
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %124, %107
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %132
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32* @GetActiveSnapshot(...) #1

declare dso_local i32 @myLargeObjectExists(i32, i32*) #1

declare dso_local i64 @pg_largeobject_aclcheck_snapshot(i32, i32, i32, i32*) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i32* @RegisterSnapshotOnOwner(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
