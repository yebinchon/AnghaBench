; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_report_error.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_report_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_DETAIL = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_HINT = common dso_local global i32 0, align 4
@PG_DIAG_CONTEXT = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"could not obtain message string for remote error\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"remote SQL command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgfdw_report_error(i32 %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = call i32 (...) @PG_TRY()
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %20 = call i8* @PQresultErrorField(i32* %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %23 = call i8* @PQresultErrorField(i32* %21, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @PG_DIAG_MESSAGE_DETAIL, align 4
  %26 = call i8* @PQresultErrorField(i32* %24, i32 %25)
  store i8* %26, i8** %13, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @PG_DIAG_MESSAGE_HINT, align 4
  %29 = call i8* @PQresultErrorField(i32* %27, i32 %28)
  store i8* %29, i8** %14, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @PG_DIAG_CONTEXT, align 4
  %32 = call i8* @PQresultErrorField(i32* %30, i32 %31)
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %5
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @MAKE_SQLSTATE(i8 signext %38, i8 signext %41, i8 signext %44, i8 signext %47, i8 signext %50)
  store i32 %51, i32* %16, align 4
  br label %54

52:                                               ; preds = %5
  %53 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @PQerrorMessage(i32* %58)
  %60 = call i8* @pchomp(i32 %59)
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %72

70:                                               ; preds = %61
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %69, %67 ], [ %71, %70 ]
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %80

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  %82 = load i8*, i8** %14, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %85)
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @errcontext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i32 [ %94, %92 ], [ 0, %95 ]
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @errcontext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 0, %103 ]
  %106 = call i32 @ereport(i32 %62, i32 %105)
  %107 = call i32 (...) @PG_FINALLY()
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @PQclear(i32* %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = call i32 (...) @PG_END_TRY()
  ret void
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i32 @MAKE_SQLSTATE(i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i8*) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_internal(i8*, i8*) #1

declare dso_local i32 @errhint(i8*, i8*) #1

declare dso_local i32 @errcontext(i8*, i8*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
