; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGsetcommit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGsetcommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"ECPGsetcommit on line %d: action \22%s\22; connection \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@PQTRANS_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"begin transaction\00", align 1
@ECPG_COMPAT_PGSQL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGsetcommit(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.connection* @ecpg_get_connection(i8* %10)
  store %struct.connection* %11, %struct.connection** %8, align 8
  %12 = load %struct.connection*, %struct.connection** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ecpg_init(%struct.connection* %12, i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.connection*, %struct.connection** %8, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ecpg_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i32 %23)
  %25 = load %struct.connection*, %struct.connection** %8, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.connection*, %struct.connection** %8, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @PQtransactionStatus(i32 %37)
  %39 = load i64, i64* @PQTRANS_IDLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.connection*, %struct.connection** %8, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @PQexec(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.connection*, %struct.connection** %8, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ECPG_COMPAT_PGSQL, align 4
  %52 = call i32 @ecpg_check_PQresult(i32* %46, i32 %47, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %100

55:                                               ; preds = %41
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @PQclear(i32* %56)
  br label %58

58:                                               ; preds = %55, %34
  %59 = load %struct.connection*, %struct.connection** %8, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %99

61:                                               ; preds = %29, %18
  %62 = load %struct.connection*, %struct.connection** %8, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %98, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load %struct.connection*, %struct.connection** %8, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @PQtransactionStatus(i32 %74)
  %76 = load i64, i64* @PQTRANS_IDLE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.connection*, %struct.connection** %8, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @PQexec(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.connection*, %struct.connection** %8, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ECPG_COMPAT_PGSQL, align 4
  %89 = call i32 @ecpg_check_PQresult(i32* %83, i32 %84, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %100

92:                                               ; preds = %78
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @PQclear(i32* %93)
  br label %95

95:                                               ; preds = %92, %71
  %96 = load %struct.connection*, %struct.connection** %8, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %66, %61
  br label %99

99:                                               ; preds = %98, %58
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %91, %54, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.connection* @ecpg_get_connection(i8*) #1

declare dso_local i32 @ecpg_init(%struct.connection*, i8*, i32) #1

declare dso_local i32 @ecpg_log(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @PQtransactionStatus(i32) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @ecpg_check_PQresult(i32*, i32, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
