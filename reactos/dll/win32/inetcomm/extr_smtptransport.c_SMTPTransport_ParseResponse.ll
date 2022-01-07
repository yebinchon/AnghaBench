; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_ParseResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_smtptransport.c_SMTPTransport_ParseResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i8*, i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"response: %s\0A\00", align 1
@IXP_E_SMTP_RESPONSE_ERROR = common dso_local global i8* null, align 8
@IXP_E_SMTP_211_SYSTEM_STATUS = common dso_local global i8* null, align 8
@IXP_E_SMTP_214_HELP_MESSAGE = common dso_local global i8* null, align 8
@IXP_E_SMTP_220_READY = common dso_local global i8* null, align 8
@IXP_E_SMTP_221_CLOSING = common dso_local global i8* null, align 8
@IXP_E_SMTP_245_AUTH_SUCCESS = common dso_local global i8* null, align 8
@IXP_E_SMTP_250_MAIL_ACTION_OKAY = common dso_local global i8* null, align 8
@IXP_E_SMTP_251_FORWARDING_MAIL = common dso_local global i8* null, align 8
@IXP_E_SMTP_334_AUTH_READY_RESPONSE = common dso_local global i8* null, align 8
@IXP_E_SMTP_354_START_MAIL_INPUT = common dso_local global i8* null, align 8
@IXP_E_SMTP_421_NOT_AVAILABLE = common dso_local global i8* null, align 8
@IXP_E_SMTP_450_MAILBOX_BUSY = common dso_local global i8* null, align 8
@IXP_E_SMTP_451_ERROR_PROCESSING = common dso_local global i8* null, align 8
@IXP_E_SMTP_452_NO_SYSTEM_STORAGE = common dso_local global i8* null, align 8
@IXP_E_SMTP_454_STARTTLS_FAILED = common dso_local global i8* null, align 8
@IXP_E_SMTP_500_SYNTAX_ERROR = common dso_local global i8* null, align 8
@IXP_E_SMTP_501_PARAM_SYNTAX = common dso_local global i8* null, align 8
@IXP_E_SMTP_502_COMMAND_NOTIMPL = common dso_local global i8* null, align 8
@IXP_E_SMTP_503_COMMAND_SEQ = common dso_local global i8* null, align 8
@IXP_E_SMTP_504_COMMAND_PARAM_NOTIMPL = common dso_local global i8* null, align 8
@IXP_E_SMTP_530_STARTTLS_REQUIRED = common dso_local global i8* null, align 8
@IXP_E_SMTP_550_MAILBOX_NOT_FOUND = common dso_local global i8* null, align 8
@IXP_E_SMTP_551_USER_NOT_LOCAL = common dso_local global i8* null, align 8
@IXP_E_SMTP_552_STORAGE_OVERFLOW = common dso_local global i8* null, align 8
@IXP_E_SMTP_553_MAILBOX_NAME_SYNTAX = common dso_local global i8* null, align 8
@IXP_E_SMTP_554_TRANSACT_FAILED = common dso_local global i8* null, align 8
@CMD_RESP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i8*, %struct.TYPE_12__*)* @SMTPTransport_ParseResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SMTPTransport_ParseResponse(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @debugstr_a(i8* %9)
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i32 @isdigit(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** @IXP_E_SMTP_RESPONSE_ERROR, align 8
  store i8* %17, i8** %4, align 8
  br label %138

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strtol(i8* %32, i8** %6, i32 10)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 45
  %41 = zext i1 %40 to i32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %98 [
    i32 211, label %48
    i32 214, label %50
    i32 220, label %52
    i32 221, label %54
    i32 245, label %56
    i32 250, label %58
    i32 251, label %60
    i32 334, label %62
    i32 354, label %64
    i32 421, label %66
    i32 450, label %68
    i32 451, label %70
    i32 452, label %72
    i32 454, label %74
    i32 500, label %76
    i32 501, label %78
    i32 502, label %80
    i32 503, label %82
    i32 504, label %84
    i32 530, label %86
    i32 550, label %88
    i32 551, label %90
    i32 552, label %92
    i32 553, label %94
    i32 554, label %96
  ]

48:                                               ; preds = %18
  %49 = load i8*, i8** @IXP_E_SMTP_211_SYSTEM_STATUS, align 8
  store i8* %49, i8** %8, align 8
  br label %100

50:                                               ; preds = %18
  %51 = load i8*, i8** @IXP_E_SMTP_214_HELP_MESSAGE, align 8
  store i8* %51, i8** %8, align 8
  br label %100

52:                                               ; preds = %18
  %53 = load i8*, i8** @IXP_E_SMTP_220_READY, align 8
  store i8* %53, i8** %8, align 8
  br label %100

54:                                               ; preds = %18
  %55 = load i8*, i8** @IXP_E_SMTP_221_CLOSING, align 8
  store i8* %55, i8** %8, align 8
  br label %100

56:                                               ; preds = %18
  %57 = load i8*, i8** @IXP_E_SMTP_245_AUTH_SUCCESS, align 8
  store i8* %57, i8** %8, align 8
  br label %100

58:                                               ; preds = %18
  %59 = load i8*, i8** @IXP_E_SMTP_250_MAIL_ACTION_OKAY, align 8
  store i8* %59, i8** %8, align 8
  br label %100

60:                                               ; preds = %18
  %61 = load i8*, i8** @IXP_E_SMTP_251_FORWARDING_MAIL, align 8
  store i8* %61, i8** %8, align 8
  br label %100

62:                                               ; preds = %18
  %63 = load i8*, i8** @IXP_E_SMTP_334_AUTH_READY_RESPONSE, align 8
  store i8* %63, i8** %8, align 8
  br label %100

64:                                               ; preds = %18
  %65 = load i8*, i8** @IXP_E_SMTP_354_START_MAIL_INPUT, align 8
  store i8* %65, i8** %8, align 8
  br label %100

66:                                               ; preds = %18
  %67 = load i8*, i8** @IXP_E_SMTP_421_NOT_AVAILABLE, align 8
  store i8* %67, i8** %8, align 8
  br label %100

68:                                               ; preds = %18
  %69 = load i8*, i8** @IXP_E_SMTP_450_MAILBOX_BUSY, align 8
  store i8* %69, i8** %8, align 8
  br label %100

70:                                               ; preds = %18
  %71 = load i8*, i8** @IXP_E_SMTP_451_ERROR_PROCESSING, align 8
  store i8* %71, i8** %8, align 8
  br label %100

72:                                               ; preds = %18
  %73 = load i8*, i8** @IXP_E_SMTP_452_NO_SYSTEM_STORAGE, align 8
  store i8* %73, i8** %8, align 8
  br label %100

74:                                               ; preds = %18
  %75 = load i8*, i8** @IXP_E_SMTP_454_STARTTLS_FAILED, align 8
  store i8* %75, i8** %8, align 8
  br label %100

76:                                               ; preds = %18
  %77 = load i8*, i8** @IXP_E_SMTP_500_SYNTAX_ERROR, align 8
  store i8* %77, i8** %8, align 8
  br label %100

78:                                               ; preds = %18
  %79 = load i8*, i8** @IXP_E_SMTP_501_PARAM_SYNTAX, align 8
  store i8* %79, i8** %8, align 8
  br label %100

80:                                               ; preds = %18
  %81 = load i8*, i8** @IXP_E_SMTP_502_COMMAND_NOTIMPL, align 8
  store i8* %81, i8** %8, align 8
  br label %100

82:                                               ; preds = %18
  %83 = load i8*, i8** @IXP_E_SMTP_503_COMMAND_SEQ, align 8
  store i8* %83, i8** %8, align 8
  br label %100

84:                                               ; preds = %18
  %85 = load i8*, i8** @IXP_E_SMTP_504_COMMAND_PARAM_NOTIMPL, align 8
  store i8* %85, i8** %8, align 8
  br label %100

86:                                               ; preds = %18
  %87 = load i8*, i8** @IXP_E_SMTP_530_STARTTLS_REQUIRED, align 8
  store i8* %87, i8** %8, align 8
  br label %100

88:                                               ; preds = %18
  %89 = load i8*, i8** @IXP_E_SMTP_550_MAILBOX_NOT_FOUND, align 8
  store i8* %89, i8** %8, align 8
  br label %100

90:                                               ; preds = %18
  %91 = load i8*, i8** @IXP_E_SMTP_551_USER_NOT_LOCAL, align 8
  store i8* %91, i8** %8, align 8
  br label %100

92:                                               ; preds = %18
  %93 = load i8*, i8** @IXP_E_SMTP_552_STORAGE_OVERFLOW, align 8
  store i8* %93, i8** %8, align 8
  br label %100

94:                                               ; preds = %18
  %95 = load i8*, i8** @IXP_E_SMTP_553_MAILBOX_NAME_SYNTAX, align 8
  store i8* %95, i8** %8, align 8
  br label %100

96:                                               ; preds = %18
  %97 = load i8*, i8** @IXP_E_SMTP_554_TRANSACT_FAILED, align 8
  store i8* %97, i8** %8, align 8
  br label %100

98:                                               ; preds = %18
  %99 = load i8*, i8** @IXP_E_SMTP_RESPONSE_ERROR, align 8
  store i8* %99, i8** %8, align 8
  br label %100

100:                                              ; preds = %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i8* %101, i8** %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i8* %105, i8** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %100
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @CMD_RESP, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = call i32 @ITransportCallback_OnCommand(i64 %124, i32 %125, i8* %129, i8* %130, i32* %134)
  br label %136

136:                                              ; preds = %120, %114, %100
  %137 = load i8*, i8** @S_OK, align 8
  store i8* %137, i8** %4, align 8
  br label %138

138:                                              ; preds = %136, %16
  %139 = load i8*, i8** %4, align 8
  ret i8* %139
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ITransportCallback_OnCommand(i64, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
