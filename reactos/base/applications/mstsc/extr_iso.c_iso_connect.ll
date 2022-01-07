; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i8* null, align 8
@g_negotiate_rdp_protocol = common dso_local global i8* null, align 8
@PROTOCOL_SSL = common dso_local global i32 0, align 4
@PROTOCOL_RDP = common dso_local global i32 0, align 4
@False = common dso_local global i8* null, align 8
@ISO_PDU_CC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"expected CC, got 0x%x\0A\00", align 1
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@RDP_NEG_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"SSL with user authentication required by server\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SSL not allowed by server\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no valid authentication certificate on server\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"inconsistent negotiation flags\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SSL required by server\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CredSSP required by server\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"Failed to negotiate protocol, retrying with plain RDP.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failed to connect, %s.\0A\00", align 1
@RDP_NEG_RSP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Expected RDP_NEG_RSP, got type = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"SSL not compiled in.\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Connection established using plain RDP.\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Unexpected protocol in negotiation response, got data = 0x%x.\0A\00", align 1
@PROTOCOL_HYBRID = common dso_local global i32 0, align 4
@g_encryption = common dso_local global i8* null, align 8
@g_sc_card_name = common dso_local global i64 0, align 8
@g_sc_container_name = common dso_local global i64 0, align 8
@g_sc_csp_name = common dso_local global i64 0, align 8
@g_sc_reader_name = common dso_local global i64 0, align 8
@g_use_password_as_pin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iso_connect(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i8*, i8** @True, align 8
  store i8* %23, i8** @g_negotiate_rdp_protocol, align 8
  %24 = load i32, i32* @PROTOCOL_SSL, align 4
  store i32 %24, i32* %16, align 4
  br label %25

25:                                               ; preds = %92, %6
  %26 = load i32, i32* @PROTOCOL_RDP, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  store i64 0, i64* %15, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @tcp_connect(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** @False, align 8
  store i8* %32, i8** %7, align 8
  br label %148

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @iso_send_connection_request(i8* %34, i32 %35)
  %37 = call i32* @iso_recv_msg(i64* %15, i32* null)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** @False, align 8
  store i8* %41, i8** %7, align 8
  br label %148

42:                                               ; preds = %33
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @ISO_PDU_CC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %15, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 (...) @tcp_disconnect()
  %51 = load i8*, i8** @False, align 8
  store i8* %51, i8** %7, align 8
  br label %148

52:                                               ; preds = %42
  %53 = load i64, i64* @g_rdp_version, align 8
  %54 = load i64, i64* @RDP_V5, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %146

56:                                               ; preds = %52
  %57 = load i32*, i32** %14, align 8
  %58 = call i64 @s_check_rem(i32* %57, i32 8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %146

60:                                               ; preds = %56
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @in_uint8(i32* %61, i64 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i64, i64* %19, align 8
  %66 = call i32 @in_uint8(i32* %64, i64 %65)
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %20, align 8
  %69 = call i32 @in_uint16(i32* %67, i64 %68)
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @in_uint32(i32* %70, i32 %71)
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* @RDP_NEG_FAILURE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %60
  %77 = load i8*, i8** @False, align 8
  store i8* %77, i8** %22, align 8
  %78 = load i32, i32* %21, align 4
  switch i32 %78, label %87 [
    i32 128, label %79
    i32 130, label %80
    i32 131, label %82
    i32 132, label %84
    i32 129, label %85
    i32 133, label %86
  ]

79:                                               ; preds = %76
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %88

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %81 = load i8*, i8** @True, align 8
  store i8* %81, i8** %22, align 8
  br label %88

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %83 = load i8*, i8** @True, align 8
  store i8* %83, i8** %22, align 8
  br label %88

84:                                               ; preds = %76
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %88

85:                                               ; preds = %76
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  br label %88

86:                                               ; preds = %76
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %88

87:                                               ; preds = %76
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %88

88:                                               ; preds = %87, %86, %85, %84, %82, %80, %79
  %89 = call i32 (...) @tcp_disconnect()
  %90 = load i8*, i8** %22, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i8*, i8** @False, align 8
  store i8* %95, i8** @g_negotiate_rdp_protocol, align 8
  br label %25

96:                                               ; preds = %88
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  %100 = load i8*, i8** @False, align 8
  store i8* %100, i8** %7, align 8
  br label %148

101:                                              ; preds = %60
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @RDP_NEG_RSP, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = call i32 (...) @tcp_disconnect()
  %107 = load i64, i64* %18, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** @False, align 8
  store i8* %110, i8** %7, align 8
  br label %148

111:                                              ; preds = %101
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* @PROTOCOL_SSL, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %136

118:                                              ; preds = %111
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @PROTOCOL_RDP, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %135

125:                                              ; preds = %118
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @PROTOCOL_RDP, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = call i32 (...) @tcp_disconnect()
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** @False, align 8
  store i8* %133, i8** %7, align 8
  br label %148

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %115
  %137 = load i64, i64* %20, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %19, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* %21, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %56, %52
  %147 = load i8*, i8** @True, align 8
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %146, %129, %105, %96, %46, %40, %31
  %149 = load i8*, i8** %7, align 8
  ret i8* %149
}

declare dso_local i32 @tcp_connect(i8*) #1

declare dso_local i32 @iso_send_connection_request(i8*, i32) #1

declare dso_local i32* @iso_recv_msg(i64*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @tcp_disconnect(...) #1

declare dso_local i64 @s_check_rem(i32*, i32) #1

declare dso_local i32 @in_uint8(i32*, i64) #1

declare dso_local i32 @in_uint16(i32*, i64) #1

declare dso_local i32 @in_uint32(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
