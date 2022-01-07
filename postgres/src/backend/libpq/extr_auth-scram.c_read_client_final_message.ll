; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_client_final_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_client_final_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i8*, i8*, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"channel binding not supported by this build\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"biws\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"eSws\00", align 1
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"unexpected SCRAM channel-binding attribute in client-final-message\00", align 1
@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"malformed SCRAM message\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Malformed proof in client-final-message.\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Garbage found at the end of client-final-message.\00", align 1
@ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @read_client_final_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_client_final_message(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @pstrdup(i8* %13)
  store i8* %14, i8** %10, align 8
  store i8* %14, i8** %8, align 8
  %15 = call i8* @read_attr_value(i8** %10, i8 signext 99)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %50

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 110
  br i1 %32, label %49, label %33

33:                                               ; preds = %27, %23
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 121
  br i1 %42, label %49, label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %37, %27
  br label %50

50:                                               ; preds = %49, %20
  %51 = call i8* @read_attr_value(i8** %10, i8 signext 114)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %58, %50
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8* %56, i8** %9, align 8
  %57 = call i8* @read_any_attr(i8** %10, i8* %5)
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 112
  br i1 %61, label %54, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = call i32 @pg_b64_dec_len(i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @palloc(i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @pg_b64_decode(i8* %68, i64 %70, i8* %71, i32 %72)
  %74 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %62
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %89 = call i32 @memcpy(i8* %86, i8* %87, i32 %88)
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @pfree(i8* %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %83
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %99 = call i32 @errcode(i32 %98)
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %101 = call i32 @errdetail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %102 = call i32 @ereport(i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %96, %83
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = add nsw i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i8* @palloc(i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8* %116, i8* %117, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  store i8 0, i8* %133, align 1
  ret void
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @read_attr_value(i8**, i8 signext) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @read_any_attr(i8**, i8*) #1

declare dso_local i32 @pg_b64_dec_len(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @pg_b64_decode(i8*, i64, i8*, i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
