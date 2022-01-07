; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_pg_be_scram_exchange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_pg_be_scram_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SASL_EXCHANGE_CONTINUE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"malformed SCRAM message\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"The message is empty.\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Message length does not match input length.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid SCRAM response\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Nonce does not match.\00", align 1
@SASL_EXCHANGE_FAILURE = common dso_local global i32 0, align 4
@SASL_EXCHANGE_SUCCESS = common dso_local global i32 0, align 4
@SCRAM_AUTH_FINISHED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid SCRAM exchange state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_be_scram_exchange(i8* %0, i8* %1, i32 %2, i8** %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %14, align 8
  %18 = load i8**, i8*** %11, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 129
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = call i8* @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %29 = load i8**, i8*** %11, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** %12, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @SASL_EXCHANGE_CONTINUE, align 4
  store i32 %31, i32* %7, align 4
  br label %133

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @errdetail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @errdetail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %101 [
    i32 129, label %58
    i32 128, label %68
  ]

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @read_client_first_message(%struct.TYPE_8__* %59, i8* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = call i8* @build_server_first_message(%struct.TYPE_8__* %62)
  %64 = load i8**, i8*** %11, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 128, i32* %66, align 8
  %67 = load i32, i32* @SASL_EXCHANGE_CONTINUE, align 4
  store i32 %67, i32* %15, align 4
  br label %105

68:                                               ; preds = %54
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @read_client_final_message(%struct.TYPE_8__* %69, i8* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = call i32 @verify_final_nonce(%struct.TYPE_8__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 @errdetail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = call i32 @verify_client_proof(%struct.TYPE_8__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %82
  %92 = load i32, i32* @SASL_EXCHANGE_FAILURE, align 4
  store i32 %92, i32* %15, align 4
  br label %105

93:                                               ; preds = %86
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = call i8* @build_server_final_message(%struct.TYPE_8__* %94)
  %96 = load i8**, i8*** %11, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @SASL_EXCHANGE_SUCCESS, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @SCRAM_AUTH_FINISHED, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %105

101:                                              ; preds = %54
  %102 = load i32, i32* @ERROR, align 4
  %103 = call i32 @elog(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* @SASL_EXCHANGE_FAILURE, align 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %101, %93, %91, %58
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @SASL_EXCHANGE_FAILURE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i8**, i8*** %13, align 8
  %116 = icmp ne i8** %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %13, align 8
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %117, %114, %109, %105
  %123 = load i8**, i8*** %11, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i8**, i8*** %11, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = load i32*, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %21
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read_client_first_message(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @build_server_first_message(%struct.TYPE_8__*) #1

declare dso_local i32 @read_client_final_message(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @verify_final_nonce(%struct.TYPE_8__*) #1

declare dso_local i32 @verify_client_proof(%struct.TYPE_8__*) #1

declare dso_local i8* @build_server_final_message(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
