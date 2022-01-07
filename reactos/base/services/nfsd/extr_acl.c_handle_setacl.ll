; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_handle_setacl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_handle_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i32, %struct.TYPE_13__, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"handle_setacl: OWNER_SECURITY_INFORMATION\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"GetSecurityDescriptorOwner failed with %d\0A\00", align 1
@localdomain_name = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@GROUP_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"handle_setacl: GROUP_SECURITY_INFORMATION\0A\00", align 1
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"handle_setacl: DACL_SECURITY_INFORMATION\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"GetSecurityDescriptorDacl failed with %d\0A\00", align 1
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@OPEN_DELEGATE_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"handle_setacl: nfs41_setattr() failed with error %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @handle_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_setacl(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %21 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %4, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %5, align 8
  %28 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 56, i1 false)
  %29 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %1
  %37 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load i32, i32* @ACLLVL, align 4
  %42 = call i32 (i32, i8*, ...) @dprintf(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GetSecurityDescriptorOwner(i32 %45, i32** %9, i32* %11)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = call i32 (...) @GetLastError()
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 2, i32* %15, align 4
  br label %74

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i8* %40, i8** %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @localdomain_name, align 4
  %59 = call i32 @map_nfs4ace_who(i32* %55, i32* null, i32* null, i8* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 2, i32* %15, align 4
  br label %74

63:                                               ; preds = %53
  %64 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  br label %73

73:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %62, %49, %73
  %75 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %15, align 4
  switch i32 %76, label %244 [
    i32 0, label %77
    i32 2, label %242
  ]

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GROUP_SECURITY_INFORMATION, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %78
  %86 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %16, align 8
  %89 = alloca i8, i64 %87, align 16
  store i64 %87, i64* %17, align 8
  %90 = load i32, i32* @ACLLVL, align 4
  %91 = call i32 (i32, i8*, ...) @dprintf(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @GetSecurityDescriptorGroup(i32 %94, i32** %9, i32* %11)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = call i32 (...) @GetLastError()
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i32 2, i32* %15, align 4
  br label %123

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i8* %89, i8** %103, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @localdomain_name, align 4
  %108 = call i32 @map_nfs4ace_who(i32* %104, i32* null, i32* null, i8* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 2, i32* %15, align 4
  br label %123

112:                                              ; preds = %102
  %113 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i32 2, i32* %121, align 8
  br label %122

122:                                              ; preds = %112
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %111, %98, %122
  %124 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %15, align 4
  switch i32 %125, label %244 [
    i32 0, label %126
    i32 2, label %242
  ]

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %78
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %199

134:                                              ; preds = %127
  %135 = load i32, i32* @ACLLVL, align 4
  %136 = call i32 (i32, i8*, ...) @dprintf(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @GetSecurityDescriptorDacl(i32 %139, i32* %18, i32* %20, i32* %19)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %134
  %144 = call i32 (...) @GetLastError()
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %242

147:                                              ; preds = %134
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @GetSecurityDescriptorOwner(i32 %150, i32** %9, i32* %11)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = call i32 (...) @GetLastError()
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  br label %242

158:                                              ; preds = %147
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @GetSecurityDescriptorGroup(i32 %161, i32** %10, i32* %12)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = call i32 (...) @GetLastError()
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %242

169:                                              ; preds = %158
  %170 = load i32, i32* %20, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @localdomain_name, align 4
  %177 = call i32 @map_dacl_2_nfs4acl(i32 %170, i32* %171, i32* %172, %struct.TYPE_15__* %8, i32 %175, i32 %176)
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %242

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %182, align 8
  %183 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %181
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %181
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %127
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %206 = load i32, i32* @FALSE, align 4
  %207 = call i32 @nfs41_delegation_return(i32 %202, i32* %204, i32 %205, i32 %206)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = call i32 @nfs41_open_stateid_arg(%struct.TYPE_17__* %208, i32* %7)
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = call i32 @nfs41_setattr(i32 %212, i32* %214, i32* %7, %struct.TYPE_18__* %6)
  store i32 %215, i32* %3, align 4
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %199
  %219 = load i32, i32* @ACLLVL, align 4
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @nfs_error_string(i32 %220)
  %222 = call i32 (i32, i8*, ...) @dprintf(i32 %219, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %225 = call i32 @nfs_to_windows_error(i32 %223, i32 %224)
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %218, %199
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @free(i32 %239)
  br label %241

241:                                              ; preds = %237, %226
  br label %242

242:                                              ; preds = %241, %180, %165, %154, %143, %123, %74
  %243 = load i32, i32* %3, align 4
  ret i32 %243

244:                                              ; preds = %123, %74
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dprintf(i32, i8*, ...) #3

declare dso_local i32 @GetSecurityDescriptorOwner(i32, i32**, i32*) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @eprintf(i8*, i32) #3

declare dso_local i32 @map_nfs4ace_who(i32*, i32*, i32*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @GetSecurityDescriptorGroup(i32, i32**, i32*) #3

declare dso_local i32 @GetSecurityDescriptorDacl(i32, i32*, i32*, i32*) #3

declare dso_local i32 @map_dacl_2_nfs4acl(i32, i32*, i32*, %struct.TYPE_15__*, i32, i32) #3

declare dso_local i32 @nfs41_delegation_return(i32, i32*, i32, i32) #3

declare dso_local i32 @nfs41_open_stateid_arg(%struct.TYPE_17__*, i32*) #3

declare dso_local i32 @nfs41_setattr(i32, i32*, i32*, %struct.TYPE_18__*) #3

declare dso_local i32 @nfs_error_string(i32) #3

declare dso_local i32 @nfs_to_windows_error(i32, i32) #3

declare dso_local i32 @free(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
