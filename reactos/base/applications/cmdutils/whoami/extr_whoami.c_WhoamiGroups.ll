; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiGroups.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@WhoamiGroups.szGroupName = internal global [255 x i32] zeroinitializer, align 16
@WhoamiGroups.szDomainName = internal global [255 x i32] zeroinitializer, align 16
@IDS_TP_ALIAS = common dso_local global i32 0, align 4
@IDS_TP_WELL_KNOWN_GROUP = common dso_local global i32 0, align 4
@IDS_TP_LABEL = common dso_local global i32 0, align 4
@TokenGroups = common dso_local global i32 0, align 4
@IDS_GROU_HEADER = common dso_local global i32 0, align 4
@IDS_COL_GROUP_NAME = common dso_local global i32 0, align 4
@IDS_COL_TYPE = common dso_local global i32 0, align 4
@IDS_COL_SID = common dso_local global i32 0, align 4
@IDS_COL_ATTRIB = common dso_local global i32 0, align 4
@SidTypeWellKnownGroup = common dso_local global i64 0, align 8
@SidTypeAlias = common dso_local global i64 0, align 8
@SidTypeLabel = common dso_local global i64 0, align 8
@SE_GROUP_LOGON_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 37, i32 115, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@SE_GROUP_MANDATORY = common dso_local global i32 0, align 4
@IDS_ATTR_GROUP_MANDATORY = common dso_local global i32 0, align 4
@SE_GROUP_ENABLED_BY_DEFAULT = common dso_local global i32 0, align 4
@IDS_ATTR_GROUP_ENABLED_BY_DEFAULT = common dso_local global i32 0, align 4
@SE_GROUP_ENABLED = common dso_local global i32 0, align 4
@IDS_ATTR_GROUP_ENABLED = common dso_local global i32 0, align 4
@SE_GROUP_OWNER = common dso_local global i32 0, align 4
@IDS_ATTR_GROUP_OWNER = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WhoamiGroups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [12 x i32], align 16
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [666 x i32], align 16
  store i64 0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  %12 = call i64 @_countof(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szGroupName, i64 0, i64 0))
  store i64 %12, i64* %4, align 8
  %13 = call i64 @_countof(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szGroupName, i64 0, i64 0))
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  store i32 -1, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 -1, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* @IDS_TP_ALIAS, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @IDS_TP_WELL_KNOWN_GROUP, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 -1, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* @IDS_TP_LABEL, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = getelementptr inbounds i32, i32* %14, i64 12
  br label %30

30:                                               ; preds = %30, %0
  %31 = phi i32* [ %28, %0 ], [ %32, %30 ]
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = icmp eq i32* %32, %29
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = load i32, i32* @TokenGroups, align 4
  %36 = call i32 @WhoamiGetTokenInfo(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %8, align 8
  store i32* null, i32** %10, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %252

42:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  %47 = call i32* @WhoamiAllocTable(i64 %46, i32 4)
  store i32* %47, i32** %10, align 8
  %48 = load i32, i32* @IDS_GROU_HEADER, align 4
  %49 = call i32 @WhoamiPrintHeader(i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* @IDS_COL_GROUP_NAME, align 4
  %52 = call i32* @WhoamiLoadRcString(i32 %51)
  %53 = call i32 @WhoamiSetTable(i32* %50, i32* %52, i32 0, i32 0)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @IDS_COL_TYPE, align 4
  %56 = call i32* @WhoamiLoadRcString(i32 %55)
  %57 = call i32 @WhoamiSetTable(i32* %54, i32* %56, i32 0, i32 1)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @IDS_COL_SID, align 4
  %60 = call i32* @WhoamiLoadRcString(i32 %59)
  %61 = call i32 @WhoamiSetTable(i32* %58, i32* %60, i32 0, i32 2)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* @IDS_COL_ATTRIB, align 4
  %64 = call i32* @WhoamiLoadRcString(i32 %63)
  %65 = call i32 @WhoamiSetTable(i32* %62, i32* %64, i32 0, i32 3)
  store i64 0, i64* %2, align 8
  br label %66

66:                                               ; preds = %243, %42
  %67 = load i64, i64* %2, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %246

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @LookupAccountSidW(i32* null, i32 %79, i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szGroupName, i32 0, i32 0), i64* %4, i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szDomainName, i32 0, i32 0), i64* %5, i64* %6)
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @SidTypeWellKnownGroup, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %72
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @SidTypeAlias, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @SidTypeLabel, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %240

92:                                               ; preds = %88, %84, %72
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i64, i64* %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SE_GROUP_LOGON_ID, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %240, label %103

103:                                              ; preds = %92
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i64, i64* %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 96
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i64, i64* %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 7, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %103
  %120 = bitcast [666 x i32]* %11 to i32*
  %121 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %122 = call i64 @_countof(i32* %121)
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.2, i64 0, i64 0)
  %127 = bitcast i32* %126 to i8*
  %128 = call i32 @_snwprintf(i32* %120, i64 %122, i8* bitcast ([7 x i32]* @.str to i8*), i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szDomainName, i64 0, i64 0), i8* %127, i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szGroupName, i64 0, i64 0))
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @WhoamiSetTable(i32* %129, i32* %130, i32 %131, i32 0)
  %133 = load i32*, i32** %10, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @WhoamiLoadRcString(i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @WhoamiSetTable(i32* %133, i32* %137, i32 %138, i32 1)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i64, i64* %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ConvertSidToStringSidW(i32 %146, i32** %3)
  %148 = load i32*, i32** %10, align 8
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @WhoamiSetTable(i32* %148, i32* %149, i32 %150, i32 2)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @LocalFree(i32* %152)
  %154 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %155 = call i32 @ZeroMemory(i32* %154, i32 2664)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i64, i64* %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SE_GROUP_MANDATORY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %119
  %167 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %168 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %169 = call i64 @_countof(i32* %168)
  %170 = load i32, i32* @IDS_ATTR_GROUP_MANDATORY, align 4
  %171 = call i32* @WhoamiLoadRcString(i32 %170)
  %172 = call i32 @StringCchCat(i32* %167, i64 %169, i32* %171)
  br label %173

173:                                              ; preds = %166, %119
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load i64, i64* %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SE_GROUP_ENABLED_BY_DEFAULT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %173
  %185 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %186 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %187 = call i64 @_countof(i32* %186)
  %188 = load i32, i32* @IDS_ATTR_GROUP_ENABLED_BY_DEFAULT, align 4
  %189 = call i32* @WhoamiLoadRcString(i32 %188)
  %190 = call i32 @StringCchCat(i32* %185, i64 %187, i32* %189)
  br label %191

191:                                              ; preds = %184, %173
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = load i64, i64* %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SE_GROUP_ENABLED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %191
  %203 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %204 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %205 = call i64 @_countof(i32* %204)
  %206 = load i32, i32* @IDS_ATTR_GROUP_ENABLED, align 4
  %207 = call i32* @WhoamiLoadRcString(i32 %206)
  %208 = call i32 @StringCchCat(i32* %203, i64 %205, i32* %207)
  br label %209

209:                                              ; preds = %202, %191
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i64, i64* %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SE_GROUP_OWNER, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %209
  %221 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %222 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %223 = call i64 @_countof(i32* %222)
  %224 = load i32, i32* @IDS_ATTR_GROUP_OWNER, align 4
  %225 = call i32* @WhoamiLoadRcString(i32 %224)
  %226 = call i32 @StringCchCat(i32* %221, i64 %223, i32* %225)
  br label %227

227:                                              ; preds = %220, %209
  %228 = load i32, i32* @UNICODE_NULL, align 4
  %229 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %230 = call i64 @wcslen(i32* %229)
  %231 = sub nsw i64 %230, 2
  %232 = call i64 @max(i64 %231, i32 0)
  %233 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 %232
  store i32 %228, i32* %233, align 4
  %234 = load i32*, i32** %10, align 8
  %235 = getelementptr inbounds [666 x i32], [666 x i32]* %11, i64 0, i64 0
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @WhoamiSetTable(i32* %234, i32* %235, i32 %236, i32 3)
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %240

240:                                              ; preds = %227, %92, %88
  %241 = call i32 @ZeroMemory(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szGroupName, i64 0, i64 0), i32 1020)
  %242 = call i32 @ZeroMemory(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @WhoamiGroups.szDomainName, i64 0, i64 0), i32 1020)
  store i64 255, i64* %4, align 8
  store i64 255, i64* %5, align 8
  br label %243

243:                                              ; preds = %240
  %244 = load i64, i64* %2, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %2, align 8
  br label %66

246:                                              ; preds = %66
  %247 = load i32*, i32** %10, align 8
  %248 = call i32 @WhoamiPrintTable(i32* %247)
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %250 = ptrtoint %struct.TYPE_4__* %249 to i32
  %251 = call i32 @WhoamiFree(i32 %250)
  store i32 0, i32* %1, align 4
  br label %252

252:                                              ; preds = %246, %41
  %253 = load i32, i32* %1, align 4
  ret i32 %253
}

declare dso_local i64 @_countof(i32*) #1

declare dso_local i32 @WhoamiGetTokenInfo(i32) #1

declare dso_local i32* @WhoamiAllocTable(i64, i32) #1

declare dso_local i32 @WhoamiPrintHeader(i32) #1

declare dso_local i32 @WhoamiSetTable(i32*, i32*, i32, i32) #1

declare dso_local i32* @WhoamiLoadRcString(i32) #1

declare dso_local i32 @LookupAccountSidW(i32*, i32, i32*, i64*, i32*, i64*, i64*) #1

declare dso_local i32 @_snwprintf(i32*, i64, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @ConvertSidToStringSidW(i32, i32**) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @StringCchCat(i32*, i64, i32*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @WhoamiPrintTable(i32*) #1

declare dso_local i32 @WhoamiFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
