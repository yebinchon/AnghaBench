; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createAppKrbCred.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_createAppKrbCred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@LBER_USE_DER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"t{{t{i}t{i}t{\00", align 1
@ID_APP_KRB_CRED = common dso_local global i32 0, align 4
@ID_CTX_KRB_CRED_PVNO = common dso_local global i32 0, align 4
@KERBEROS_VERSION = common dso_local global i32 0, align 4
@ID_CTX_KRB_CRED_MSG_TYPE = common dso_local global i32 0, align 4
@ID_CTX_KRB_CRED_TICKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"{t{{t{i}t{\00", align 1
@ID_APP_TICKET = common dso_local global i32 0, align 4
@ID_CTX_TICKET_TKT_VNO = common dso_local global i32 0, align 4
@ID_CTX_TICKET_REALM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"}t{\00", align 1
@ID_CTX_TICKET_SNAME = common dso_local global i32 0, align 4
@ID_CTX_TICKET_ENC_PART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"}}}}\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@DIRTY_ASN1_ID_SEQUENCE = common dso_local global i32 0, align 4
@ID_CTX_KRB_CRED_ENC_PART = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"t{{t{{{t{\00", align 1
@ID_APP_ENCKRBCREDPART = common dso_local global i32 0, align 4
@ID_CTX_ENCKRBCREDPART_TICKET_INFO = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_KEY = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_PREALM = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_PNAME = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_FLAGS = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_STARTTIME = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_ENDTIME = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_RENEW_TILL = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_SREAL = common dso_local global i32 0, align 4
@ID_CTX_KRBCREDINFO_SNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"}}}}}}\00", align 1
@KERB_ETYPE_NULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"}}}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @kuhl_m_kerberos_ticket_createAppKrbCred(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %9 = load i32, i32* @LBER_USE_DER, align 4
  %10 = call i32* @ber_alloc_t(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %212

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @ID_APP_KRB_CRED, align 4
  %15 = call i32 @MAKE_APP_TAG(i32 %14)
  %16 = load i32, i32* @ID_CTX_KRB_CRED_PVNO, align 4
  %17 = call i32 @MAKE_CTX_TAG(i32 %16)
  %18 = load i32, i32* @KERBEROS_VERSION, align 4
  %19 = load i32, i32* @ID_CTX_KRB_CRED_MSG_TYPE, align 4
  %20 = call i32 @MAKE_CTX_TAG(i32 %19)
  %21 = load i32, i32* @ID_APP_KRB_CRED, align 4
  %22 = load i32, i32* @ID_CTX_KRB_CRED_TICKETS, align 4
  %23 = call i32 @MAKE_CTX_TAG(i32 %22)
  %24 = call i32 (i32*, i8*, ...) @ber_printf(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %18, i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %12
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ID_APP_TICKET, align 4
  %30 = call i32 @MAKE_APP_TAG(i32 %29)
  %31 = load i32, i32* @ID_CTX_TICKET_TKT_VNO, align 4
  %32 = call i32 @MAKE_CTX_TAG(i32 %31)
  %33 = load i32, i32* @KERBEROS_VERSION, align 4
  %34 = load i32, i32* @ID_CTX_TICKET_REALM, align 4
  %35 = call i32 @MAKE_CTX_TAG(i32 %34)
  %36 = call i32 (i32*, i8*, ...) @ber_printf(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32, i32 %33, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = call i32 @kull_m_asn1_GenString(i32* %37, i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @ID_CTX_TICKET_SNAME, align 4
  %43 = call i32 @MAKE_CTX_TAG(i32 %42)
  %44 = call i32 (i32*, i8*, ...) @ber_printf(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32* %45, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @ID_CTX_TICKET_ENC_PART, align 4
  %52 = call i32 @MAKE_CTX_TAG(i32 %51)
  %53 = call i32 (i32*, i8*, ...) @ber_printf(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kuhl_m_kerberos_ticket_createSequenceEncryptedData(i32* %54, i32 %57, i32 %60, i32 %64, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 (i32*, i8*, ...) @ber_printf(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %84

72:                                               ; preds = %12
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @DIRTY_ASN1_ID_SEQUENCE, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i8*, ...) @ber_printf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %72, %27
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @ID_CTX_KRB_CRED_ENC_PART, align 4
  %87 = call i32 @MAKE_CTX_TAG(i32 %86)
  %88 = call i32 (i32*, i8*, ...) @ber_printf(i32* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @LBER_USE_DER, align 4
  %90 = call i32* @ber_alloc_t(i32 %89)
  store i32* %90, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %199

92:                                               ; preds = %84
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @ID_APP_ENCKRBCREDPART, align 4
  %95 = call i32 @MAKE_APP_TAG(i32 %94)
  %96 = load i32, i32* @ID_CTX_ENCKRBCREDPART_TICKET_INFO, align 4
  %97 = call i32 @MAKE_CTX_TAG(i32 %96)
  %98 = load i32, i32* @ID_CTX_KRBCREDINFO_KEY, align 4
  %99 = call i32 @MAKE_CTX_TAG(i32 %98)
  %100 = call i32 (i32*, i8*, ...) @ber_printf(i32* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 %97, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @kuhl_m_kerberos_ticket_createSequenceEncryptionKey(i32* %101, i32 %104, i32 %108, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @ID_CTX_KRBCREDINFO_PREALM, align 4
  %116 = call i32 @MAKE_CTX_TAG(i32 %115)
  %117 = call i32 (i32*, i8*, ...) @ber_printf(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 7
  %121 = call i32 @kull_m_asn1_GenString(i32* %118, i32* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @ID_CTX_KRBCREDINFO_PNAME, align 4
  %124 = call i32 @MAKE_CTX_TAG(i32 %123)
  %125 = call i32 (i32*, i8*, ...) @ber_printf(i32* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32* %126, i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* @ID_CTX_KRBCREDINFO_FLAGS, align 4
  %133 = call i32 @MAKE_CTX_TAG(i32 %132)
  %134 = call i32 (i32*, i8*, ...) @ber_printf(i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @kull_m_asn1_BitStringFromULONG(i32* %135, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @ID_CTX_KRBCREDINFO_STARTTIME, align 4
  %142 = call i32 @MAKE_CTX_TAG(i32 %141)
  %143 = call i32 (i32*, i8*, ...) @ber_printf(i32* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = call i32 @kull_m_asn1_GenTime(i32* %144, i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* @ID_CTX_KRBCREDINFO_ENDTIME, align 4
  %150 = call i32 @MAKE_CTX_TAG(i32 %149)
  %151 = call i32 (i32*, i8*, ...) @ber_printf(i32* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = call i32 @kull_m_asn1_GenTime(i32* %152, i32* %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* @ID_CTX_KRBCREDINFO_RENEW_TILL, align 4
  %158 = call i32 @MAKE_CTX_TAG(i32 %157)
  %159 = call i32 (i32*, i8*, ...) @ber_printf(i32* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = call i32 @kull_m_asn1_GenTime(i32* %160, i32* %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @ID_CTX_KRBCREDINFO_SREAL, align 4
  %166 = call i32 @MAKE_CTX_TAG(i32 %165)
  %167 = call i32 (i32*, i8*, ...) @ber_printf(i32* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = call i32 @kull_m_asn1_GenString(i32* %168, i32* %170)
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @ID_CTX_KRBCREDINFO_SNAME, align 4
  %174 = call i32 @MAKE_CTX_TAG(i32 %173)
  %175 = call i32 (i32*, i8*, ...) @ber_printf(i32* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32* %176, i32 %179)
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 (i32*, i8*, ...) @ber_printf(i32* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32*, i32** %6, align 8
  %184 = call i64 @ber_flatten(i32* %183, %struct.TYPE_12__** %8)
  %185 = icmp sge i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %92
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @KERB_ETYPE_NULL, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @kuhl_m_kerberos_ticket_createSequenceEncryptedData(i32* %187, i32 %188, i32 0, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %186, %92
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @ber_free(i32* %197, i32 1)
  br label %199

199:                                              ; preds = %196, %84
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 (i32*, i8*, ...) @ber_printf(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i32*, i32** %5, align 8
  %203 = call i64 @ber_flatten(i32* %202, %struct.TYPE_12__** %7)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = icmp ne %struct.TYPE_12__* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %208 = call i32 @ber_bvfree(%struct.TYPE_12__* %207)
  br label %209

209:                                              ; preds = %206, %199
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 @ber_free(i32* %210, i32 1)
  br label %212

212:                                              ; preds = %209, %2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %213
}

declare dso_local i32* @ber_alloc_t(i32) #1

declare dso_local i32 @ber_printf(i32*, i8*, ...) #1

declare dso_local i32 @MAKE_APP_TAG(i32) #1

declare dso_local i32 @MAKE_CTX_TAG(i32) #1

declare dso_local i32 @kull_m_asn1_GenString(i32*, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_createSequencePrimaryName(i32*, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_createSequenceEncryptedData(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_createSequenceEncryptionKey(i32*, i32, i32, i32) #1

declare dso_local i32 @kull_m_asn1_BitStringFromULONG(i32*, i32) #1

declare dso_local i32 @kull_m_asn1_GenTime(i32*, i32*) #1

declare dso_local i64 @ber_flatten(i32*, %struct.TYPE_12__**) #1

declare dso_local i32 @ber_free(i32*, i32) #1

declare dso_local i32 @ber_bvfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
