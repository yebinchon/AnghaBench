; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_handle_getacl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_handle_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32*, i64 }
%struct.TYPE_17__ = type { i8*, i8*, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, i32 }

@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"handle_getacl: nfs41_cached_getattr() failed with %d\0A\00", align 1
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"handle_getacl: InitializeSecurityDescriptor failed with %d\0A\00", align 1
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"handle_getacl: OWNER_SECURITY_INFORMATION: for user=%s domain=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"handle_getacl: SetSecurityDescriptorOwner failed with %d\0A\00", align 1
@GROUP_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"handle_getacl: GROUP_SECURITY_INFORMATION: for %s domain=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"handle_getacl: SetSecurityDescriptorGroup failed with %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"handle_getacl: DACL_SECURITY_INFORMATION\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"handle_getacl: SetSecurityDescriptorDacl failed with %d\0A\00", align 1
@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"handle_getacl: MakeSelfRelativeSD failes with %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @handle_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_getacl(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %19 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %5, align 8
  %26 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  store i8* null, i8** %8, align 8
  store i32* null, i32** %10, align 8
  store i32** null, i32*** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %28 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  %35 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 2, i32* %36, align 8
  %37 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %38 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %50, align 8
  %51 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i8* %31, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i8* %34, i8** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = call i32 @nfs41_getattr(i32 %62, i32* %64, %struct.TYPE_19__* %7, %struct.TYPE_17__* %6)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @eprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %243

71:                                               ; preds = %57
  %72 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %73 = call i32 @InitializeSecurityDescriptor(i32* %9, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = call i32 (...) @GetLastError()
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @eprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %243

80:                                               ; preds = %71
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @convert_nfs4name_2_user_domain(i8* %89, i8** %8)
  %91 = load i32, i32* @ACLLVL, align 4
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i8*, i8** %8, align 8
  br label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i8* [ %97, %96 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %98 ]
  %101 = call i32 (i32, i8*, ...) @dprintf(i32 %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %93, i8* %100)
  store i64 0, i64* %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @map_name_2_sid(i64* %14, i32** %12, i8* %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %243

108:                                              ; preds = %99
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @SetSecurityDescriptorOwner(i32* %9, i32* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = call i32 (...) @GetLastError()
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @eprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %243

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %80
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GROUP_SECURITY_INFORMATION, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @convert_nfs4name_2_user_domain(i8* %128, i8** %8)
  %130 = load i32, i32* @ACLLVL, align 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i8*, i8** %8, align 8
  br label %138

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %137 ]
  %140 = call i32 (i32, i8*, ...) @dprintf(i32 %130, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %132, i8* %139)
  store i64 0, i64* %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @map_name_2_sid(i64* %14, i32** %13, i8* %142)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %243

147:                                              ; preds = %138
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* @TRUE, align 4
  %150 = call i32 @SetSecurityDescriptorGroup(i32* %9, i32* %148, i32 %149)
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %147
  %154 = call i32 (...) @GetLastError()
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @eprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %243

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %119
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %158
  %166 = load i32, i32* @ACLLVL, align 4
  %167 = call i32 (i32, i8*, ...) @dprintf(i32 %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @convert_nfs4acl_2_dacl(%struct.TYPE_14__* %169, i32 %172, i32** %10, i32*** %11)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %243

177:                                              ; preds = %165
  %178 = load i32, i32* @TRUE, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* @TRUE, align 4
  %181 = call i32 @SetSecurityDescriptorDacl(i32* %9, i32 %178, i32* %179, i32 %180)
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %177
  %185 = call i32 (...) @GetLastError()
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @eprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  br label %243

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %158
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = call i32 @MakeSelfRelativeSD(i32* %9, i32* %194, i64* %196)
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %3, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %189
  %201 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %201, i32* %3, align 4
  br label %243

202:                                              ; preds = %189
  %203 = call i32 (...) @GetLastError()
  store i32 %203, i32* %3, align 4
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %208)
  br label %243

210:                                              ; preds = %202
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = call i32* @malloc(i64 %213)
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  store i32* %214, i32** %216, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = call i32 (...) @GetLastError()
  store i32 %222, i32* %3, align 4
  br label %243

223:                                              ; preds = %210
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = call i32 @MakeSelfRelativeSD(i32* %9, i32* %226, i64* %228)
  store i32 %229, i32* %3, align 4
  %230 = load i32, i32* %3, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %223
  %233 = call i32 (...) @GetLastError()
  store i32 %233, i32* %3, align 4
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @free(i32* %238)
  br label %243

240:                                              ; preds = %223
  %241 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %240
  br label %243

243:                                              ; preds = %242, %232, %221, %207, %200, %184, %176, %153, %146, %114, %107, %76, %68
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load i32*, i32** %12, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32*, i32** %12, align 8
  %255 = call i32 @free(i32* %254)
  br label %256

256:                                              ; preds = %253, %250
  br label %257

257:                                              ; preds = %256, %243
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @GROUP_SECURITY_INFORMATION, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i32*, i32** %13, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32*, i32** %13, align 8
  %269 = call i32 @free(i32* %268)
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %257
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %294

278:                                              ; preds = %271
  %279 = load i32**, i32*** %11, align 8
  %280 = icmp ne i32** %279, null
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32**, i32*** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @free_sids(i32** %282, i32 %286)
  br label %288

288:                                              ; preds = %281, %278
  %289 = load i32*, i32** %10, align 8
  %290 = call i32 @free(i32* %289)
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = call i32 @nfsacl41_free(%struct.TYPE_14__* %292)
  br label %294

294:                                              ; preds = %288, %271
  %295 = load i32, i32* %3, align 4
  %296 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %296)
  ret i32 %295
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nfs41_getattr(i32, i32*, %struct.TYPE_19__*, %struct.TYPE_17__*) #3

declare dso_local i32 @eprintf(i8*, i32) #3

declare dso_local i32 @InitializeSecurityDescriptor(i32*, i32) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @convert_nfs4name_2_user_domain(i8*, i8**) #3

declare dso_local i32 @dprintf(i32, i8*, ...) #3

declare dso_local i32 @map_name_2_sid(i64*, i32**, i8*) #3

declare dso_local i32 @SetSecurityDescriptorOwner(i32*, i32*, i32) #3

declare dso_local i32 @SetSecurityDescriptorGroup(i32*, i32*, i32) #3

declare dso_local i32 @convert_nfs4acl_2_dacl(%struct.TYPE_14__*, i32, i32**, i32***) #3

declare dso_local i32 @SetSecurityDescriptorDacl(i32*, i32, i32*, i32) #3

declare dso_local i32 @MakeSelfRelativeSD(i32*, i32*, i64*) #3

declare dso_local i32* @malloc(i64) #3

declare dso_local i32 @free(i32*) #3

declare dso_local i32 @free_sids(i32**, i32) #3

declare dso_local i32 @nfsacl41_free(%struct.TYPE_14__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
