; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_InitializeSessionUserId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_InitializeSessionUserId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i64, i32, i64, i32 }

@AuthenticatedUserId = common dso_local global i8* null, align 8
@AUTHNAME = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"role \22%s\22 does not exist\00", align 1
@AUTHOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"role with OID %u does not exist\00", align 1
@AuthenticatedUserIsSuperuser = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_4__* null, align 8
@IsUnderPostmaster = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"role \22%s\22 is not permitted to log in\00", align 1
@ERRCODE_TOO_MANY_CONNECTIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"too many connections for role \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"session_authorization\00", align 1
@PGC_BACKEND = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"is_superuser\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@PGC_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeSessionUserId(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @IsBootstrapProcessingMode()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AssertState(i32 %11)
  %13 = load i8*, i8** @AuthenticatedUserId, align 8
  %14 = call i32 @OidIsValid(i8* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AssertState(i32 %17)
  %19 = call i32 (...) @AcceptInvalidationMessages()
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32, i32* @AUTHNAME, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @PointerGetDatum(i8* %24)
  %26 = call i32 @SearchSysCache1(i32 %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @HeapTupleIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @FATAL, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %22
  br label %54

38:                                               ; preds = %2
  %39 = load i32, i32* @AUTHOID, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @ObjectIdGetDatum(i8* %40)
  %42 = call i32 @SearchSysCache1(i32 %39, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @HeapTupleIsValid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @FATAL, align 4
  %48 = load i32, i32* @ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @GETSTRUCT(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %6, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %4, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @NameStr(i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** @AuthenticatedUserId, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @AuthenticatedUserIsSuperuser, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* @AuthenticatedUserIsSuperuser, align 8
  %71 = call i32 @SetSessionUserId(i8* %69, i64 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @IsUnderPostmaster, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %54
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @FATAL, align 4
  %84 = load i32, i32* @ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  %88 = call i32 @ereport(i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load i64, i64* @AuthenticatedUserIsSuperuser, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @CountUserBackends(i8* %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32, i32* @FATAL, align 4
  %106 = load i32, i32* @ERRCODE_TOO_MANY_CONNECTIONS, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = call i32 @ereport(i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %104, %97, %94, %89
  br label %112

112:                                              ; preds = %111, %54
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @PGC_BACKEND, align 4
  %115 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %116 = call i32 @SetConfigOption(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %113, i32 %114, i32 %115)
  %117 = load i64, i64* @AuthenticatedUserIsSuperuser, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %121 = load i32, i32* @PGC_INTERNAL, align 4
  %122 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %123 = call i32 @SetConfigOption(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @ReleaseSysCache(i32 %124)
  ret void
}

declare dso_local i32 @AssertState(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local i32 @AcceptInvalidationMessages(...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @SetSessionUserId(i8*, i64) #1

declare dso_local i64 @CountUserBackends(i8*) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
