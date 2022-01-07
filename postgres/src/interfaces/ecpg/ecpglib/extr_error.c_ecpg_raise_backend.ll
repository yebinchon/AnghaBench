; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_raise_backend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_raise_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_INTERNAL_ERROR = common dso_local global i8* null, align 8
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"57P02\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"the connection to the server was lost\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s on line %d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"23505\00", align 1
@ECPG_INFORMIX_DUPLICATE_KEY = common dso_local global i32 0, align 4
@ECPG_DUPLICATE_KEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"21000\00", align 1
@ECPG_INFORMIX_SUBSELECT_NOT_ONE = common dso_local global i32 0, align 4
@ECPG_SUBSELECT_NOT_ONE = common dso_local global i32 0, align 4
@ECPG_PGSQL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"raising sqlstate %.*s (sqlcode %ld): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecpg_raise_backend(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sqlca_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %12, %struct.sqlca_t** %9, align 8
  %13 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %14 = icmp eq %struct.sqlca_t* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @ECPGfree_auto_mem()
  br label %124

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %24 = call i8* @PQresultErrorField(i32* %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** @ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, align 8
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %32 = call i8* @PQresultErrorField(i32* %30, i32 %31)
  store i8* %32, i8** %11, align 8
  br label %37

33:                                               ; preds = %18
  %34 = load i8*, i8** @ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i8* @PQerrorMessage(i32* %35)
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** @ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @PQstatus(i32* %43)
  %45 = load i64, i64* @CONNECTION_BAD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %48 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %47, %42
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %52 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56)
  %58 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %59 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %64 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %67 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strncpy(i32 %68, i8* %69, i32 4)
  %71 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %72 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strncmp(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %50
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @INFORMIX_MODE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ECPG_INFORMIX_DUPLICATE_KEY, align 4
  br label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ECPG_DUPLICATE_KEY, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %87 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %111

88:                                               ; preds = %50
  %89 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %90 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @strncmp(i32 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @INFORMIX_MODE(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @ECPG_INFORMIX_SUBSELECT_NOT_ONE, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @ECPG_SUBSELECT_NOT_ONE, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %105 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %88
  %107 = load i32, i32* @ECPG_PGSQL, align 4
  %108 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %109 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %84
  %112 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %113 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %116 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %119 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 4, i32 %114, i32 %117, i32 %121)
  %123 = call i32 (...) @ECPGfree_auto_mem()
  br label %124

124:                                              ; preds = %111, %15
  ret void
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_log(i8*, ...) #1

declare dso_local i32 @ECPGfree_auto_mem(...) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i8* @ecpg_gettext(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @INFORMIX_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
