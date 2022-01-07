; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_alt.c_GENERAL_NAME_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_alt.c_GENERAL_NAME_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@V_ASN1_UTF8STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"othername:<unsupported>\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"othername:SmtpUTF8Mailbox:%s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"othername:XmppAddr:%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"othername:SRVName:%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"othername:UPN:%s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"X400Name:<unsupported>\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"EdiPartyName:<unsupported>\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"email:\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DNS:\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"URI:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"DirName:\00", align 1
@XN_FLAG_ONELINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"IP Address:%d.%d.%d.%d\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"IP Address\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c":%X\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"IP Address:<invalid>\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Registered ID:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GENERAL_NAME_print(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %234 [
    i32 135, label %11
    i32 132, label %111
    i32 138, label %114
    i32 137, label %117
    i32 139, label %126
    i32 133, label %135
    i32 140, label %144
    i32 136, label %154
    i32 134, label %225
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @OBJ_obj2nid(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V_ASN1_IA5STRING, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %46, label %32

32:                                               ; preds = %21, %11
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V_ASN1_UTF8STRING, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35, %21
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %234

49:                                               ; preds = %35, %32
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %107 [
    i32 129, label %51
    i32 130, label %65
    i32 131, label %79
    i32 128, label %93
  ]

51:                                               ; preds = %49
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %110

65:                                               ; preds = %49
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %110

79:                                               ; preds = %49
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %110

93:                                               ; preds = %49
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  br label %110

107:                                              ; preds = %49
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %93, %79, %65, %51
  br label %234

111:                                              ; preds = %2
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %234

114:                                              ; preds = %2
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %234

117:                                              ; preds = %2
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ASN1_STRING_print(i32* %120, i32 %124)
  br label %234

126:                                              ; preds = %2
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ASN1_STRING_print(i32* %129, i32 %133)
  br label %234

135:                                              ; preds = %2
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %138 = load i32*, i32** %3, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ASN1_STRING_print(i32* %138, i32 %142)
  br label %234

144:                                              ; preds = %2
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @XN_FLAG_ONELINE, align 4
  %153 = call i32 @X509_NAME_print_ex(i32* %147, i32 %151, i32 0, i32 %152)
  br label %234

154:                                              ; preds = %2
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %5, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 4
  br i1 %167, label %168, label %187

168:                                              ; preds = %154
  %169 = load i32*, i32** %3, align 8
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %173, i32 %177, i32 %181, i32 %185)
  br label %224

187:                                              ; preds = %154
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 16
  br i1 %194, label %195, label %220

195:                                              ; preds = %187
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %216, %195
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 8
  br i1 %200, label %201, label %219

201:                                              ; preds = %198
  %202 = load i32*, i32** %3, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 8
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %207, %211
  %213 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %212)
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  store i8* %215, i8** %5, align 8
  br label %216

216:                                              ; preds = %201
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %198

219:                                              ; preds = %198
  br label %223

220:                                              ; preds = %187
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %234

223:                                              ; preds = %219
  br label %224

224:                                              ; preds = %223, %168
  br label %234

225:                                              ; preds = %2
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %228 = load i32*, i32** %3, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @i2a_ASN1_OBJECT(i32* %228, i32 %232)
  br label %234

234:                                              ; preds = %2, %225, %224, %220, %144, %135, %126, %117, %114, %111, %110, %46
  ret i32 1
}

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @ASN1_STRING_print(i32*, i32) #1

declare dso_local i32 @X509_NAME_print_ex(i32*, i32, i32, i32) #1

declare dso_local i32 @i2a_ASN1_OBJECT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
