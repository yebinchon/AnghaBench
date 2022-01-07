; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_role.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@AUTHNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"role \22%s\22 does not exist\00", align 1
@InitializingParallelWorker = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"permission denied to set role \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_role(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @InvalidOid, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %62

19:                                               ; preds = %3
  %20 = call i32 (...) @IsTransactionState()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %78

23:                                               ; preds = %19
  %24 = load i32, i32* @AUTHNAME, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PointerGetDatum(i8* %26)
  %28 = call i32 @SearchSysCache1(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @HeapTupleIsValid(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 0, i32* %4, align 4
  br label %78

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @GETSTRUCT(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ReleaseSysCache(i32 %46)
  %48 = load i32, i32* @InitializingParallelWorker, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %36
  %51 = call i32 (...) @GetSessionUserId()
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @is_member_of_role(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %57 = call i32 @GUC_check_errcode(i32 %56)
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 0, i32* %4, align 4
  br label %78

61:                                               ; preds = %50, %36
  br label %62

62:                                               ; preds = %61, %17
  %63 = call i64 @malloc(i32 8)
  %64 = inttoptr i64 %63 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %11, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %76 = bitcast %struct.TYPE_3__* %75 to i8*
  %77 = load i8**, i8*** %6, align 8
  store i8* %76, i8** %77, align 8
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %68, %67, %55, %32, %22
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GUC_check_errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetSessionUserId(...) #1

declare dso_local i32 @GUC_check_errcode(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
