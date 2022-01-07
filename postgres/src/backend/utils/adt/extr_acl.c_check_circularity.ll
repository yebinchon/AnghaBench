; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_check_circularity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_check_circularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@ACL_ID_PUBLIC = common dso_local global i64 0, align 8
@ACL_NO_RIGHTS = common dso_local global i64 0, align 8
@ACL_MODECHG_DEL = common dso_local global i32 0, align 4
@DROP_CASCADE = common dso_local global i32 0, align 4
@ACLMASK_ALL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_GRANT_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"grant options cannot be granted back to your own grantor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @check_circularity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_circularity(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @check_acl(i32* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %125

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ACL_NUM(i32* %29)
  %31 = call i32* @allocacl(i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ACL_SIZE(i32* %34)
  %36 = call i32 @memcpy(i32* %32, i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %70, %28
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ACL_NUM(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call %struct.TYPE_6__* @ACL_DAT(i32* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %84, %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = bitcast %struct.TYPE_6__* %61 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ACLITEM_GET_GOPTIONS(i64 %64, i32 %66)
  %68 = load i64, i64* @ACL_NO_RIGHTS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %57
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = load i32, i32* @ACL_MODECHG_DEL, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @DROP_CASCADE, align 4
  %79 = call i32* @aclupdate(i32* %71, %struct.TYPE_6__* %75, i32 %76, i32 %77, i32 %78)
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @pfree(i32* %80)
  %82 = load i32*, i32** %12, align 8
  store i32* %82, i32** %7, align 8
  br label %37

83:                                               ; preds = %57, %46
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %42

87:                                               ; preds = %42
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = bitcast %struct.TYPE_6__* %93 to { i64, i32 }*
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %94, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @ACLITEM_GET_GOPTIONS(i64 %96, i32 %98)
  %100 = call i32 @ACL_GRANT_OPTION_FOR(i64 %99)
  %101 = load i32, i32* @ACLMASK_ALL, align 4
  %102 = call i64 @aclmask(i32* %88, i32 %91, i32 %92, i32 %100, i32 %101)
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @ACL_OPTION_TO_PRIVS(i64 %103)
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = bitcast %struct.TYPE_6__* %105 to { i64, i32 }*
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %106, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @ACLITEM_GET_GOPTIONS(i64 %108, i32 %110)
  %112 = load i64, i64* %11, align 8
  %113 = xor i64 %112, -1
  %114 = and i64 %111, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %87
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* @ERRCODE_INVALID_GRANT_OPERATION, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %121 = call i32 @ereport(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %87
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @pfree(i32* %123)
  br label %125

125:                                              ; preds = %122, %27
  ret void
}

declare dso_local i32 @check_acl(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @allocacl(i32) #1

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ACL_SIZE(i32*) #1

declare dso_local %struct.TYPE_6__* @ACL_DAT(i32*) #1

declare dso_local i64 @ACLITEM_GET_GOPTIONS(i64, i32) #1

declare dso_local i32* @aclupdate(i32*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i64 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ACL_GRANT_OPTION_FOR(i64) #1

declare dso_local i64 @ACL_OPTION_TO_PRIVS(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
