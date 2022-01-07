; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_acldefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_acldefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@ACL_NO_RIGHTS = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_RELATION = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_SEQUENCE = common dso_local global i64 0, align 8
@ACL_CREATE_TEMP = common dso_local global i64 0, align 8
@ACL_CONNECT = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_DATABASE = common dso_local global i64 0, align 8
@ACL_EXECUTE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FUNCTION = common dso_local global i64 0, align 8
@ACL_USAGE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_LANGUAGE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_LARGEOBJECT = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_SCHEMA = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_TABLESPACE = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FDW = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_FOREIGN_SERVER = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_TYPE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@ACL_ID_PUBLIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @acldefault(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %49 [
    i32 140, label %11
    i32 130, label %14
    i32 131, label %17
    i32 139, label %20
    i32 135, label %25
    i32 134, label %28
    i32 133, label %31
    i32 132, label %34
    i32 129, label %37
    i32 137, label %40
    i32 136, label %43
    i32 138, label %46
    i32 128, label %46
  ]

11:                                               ; preds = %2
  %12 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %13, i64* %6, align 8
  br label %55

14:                                               ; preds = %2
  %15 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @ACL_ALL_RIGHTS_RELATION, align 8
  store i64 %16, i64* %6, align 8
  br label %55

17:                                               ; preds = %2
  %18 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @ACL_ALL_RIGHTS_SEQUENCE, align 8
  store i64 %19, i64* %6, align 8
  br label %55

20:                                               ; preds = %2
  %21 = load i64, i64* @ACL_CREATE_TEMP, align 8
  %22 = load i64, i64* @ACL_CONNECT, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* @ACL_ALL_RIGHTS_DATABASE, align 8
  store i64 %24, i64* %6, align 8
  br label %55

25:                                               ; preds = %2
  %26 = load i64, i64* @ACL_EXECUTE, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @ACL_ALL_RIGHTS_FUNCTION, align 8
  store i64 %27, i64* %6, align 8
  br label %55

28:                                               ; preds = %2
  %29 = load i64, i64* @ACL_USAGE, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* @ACL_ALL_RIGHTS_LANGUAGE, align 8
  store i64 %30, i64* %6, align 8
  br label %55

31:                                               ; preds = %2
  %32 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* @ACL_ALL_RIGHTS_LARGEOBJECT, align 8
  store i64 %33, i64* %6, align 8
  br label %55

34:                                               ; preds = %2
  %35 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @ACL_ALL_RIGHTS_SCHEMA, align 8
  store i64 %36, i64* %6, align 8
  br label %55

37:                                               ; preds = %2
  %38 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* @ACL_ALL_RIGHTS_TABLESPACE, align 8
  store i64 %39, i64* %6, align 8
  br label %55

40:                                               ; preds = %2
  %41 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* @ACL_ALL_RIGHTS_FDW, align 8
  store i64 %42, i64* %6, align 8
  br label %55

43:                                               ; preds = %2
  %44 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* @ACL_ALL_RIGHTS_FOREIGN_SERVER, align 8
  store i64 %45, i64* %6, align 8
  br label %55

46:                                               ; preds = %2, %2
  %47 = load i64, i64* @ACL_USAGE, align 8
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* @ACL_ALL_RIGHTS_TYPE, align 8
  store i64 %48, i64* %6, align 8
  br label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @elog(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* @ACL_NO_RIGHTS, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %20, %17, %14, %11
  store i32 0, i32* %7, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %7, align 4
  %71 = call i32* @allocacl(i32 %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call %struct.TYPE_4__* @ACL_DAT(i32* %72)
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %9, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load i8*, i8** @ACL_ID_PUBLIC, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %87 = bitcast %struct.TYPE_4__* %84 to { i8*, i8* }*
  %88 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %87, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @ACLITEM_SET_PRIVS_GOPTIONS(i8* %89, i8* %91, i64 %85, i64 %86)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 1
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %9, align 8
  br label %95

95:                                               ; preds = %77, %69
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %109 = bitcast %struct.TYPE_4__* %106 to { i8*, i8* }*
  %110 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %109, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @ACLITEM_SET_PRIVS_GOPTIONS(i8* %111, i8* %113, i64 %107, i64 %108)
  br label %115

115:                                              ; preds = %99, %95
  %116 = load i32*, i32** %8, align 8
  ret i32* %116
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @allocacl(i32) #1

declare dso_local %struct.TYPE_4__* @ACL_DAT(i32*) #1

declare dso_local i32 @ACLITEM_SET_PRIVS_GOPTIONS(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
