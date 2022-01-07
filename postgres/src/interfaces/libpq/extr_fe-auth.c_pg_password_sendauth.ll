; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_password_sendauth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_password_sendauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }

@STATUS_ERROR = common dso_local global i32 0, align 4
@MD5_PASSWD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @pg_password_sendauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_password_sendauth(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = call i64 @pqGetnchar(i8* %16, i32 4, %struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %106

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %76 [
    i32 129, label %25
    i32 128, label %74
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 2, %27
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @printfPQExpBuffer(i32* %34, i32 %35)
  %37 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %37, i32* %4, align 4
  br label %106

38:                                               ; preds = %25
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @pg_md5_encrypt(i8* %44, i8* %47, i32 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %106

59:                                               ; preds = %38
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @pg_md5_encrypt(i8* %63, i8* %64, i32 4, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %106

72:                                               ; preds = %59
  %73 = load i8*, i8** %9, align 8
  store i8* %73, i8** %10, align 8
  br label %78

74:                                               ; preds = %23
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %10, align 8
  br label %78

76:                                               ; preds = %23
  %77 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %77, i32* %4, align 4
  br label %106

78:                                               ; preds = %74, %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PG_PROTOCOL_MAJOR(i32 %81)
  %83 = icmp sge i32 %82, 3
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = add nsw i32 %88, 1
  %90 = call i32 @pqPacketSend(%struct.TYPE_5__* %85, i8 signext 112, i8* %86, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %98

91:                                               ; preds = %78
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = add nsw i32 %95, 1
  %97 = call i32 @pqPacketSend(%struct.TYPE_5__* %92, i8 signext 0, i8* %93, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %91, %84
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %76, %68, %55, %32, %20
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @pqGetnchar(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pg_md5_encrypt(i8*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pqPacketSend(%struct.TYPE_5__*, i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
