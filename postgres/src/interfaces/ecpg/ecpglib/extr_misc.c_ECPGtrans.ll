; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGtrans.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ECPGtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"ECPGtrans on line %d: action \22%s\22; connection \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@PQTRANS_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"commit prepared\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"rollback prepared\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"begin transaction\00", align 1
@ECPG_COMPAT_PGSQL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGtrans(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.connection*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.connection* @ecpg_get_connection(i8* %10)
  store %struct.connection* %11, %struct.connection** %9, align 8
  %12 = load %struct.connection*, %struct.connection** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ecpg_init(%struct.connection* %12, i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.connection*, %struct.connection** %9, align 8
  %22 = icmp ne %struct.connection* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.connection*, %struct.connection** %9, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = call i32 @ecpg_log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i8* %29)
  %31 = load %struct.connection*, %struct.connection** %9, align 8
  %32 = icmp ne %struct.connection* %31, null
  br i1 %32, label %33, label %101

33:                                               ; preds = %28
  %34 = load %struct.connection*, %struct.connection** %9, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %33
  %39 = load %struct.connection*, %struct.connection** %9, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @PQtransactionStatus(i64 %41)
  %43 = load i64, i64* @PQTRANS_IDLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %38
  %46 = load %struct.connection*, %struct.connection** %9, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.connection*, %struct.connection** %9, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @PQexec(i64 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.connection*, %struct.connection** %9, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ECPG_COMPAT_PGSQL, align 4
  %77 = call i32 @ecpg_check_PQresult(i32* %71, i32 %72, i64 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %102

80:                                               ; preds = %66
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @PQclear(i32* %81)
  br label %83

83:                                               ; preds = %80, %62, %58, %54, %50, %45, %38
  %84 = load %struct.connection*, %struct.connection** %9, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32* @PQexec(i64 %86, i8* %87)
  store i32* %88, i32** %8, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.connection*, %struct.connection** %9, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ECPG_COMPAT_PGSQL, align 4
  %95 = call i32 @ecpg_check_PQresult(i32* %89, i32 %90, i64 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %102

98:                                               ; preds = %83
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @PQclear(i32* %99)
  br label %101

101:                                              ; preds = %98, %33, %28
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %97, %79, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.connection* @ecpg_get_connection(i8*) #1

declare dso_local i32 @ecpg_init(%struct.connection*, i8*, i32) #1

declare dso_local i32 @ecpg_log(i8*, i32, i8*, i8*) #1

declare dso_local i64 @PQtransactionStatus(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @PQexec(i64, i8*) #1

declare dso_local i32 @ecpg_check_PQresult(i32*, i32, i64, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
