; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_protocol.c_on_mime_message_available.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_protocol.c_on_mime_message_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"location %s not found\0A\00", align 1
@VT_LPWSTR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"content-location\00", align 1
@MIME_E_NOT_FOUND = common dso_local global i64 0, align 8
@IID_IMimeBody = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@BINDSTATUS_MIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@IET_DECODED = common dso_local global i32 0, align 4
@BSCF_FIRSTDATANOTIFICATION = common dso_local global i32 0, align 4
@BSCF_INTERMEDIATEDATANOTIFICATION = common dso_local global i32 0, align 4
@BSCF_LASTDATANOTIFICATION = common dso_local global i32 0, align 4
@BSCF_DATAFULLYAVAILABLE = common dso_local global i32 0, align 4
@BSCF_AVAILABLEDATASIZEUNKNOWN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*)* @on_mime_message_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @on_mime_message_available(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @IMimeMessage_FindFirst(i32* %13, %struct.TYPE_15__* %6, i32* %9)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @report_result(%struct.TYPE_14__* %19, i64 %20)
  store i64 %21, i64* %3, align 8
  br label %155

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %74, %27
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @IMimeMessage_FindNext(i32* %30, %struct.TYPE_15__* %6, i32* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @FAILED(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @debugstr_w(i64 %38)
  %40 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @report_result(%struct.TYPE_14__* %41, i64 %42)
  store i64 %43, i64* %3, align 8
  br label %155

44:                                               ; preds = %29
  %45 = load i8*, i8** @VT_LPWSTR, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @IMimeMessage_GetBodyProp(i32* %47, i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_13__* %8)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %74

54:                                               ; preds = %44
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @FAILED(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @report_result(%struct.TYPE_14__* %59, i64 %60)
  store i64 %61, i64* %3, align 8
  br label %155

62:                                               ; preds = %54
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @lstrcmpW(i64 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = call i32 @PropVariantClear(%struct.TYPE_13__* %8)
  br label %74

74:                                               ; preds = %62, %53
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %29, label %78

78:                                               ; preds = %74
  br label %95

79:                                               ; preds = %22
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @IMimeMessage_FindNext(i32* %80, %struct.TYPE_15__* %6, i32* %9)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @FAILED(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @debugstr_w(i64 %88)
  %90 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @report_result(%struct.TYPE_14__* %91, i64 %92)
  store i64 %93, i64* %3, align 8
  br label %155

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = bitcast i32** %7 to i8**
  %99 = call i64 @IMimeMessage_BindToObject(i32* %96, i32 %97, i32* @IID_IMimeBody, i8** %98)
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @FAILED(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @report_result(%struct.TYPE_14__* %104, i64 %105)
  store i64 %106, i64* %3, align 8
  br label %155

107:                                              ; preds = %95
  %108 = load i8*, i8** @VT_LPWSTR, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i64 @IMimeBody_GetProp(i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.TYPE_13__* %8)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @SUCCEEDED(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BINDSTATUS_MIMETYPEAVAILABLE, align 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @IInternetProtocolSink_ReportProgress(i32 %118, i32 %119, i32 %122)
  store i64 %123, i64* %10, align 8
  %124 = call i32 @PropVariantClear(%struct.TYPE_13__* %8)
  br label %125

125:                                              ; preds = %115, %107
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* @IET_DECODED, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = call i64 @IMimeBody_GetData(i32* %126, i32 %127, i32* %129)
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @FAILED(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i64 @report_result(%struct.TYPE_14__* %135, i64 %136)
  store i64 %137, i64* %3, align 8
  br label %155

138:                                              ; preds = %125
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BSCF_FIRSTDATANOTIFICATION, align 4
  %143 = load i32, i32* @BSCF_INTERMEDIATEDATANOTIFICATION, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @BSCF_LASTDATANOTIFICATION, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @BSCF_DATAFULLYAVAILABLE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @BSCF_AVAILABLEDATASIZEUNKNOWN, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @IInternetProtocolSink_ReportData(i32 %141, i32 %150, i32 0, i32 0)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = load i64, i64* @S_OK, align 8
  %154 = call i64 @report_result(%struct.TYPE_14__* %152, i64 %153)
  store i64 %154, i64* %3, align 8
  br label %155

155:                                              ; preds = %138, %134, %103, %85, %58, %35, %18
  %156 = load i64, i64* %3, align 8
  ret i64 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IMimeMessage_FindFirst(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @report_result(%struct.TYPE_14__*, i64) #2

declare dso_local i64 @IMimeMessage_FindNext(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @debugstr_w(i64) #2

declare dso_local i64 @IMimeMessage_GetBodyProp(i32*, i32, i8*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @lstrcmpW(i64, i32) #2

declare dso_local i32 @PropVariantClear(%struct.TYPE_13__*) #2

declare dso_local i64 @IMimeMessage_BindToObject(i32*, i32, i32*, i8**) #2

declare dso_local i64 @IMimeBody_GetProp(i32*, i8*, i32, %struct.TYPE_13__*) #2

declare dso_local i64 @SUCCEEDED(i64) #2

declare dso_local i64 @IInternetProtocolSink_ReportProgress(i32, i32, i32) #2

declare dso_local i64 @IMimeBody_GetData(i32*, i32, i32*) #2

declare dso_local i32 @IInternetProtocolSink_ReportData(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
