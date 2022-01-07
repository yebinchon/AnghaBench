; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_convert_nfs4acl_2_dacl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_convert_nfs4acl_2_dacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"handle_getacl: for user=%s domain=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@ACL_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"access mask %x ace type %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DENIED ACE\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ALLOWED ACE\00", align 1
@ACE4_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"convert_nfs4acl_2_dacl: AddAccessAllowedAce failed with %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ACE4_ACCESS_DENIED_ACE_TYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"convert_nfs4acl_2_dacl: AddAccessDeniedAce failed with %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"convert_nfs4acl_2_dacl: unknown acetype %d\0A\00", align 1
@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"convert_nfs4acl_2_dacl: InitializeAcl failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32**, i32**)* @convert_nfs4acl_2_dacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_nfs4acl_2_dacl(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %18 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %15, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i8* @malloc(i32 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call i32 (...) @GetLastError()
  store i32 %30, i32* %9, align 4
  br label %259

31:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %111, %31
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @convert_nfs4name_2_user_domain(i32 %46, i8** %15)
  %48 = load i32, i32* @ACLLVL, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i8*, i8** %15, align 8
  br label %61

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %60 ]
  %63 = call i32 @dprintf(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @check_4_special_identifiers(i32 %70, i32* %73, i32* %12, i32* %16)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %61
  %78 = load i32*, i32** %13, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @free_sids(i32* %78, i64 %79)
  br label %259

81:                                               ; preds = %61
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %13, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @map_name_2_sid(i32* %12, i32* %87, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32*, i32** %13, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @free_sids(i32* %99, i64 %100)
  br label %259

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %81
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, 4
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %32

114:                                              ; preds = %32
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = add i64 4, %119
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 4
  %128 = sub i64 %127, 1
  %129 = and i64 %128, 4294967292
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i8* @malloc(i32 %131)
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %114
  br label %264

137:                                              ; preds = %114
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ACL_REVISION, align 4
  %141 = call i64 @InitializeAcl(i32* %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %250

143:                                              ; preds = %137
  store i64 0, i64* %11, align 8
  br label %144

144:                                              ; preds = %246, %143
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp ult i64 %145, %149
  br i1 %150, label %151, label %249

151:                                              ; preds = %144
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* @ACLLVL, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %171 = call i32 @dprintf(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %160, i8* %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i64, i64* %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ACE4_ACCESS_ALLOWED_ACE_TYPE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %151
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* @ACL_REVISION, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = load i64, i64* %11, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @AddAccessAllowedAce(i32* %182, i32 %183, i32 %184, i32 %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %181
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @eprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %261

195:                                              ; preds = %181
  %196 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %195
  br label %245

198:                                              ; preds = %151
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @ACE4_ACCESS_DENIED_ACE_TYPE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %198
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* @ACL_REVISION, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i64, i64* %11, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @AddAccessDeniedAce(i32* %209, i32 %210, i32 %211, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @eprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %220)
  br label %261

222:                                              ; preds = %208
  %223 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %222
  br label %244

225:                                              ; preds = %198
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %235, i32* %9, align 4
  %236 = load i32*, i32** %14, align 8
  %237 = call i32 @free(i32* %236)
  %238 = load i32*, i32** %13, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = call i32 @free_sids(i32* %238, i64 %242)
  br label %259

244:                                              ; preds = %224
  br label %245

245:                                              ; preds = %244, %197
  br label %246

246:                                              ; preds = %245
  %247 = load i64, i64* %11, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %11, align 8
  br label %144

249:                                              ; preds = %144
  br label %253

250:                                              ; preds = %137
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @eprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  br label %261

253:                                              ; preds = %249
  %254 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %254, i32* %9, align 4
  %255 = load i32*, i32** %13, align 8
  %256 = load i32**, i32*** %8, align 8
  store i32* %255, i32** %256, align 8
  %257 = load i32*, i32** %14, align 8
  %258 = load i32**, i32*** %7, align 8
  store i32* %257, i32** %258, align 8
  br label %259

259:                                              ; preds = %264, %253, %225, %98, %77, %29
  %260 = load i32, i32* %9, align 4
  ret i32 %260

261:                                              ; preds = %250, %219, %192
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @free(i32* %262)
  br label %264

264:                                              ; preds = %261, %136
  %265 = load i32*, i32** %13, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = call i32 @free_sids(i32* %265, i64 %269)
  %271 = call i32 (...) @GetLastError()
  store i32 %271, i32* %9, align 4
  br label %259
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @convert_nfs4name_2_user_domain(i32, i8**) #1

declare dso_local i32 @dprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @check_4_special_identifiers(i32, i32*, i32*, i32*) #1

declare dso_local i32 @free_sids(i32*, i64) #1

declare dso_local i32 @map_name_2_sid(i32*, i32*, i32) #1

declare dso_local i64 @InitializeAcl(i32*, i32, i32) #1

declare dso_local i32 @AddAccessAllowedAce(i32*, i32, i32, i32) #1

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @AddAccessDeniedAce(i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
