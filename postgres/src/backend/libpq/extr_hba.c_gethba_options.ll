; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_gethba_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_gethba_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64 }

@MAX_HBA_OPTIONS = common dso_local global i32 0, align 4
@uaGSS = common dso_local global i64 0, align 8
@uaSSPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"include_realm=true\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"krb_realm=%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"map=%s\00", align 1
@clientCertOff = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"clientcert=%s\00", align 1
@clientCertCA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"verify-ca\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"verify-full\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pamservice=%s\00", align 1
@uaLDAP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"ldapserver=%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ldapport=%d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ldaptls=true\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ldapprefix=%s\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ldapsuffix=%s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ldapbasedn=%s\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"ldapbinddn=%s\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ldapbindpasswd=%s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ldapsearchattribute=%s\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"ldapsearchfilter=%s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"ldapscope=%d\00", align 1
@uaRADIUS = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"radiusservers=%s\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"radiussecrets=%s\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"radiusidentifiers=%s\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"radiusports=%s\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @gethba_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gethba_options(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @MAX_HBA_OPTIONS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @uaGSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @uaSSPI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17, %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 20
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call i32 @CStringGetTextDatum(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %11, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @psprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = call i32 @CStringGetTextDatum(i8* %43)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %11, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %34
  br label %50

50:                                               ; preds = %49, %17
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @psprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = call i32 @CStringGetTextDatum(i8* %59)
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %11, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %50
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @clientCertOff, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @clientCertCA, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)
  %79 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = call i32 @CStringGetTextDatum(i8* %79)
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %11, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %71, %65
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = call i32 @CStringGetTextDatum(i8* %94)
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %11, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %90, %85
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @uaLDAP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %268

106:                                              ; preds = %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  %116 = call i32 @CStringGetTextDatum(i8* %115)
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %11, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %106
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @psprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  %131 = call i32 @CStringGetTextDatum(i8* %130)
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %11, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %126, %121
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 19
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = call i32 @CStringGetTextDatum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %11, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %136
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 7
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %155)
  %157 = call i32 @CStringGetTextDatum(i8* %156)
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %11, i64 %160
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %147
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 8
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 8
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  %172 = call i32 @CStringGetTextDatum(i8* %171)
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %11, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %162
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 9
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 9
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %185)
  %187 = call i32 @CStringGetTextDatum(i8* %186)
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %11, i64 %190
  store i32 %187, i32* %191, align 4
  br label %192

192:                                              ; preds = %182, %177
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 10
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 10
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @psprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %200)
  %202 = call i32 @CStringGetTextDatum(i8* %201)
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %11, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %192
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 11
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 11
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* @psprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %215)
  %217 = call i32 @CStringGetTextDatum(i8* %216)
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %11, i64 %220
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %212, %207
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 12
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 12
  %230 = load i8*, i8** %229, align 8
  %231 = call i8* @psprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %230)
  %232 = call i32 @CStringGetTextDatum(i8* %231)
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %11, i64 %235
  store i32 %232, i32* %236, align 4
  br label %237

237:                                              ; preds = %227, %222
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 13
  %240 = load i8*, i8** %239, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 13
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @psprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %245)
  %247 = call i32 @CStringGetTextDatum(i8* %246)
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %11, i64 %250
  store i32 %247, i32* %251, align 4
  br label %252

252:                                              ; preds = %242, %237
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 14
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 14
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @psprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %260)
  %262 = call i32 @CStringGetTextDatum(i8* %261)
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %4, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %11, i64 %265
  store i32 %262, i32* %266, align 4
  br label %267

267:                                              ; preds = %257, %252
  br label %268

268:                                              ; preds = %267, %100
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @uaRADIUS, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %335

274:                                              ; preds = %268
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 15
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %289

279:                                              ; preds = %274
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 15
  %282 = load i8*, i8** %281, align 8
  %283 = call i8* @psprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %282)
  %284 = call i32 @CStringGetTextDatum(i8* %283)
  %285 = load i32, i32* %4, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %4, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %11, i64 %287
  store i32 %284, i32* %288, align 4
  br label %289

289:                                              ; preds = %279, %274
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 16
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 16
  %297 = load i8*, i8** %296, align 8
  %298 = call i8* @psprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %297)
  %299 = call i32 @CStringGetTextDatum(i8* %298)
  %300 = load i32, i32* %4, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %4, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %11, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %294, %289
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 17
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %319

309:                                              ; preds = %304
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 17
  %312 = load i8*, i8** %311, align 8
  %313 = call i8* @psprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* %312)
  %314 = call i32 @CStringGetTextDatum(i8* %313)
  %315 = load i32, i32* %4, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %4, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %11, i64 %317
  store i32 %314, i32* %318, align 4
  br label %319

319:                                              ; preds = %309, %304
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 18
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %334

324:                                              ; preds = %319
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 18
  %327 = load i8*, i8** %326, align 8
  %328 = call i8* @psprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %327)
  %329 = call i32 @CStringGetTextDatum(i8* %328)
  %330 = load i32, i32* %4, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %4, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %11, i64 %332
  store i32 %329, i32* %333, align 4
  br label %334

334:                                              ; preds = %324, %319
  br label %335

335:                                              ; preds = %334, %268
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* @MAX_HBA_OPTIONS, align 4
  %338 = icmp sle i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @Assert(i32 %339)
  %341 = load i32, i32* %4, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %335
  %344 = load i32, i32* %4, align 4
  %345 = load i32, i32* @TEXTOID, align 4
  %346 = call i32* @construct_array(i32* %11, i32 %344, i32 %345, i32 -1, i32 0, i8 signext 105)
  store i32* %346, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %348

347:                                              ; preds = %335
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %348

348:                                              ; preds = %347, %343
  %349 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %349)
  %350 = load i32*, i32** %2, align 8
  ret i32* %350
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i8* @psprintf(i8*, i8*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32* @construct_array(i32*, i32, i32, i32, i32, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
