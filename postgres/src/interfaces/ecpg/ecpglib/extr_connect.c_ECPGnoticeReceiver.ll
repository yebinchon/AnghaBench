; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGnoticeReceiver.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGnoticeReceiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { i32, i8*, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i64*, i32 }

@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ECPG_SQLSTATE_ECPG_INTERNAL_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"empty message text\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ECPGnoticeReceiver: %s\0A\00", align 1
@ECPG_SQLSTATE_INVALID_CURSOR_NAME = common dso_local global i32 0, align 4
@ECPG_WARNING_UNKNOWN_PORTAL = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@ECPG_WARNING_IN_TRANSACTION = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_NO_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@ECPG_WARNING_NO_TRANSACTION = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_DUPLICATE_CURSOR = common dso_local global i32 0, align 4
@ECPG_WARNING_PORTAL_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"raising sqlcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ECPGnoticeReceiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECPGnoticeReceiver(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sqlca_t*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %11 = call i8* @PQresultErrorField(i32* %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %14 = call i8* @PQresultErrorField(i32* %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %15, %struct.sqlca_t** %7, align 8
  %16 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %17 = icmp eq %struct.sqlca_t* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %108

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** @ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %108

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @ECPG_SQLSTATE_INVALID_CURSOR_NAME, align 4
  %41 = call i64 @strcmp(i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ECPG_WARNING_UNKNOWN_PORTAL, align 4
  store i32 %44, i32* %8, align 4
  br label %70

45:                                               ; preds = %36
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @ECPG_SQLSTATE_ACTIVE_SQL_TRANSACTION, align 4
  %48 = call i64 @strcmp(i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @ECPG_WARNING_IN_TRANSACTION, align 4
  store i32 %51, i32* %8, align 4
  br label %69

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @ECPG_SQLSTATE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %55 = call i64 @strcmp(i8* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @ECPG_WARNING_NO_TRANSACTION, align 4
  store i32 %58, i32* %8, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @ECPG_SQLSTATE_DUPLICATE_CURSOR, align 4
  %62 = call i64 @strcmp(i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @ECPG_WARNING_PORTAL_EXISTS, align 4
  store i32 %65, i32* %8, align 4
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %64
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %43
  %71 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %72 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @strncpy(i64* %73, i8* %74, i32 8)
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %78 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %80 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8 87, i8* %82, align 1
  %83 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %84 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 87, i8* %86, align 1
  %87 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %88 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strncpy(i64* %90, i8* %91, i32 8)
  %93 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %94 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %99 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = call i32 @strlen(i64* %101)
  %103 = load %struct.sqlca_t*, %struct.sqlca_t** %7, align 8
  %104 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %70, %35, %18
  ret void
}

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_log(i8*, ...) #1

declare dso_local i8* @ecpg_gettext(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
