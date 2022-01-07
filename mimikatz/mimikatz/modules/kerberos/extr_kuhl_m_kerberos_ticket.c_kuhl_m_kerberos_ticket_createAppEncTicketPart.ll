; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createAppEncTicketPart.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createAppEncTicketPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@LBER_USE_DER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"t{{t{\00", align 1
@ID_APP_ENCTICKETPART = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"}t{\00", align 1
@ID_CTX_ENCTICKETPART_KEY = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_CREALM = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_CNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"}t{{t{i}t{o}}}t{\00", align 1
@ID_CTX_ENCTICKETPART_TRANSITED = common dso_local global i32 0, align 4
@ID_CTX_TRANSITEDENCODING_TR_TYPE = common dso_local global i32 0, align 4
@ID_CTX_TRANSITEDENCODING_CONTENTS = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_AUTHTIME = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_STARTTIME = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_ENDTIME = common dso_local global i32 0, align 4
@ID_CTX_ENCTICKETPART_RENEW_TILL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"t{{{t{i}t{\00", align 1
@ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA = common dso_local global i32 0, align 4
@ID_CTX_AUTHORIZATIONDATA_AD_TYPE = common dso_local global i32 0, align 4
@ID_AUTHDATA_AD_IF_RELEVANT = common dso_local global i32 0, align 4
@ID_CTX_AUTHORIZATIONDATA_AD_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"{{t{i}t{o}}}\00", align 1
@ID_AUTHDATA_AD_WIN2K_PAC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"}}}}\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"}}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @kuhl_m_kerberos_ticket_createAppEncTicketPart(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %11 = load i32, i32* @LBER_USE_DER, align 4
  %12 = call i32* @ber_alloc_t(i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %159

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @ID_APP_ENCTICKETPART, align 4
  %17 = call i32 @MAKE_APP_TAG(i32 %16)
  %18 = load i32, i32* @ID_CTX_ENCTICKETPART_FLAGS, align 4
  %19 = call i32 @MAKE_CTX_TAG(i32 %18)
  %20 = call i32 (i32*, i8*, ...) @ber_printf(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kull_m_asn1_BitStringFromULONG(i32* %21, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ID_CTX_ENCTICKETPART_KEY, align 4
  %28 = call i32 @MAKE_CTX_TAG(i32 %27)
  %29 = call i32 (i32*, i8*, ...) @ber_printf(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kuhl_m_kerberos_ticket_createSequenceEncryptionKey(i32* %30, i32 %33, i32 %37, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @ID_CTX_ENCTICKETPART_CREALM, align 4
  %45 = call i32 @MAKE_CTX_TAG(i32 %44)
  %46 = call i32 (i32*, i8*, ...) @ber_printf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = call i32 @kull_m_asn1_GenString(i32* %47, i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @ID_CTX_ENCTICKETPART_CNAME, align 4
  %53 = call i32 @MAKE_CTX_TAG(i32 %52)
  %54 = call i32 (i32*, i8*, ...) @ber_printf(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32* %55, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @ID_CTX_ENCTICKETPART_TRANSITED, align 4
  %62 = call i32 @MAKE_CTX_TAG(i32 %61)
  %63 = load i32, i32* @ID_CTX_TRANSITEDENCODING_TR_TYPE, align 4
  %64 = call i32 @MAKE_CTX_TAG(i32 %63)
  %65 = load i32, i32* @ID_CTX_TRANSITEDENCODING_CONTENTS, align 4
  %66 = call i32 @MAKE_CTX_TAG(i32 %65)
  %67 = load i32, i32* @ID_CTX_ENCTICKETPART_AUTHTIME, align 4
  %68 = call i32 @MAKE_CTX_TAG(i32 %67)
  %69 = call i32 (i32*, i8*, ...) @ber_printf(i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64, i32 0, i32 %66, i8* null, i32 0, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = call i32 @kull_m_asn1_GenTime(i32* %70, i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @ID_CTX_ENCTICKETPART_STARTTIME, align 4
  %76 = call i32 @MAKE_CTX_TAG(i32 %75)
  %77 = call i32 (i32*, i8*, ...) @ber_printf(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = call i32 @kull_m_asn1_GenTime(i32* %78, i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @ID_CTX_ENCTICKETPART_ENDTIME, align 4
  %84 = call i32 @MAKE_CTX_TAG(i32 %83)
  %85 = call i32 (i32*, i8*, ...) @ber_printf(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = call i32 @kull_m_asn1_GenTime(i32* %86, i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @ID_CTX_ENCTICKETPART_RENEW_TILL, align 4
  %92 = call i32 @MAKE_CTX_TAG(i32 %91)
  %93 = call i32 (i32*, i8*, ...) @ber_printf(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = call i32 @kull_m_asn1_GenTime(i32* %94, i32* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 (i32*, i8*, ...) @ber_printf(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i64, i64* %5, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %146

102:                                              ; preds = %14
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %146

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @ID_CTX_ENCTICKETPART_AUTHORIZATION_DATA, align 4
  %108 = call i32 @MAKE_CTX_TAG(i32 %107)
  %109 = load i32, i32* @ID_CTX_AUTHORIZATIONDATA_AD_TYPE, align 4
  %110 = call i32 @MAKE_CTX_TAG(i32 %109)
  %111 = load i32, i32* @ID_AUTHDATA_AD_IF_RELEVANT, align 4
  %112 = load i32, i32* @ID_CTX_AUTHORIZATIONDATA_AD_DATA, align 4
  %113 = call i32 @MAKE_CTX_TAG(i32 %112)
  %114 = call i32 (i32*, i8*, ...) @ber_printf(i32* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %110, i32 %111, i32 %113)
  %115 = load i32, i32* @LBER_USE_DER, align 4
  %116 = call i32* @ber_alloc_t(i32 %115)
  store i32* %116, i32** %8, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %143

118:                                              ; preds = %105
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @ID_CTX_AUTHORIZATIONDATA_AD_TYPE, align 4
  %121 = call i32 @MAKE_CTX_TAG(i32 %120)
  %122 = load i32, i32* @ID_AUTHDATA_AD_WIN2K_PAC, align 4
  %123 = load i32, i32* @ID_CTX_AUTHORIZATIONDATA_AD_DATA, align 4
  %124 = call i32 @MAKE_CTX_TAG(i32 %123)
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32*, i8*, ...) @ber_printf(i32* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122, i32 %124, i64 %125, i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = call i64 @ber_flatten(i32* %128, %struct.TYPE_10__** %10)
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %118
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32*, i8*, ...) @ber_printf(i32* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %118
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @ber_free(i32* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %105
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 (i32*, i8*, ...) @ber_printf(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %102, %14
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 (i32*, i8*, ...) @ber_printf(i32* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %149 = load i32*, i32** %7, align 8
  %150 = call i64 @ber_flatten(i32* %149, %struct.TYPE_10__** %9)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %152 = icmp ne %struct.TYPE_10__* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %155 = call i32 @ber_bvfree(%struct.TYPE_10__* %154)
  br label %156

156:                                              ; preds = %153, %146
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @ber_free(i32* %157, i32 1)
  br label %159

159:                                              ; preds = %156, %3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %160
}

declare dso_local i32* @ber_alloc_t(i32) #1

declare dso_local i32 @ber_printf(i32*, i8*, ...) #1

declare dso_local i32 @MAKE_APP_TAG(i32) #1

declare dso_local i32 @MAKE_CTX_TAG(i32) #1

declare dso_local i32 @kull_m_asn1_BitStringFromULONG(i32*, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_createSequenceEncryptionKey(i32*, i32, i32, i32) #1

declare dso_local i32 @kull_m_asn1_GenString(i32*, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32*, i32) #1

declare dso_local i32 @kull_m_asn1_GenTime(i32*, i32*) #1

declare dso_local i64 @ber_flatten(i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @ber_free(i32*, i32) #1

declare dso_local i32 @ber_bvfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
