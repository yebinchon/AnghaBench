; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_PQencryptPasswordConn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_PQencryptPasswordConn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"show password_encryption\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"unexpected shape of result set returned for SHOW\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"password_encryption value too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"scram-sha-256\00", align 1
@MD5_PASSWD_LEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"unrecognized password encryption algorithm \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@MAX_ALGORITHM_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PQencryptPasswordConn(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [51 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %125

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = call i32* @PQexec(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %125

26:                                               ; preds = %20
  %27 = load i32*, i32** %12, align 8
  %28 = call i64 @PQresultStatus(i32* %27)
  %29 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @PQclear(i32* %32)
  store i8* null, i8** %5, align 8
  br label %125

34:                                               ; preds = %26
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @PQntuples(i32* %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @PQnfields(i32* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @PQclear(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @libpq_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %46, i32 %47)
  store i8* null, i8** %5, align 8
  br label %125

49:                                               ; preds = %38
  %50 = load i32*, i32** %12, align 8
  %51 = call i8* @PQgetvalue(i32* %50, i32 0, i32 0)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = icmp sgt i32 %53, 50
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @PQclear(i32* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @libpq_gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %59, i32 %60)
  store i8* null, i8** %5, align 8
  br label %125

62:                                               ; preds = %49
  %63 = getelementptr inbounds [51 x i8], [51 x i8]* %10, i64 0, i64 0
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @PQclear(i32* %66)
  %68 = getelementptr inbounds [51 x i8], [51 x i8]* %10, i64 0, i64 0
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %62, %17
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %78

78:                                               ; preds = %77, %73
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @pg_fe_scram_build_secret(i8* %83)
  store i8* %84, i8** %11, align 8
  br label %115

85:                                               ; preds = %78
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i64, i64* @MD5_PASSWD_LEN, align 8
  %91 = add nsw i64 %90, 1
  %92 = call i8* @malloc(i64 %91)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @pg_md5_encrypt(i8* %96, i8* %97, i32 %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @free(i8* %104)
  store i8* null, i8** %11, align 8
  br label %106

106:                                              ; preds = %103, %95
  br label %107

107:                                              ; preds = %106, %89
  br label %114

108:                                              ; preds = %85
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %110, i32 %111, i8* %112)
  store i8* null, i8** %5, align 8
  br label %125

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %82
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i8*, i8** %11, align 8
  store i8* %124, i8** %5, align 8
  br label %125

125:                                              ; preds = %123, %108, %55, %42, %31, %25, %16
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i32* @PQexec(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @pg_fe_scram_build_secret(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pg_md5_encrypt(i8*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
