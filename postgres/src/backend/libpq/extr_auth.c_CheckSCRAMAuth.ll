; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckSCRAMAuth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckSCRAMAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }

@FrontendProtocol = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SASL authentication is not supported in protocol version 2\00", align 1
@AUTH_REQ_SASL = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"expected SASL response, got message type %d\00", align 1
@STATUS_EOF = common dso_local global i32 0, align 4
@PG_MAX_SASL_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@DEBUG4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"processing received SASL response of length %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"sending SASL challenge of length %u\00", align 1
@SASL_EXCHANGE_SUCCESS = common dso_local global i32 0, align 4
@AUTH_REQ_SASL_FIN = common dso_local global i32 0, align 4
@AUTH_REQ_SASL_CONT = common dso_local global i32 0, align 4
@SASL_EXCHANGE_CONTINUE = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @CheckSCRAMAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSCRAMAuth(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @FrontendProtocol, align 4
  %20 = call i32 @PG_PROTOCOL_MAJOR(i32 %19)
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @FATAL, align 4
  %24 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = call i32 @initStringInfo(%struct.TYPE_10__* %8)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @pg_be_scram_get_mechanisms(i32* %30, %struct.TYPE_10__* %8)
  %32 = call i32 @appendStringInfoChar(%struct.TYPE_10__* %8, i8 signext 0)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @AUTH_REQ_SASL, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sendAuthRequest(i32* %33, i32 %34, i8* %36, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @pfree(i8* %41)
  store i32 1, i32* %17, align 4
  br label %43

43:                                               ; preds = %148, %28
  %44 = call i32 (...) @pq_startmsgread()
  %45 = call i32 (...) @pq_getbyte()
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 112
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @STATUS_EOF, align 4
  store i32 %60, i32* %4, align 4
  br label %160

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %43
  %63 = call i32 @initStringInfo(%struct.TYPE_10__* %10)
  %64 = load i32, i32* @PG_MAX_SASL_MESSAGE_LENGTH, align 4
  %65 = call i64 @pq_getmessage(%struct.TYPE_10__* %10, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @pfree(i8* %69)
  %71 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %160

72:                                               ; preds = %62
  %73 = load i32, i32* @DEBUG4, align 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = call i8* @pq_getmsgrawstring(%struct.TYPE_10__* %10)
  store i8* %80, i8** %18, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** %18, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @pg_be_scram_init(i32* %81, i8* %82, i8* %83)
  store i8* %84, i8** %11, align 8
  %85 = call i32 @pq_getmsgint(%struct.TYPE_10__* %10, i32 4)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i8* null, i8** %14, align 8
  br label %92

89:                                               ; preds = %79
  %90 = load i32, i32* %15, align 4
  %91 = call i8* @pq_getmsgbytes(%struct.TYPE_10__* %10, i32 %90)
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %89, %88
  store i32 0, i32* %17, align 4
  br label %99

93:                                               ; preds = %72
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %15, align 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @pq_getmsgbytes(%struct.TYPE_10__* %10, i32 %97)
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %93, %92
  %100 = call i32 @pq_getmsgend(%struct.TYPE_10__* %10)
  %101 = load i8*, i8** %14, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br label %111

111:                                              ; preds = %103, %99
  %112 = phi i1 [ true, %99 ], [ %110, %103 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8**, i8*** %7, align 8
  %119 = call i32 @pg_be_scram_exchange(i8* %115, i8* %116, i32 %117, i8** %12, i32* %13, i8** %118)
  store i32 %119, i32* %16, align 4
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @pfree(i8* %121)
  %123 = load i8*, i8** %12, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %147

125:                                              ; preds = %111
  %126 = load i32, i32* @DEBUG4, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @elog(i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @SASL_EXCHANGE_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @AUTH_REQ_SASL_FIN, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @sendAuthRequest(i32* %133, i32 %134, i8* %135, i32 %136)
  br label %144

138:                                              ; preds = %125
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @AUTH_REQ_SASL_CONT, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @sendAuthRequest(i32* %139, i32 %140, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @pfree(i8* %145)
  br label %147

147:                                              ; preds = %144, %111
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @SASL_EXCHANGE_CONTINUE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %43, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* @SASL_EXCHANGE_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %157, i32* %4, align 4
  br label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @STATUS_OK, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %156, %67, %59
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @pg_be_scram_get_mechanisms(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32 @sendAuthRequest(i32*, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @pq_getbyte(...) #1

declare dso_local i64 @pq_getmessage(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @pq_getmsgrawstring(%struct.TYPE_10__*) #1

declare dso_local i8* @pg_be_scram_init(i32*, i8*, i8*) #1

declare dso_local i32 @pq_getmsgint(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @pq_getmsgbytes(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pq_getmsgend(%struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pg_be_scram_exchange(i8*, i8*, i32, i8**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
