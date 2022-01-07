; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_rename.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_32__, i32*, %struct.TYPE_38__, %struct.TYPE_37__ }
%struct.TYPE_32__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_34__, %struct.TYPE_40__, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i64 }
%struct.TYPE_41__ = type { i16, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"silly rename: %s -> %s\0A\00", align 1
@OPEN_DELEGATE_WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"nfs41_rename() failed with error %s.\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@NFS41_MAX_PATH_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"WideCharToMultiByte failed to convert destination filename %S.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_REPARSE = common dso_local global i32 0, align 4
@NFS41_MAX_SYMLINK_DEPTH = common dso_local global i64 0, align 8
@ERROR_TOO_MANY_LINKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"nfs41_symlink_target() for %s failed with %d\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"nfs41_lookup('%s') failed to find destination directory with %d\0A\00", align 1
@ERROR_NOT_SAME_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"handle_nfs41_rename: %s is opened\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*)* @handle_nfs41_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_nfs41_rename(%struct.TYPE_36__* %0) #0 {
  %2 = alloca %struct.TYPE_36__*, align 8
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_41__, align 8
  %7 = alloca %struct.TYPE_38__, align 8
  %8 = alloca %struct.TYPE_38__, align 8
  %9 = alloca %struct.TYPE_40__, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %2, align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  store %struct.TYPE_39__* %15, %struct.TYPE_39__** %3, align 8
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %20, %struct.TYPE_42__** %5, align 8
  %21 = bitcast %struct.TYPE_41__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  store i64 0, i64* %11, align 8
  %22 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %23, i32 0, i32 1
  store %struct.TYPE_40__* %24, %struct.TYPE_40__** %10, align 8
  %25 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %1
  %30 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 0
  %33 = call i32 @AcquireSRWLockShared(i32* %32)
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 3
  %36 = call i32 @abs_path_copy(%struct.TYPE_41__* %6, %struct.TYPE_37__* %35)
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 0
  %40 = call i32 @ReleaseSRWLockShared(i32* %39)
  %41 = call i32 @path_fh_init(%struct.TYPE_38__* %7, %struct.TYPE_41__* %6)
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 0
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = call i32 @fh_copy(%struct.TYPE_34__* %42, %struct.TYPE_35__* %45)
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 0
  %50 = call i32 @create_silly_rename(%struct.TYPE_41__* %6, %struct.TYPE_34__* %49, %struct.TYPE_40__* %9)
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %56)
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 2
  %63 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @nfs41_delegation_return(i32* %60, %struct.TYPE_38__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %72 = call i32 @nfs41_rename(i32* %68, %struct.TYPE_32__* %70, %struct.TYPE_40__* %71, %struct.TYPE_38__* %7, %struct.TYPE_40__* %9)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %29
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @nfs_error_string(i32 %76)
  %78 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %81 = call i32 @nfs_to_windows_error(i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  br label %85

82:                                               ; preds = %29
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %84 = call i32 @open_state_rename(%struct.TYPE_39__* %83, %struct.TYPE_41__* %6)
  br label %85

85:                                               ; preds = %82, %75
  br label %246

86:                                               ; preds = %1
  %87 = load i32, i32* @CP_UTF8, align 4
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @NFS41_MAX_PATH_LEN, align 4
  %100 = call i64 @WideCharToMultiByte(i32 %87, i32 0, i64 %90, i32 %96, i64 %98, i32 %99, i32* null, i32* null)
  %101 = trunc i64 %100 to i16
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  store i16 %101, i16* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %104 = load i16, i16* %103, align 8
  %105 = zext i16 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %86
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i64, ...) @eprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %112, i32* %12, align 4
  br label %246

113:                                              ; preds = %86
  %114 = call i32 @path_fh_init(%struct.TYPE_38__* %7, %struct.TYPE_41__* %6)
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32* @nfs41_root_session(i32 %120)
  %122 = call i32 @nfs41_lookup(i32 %117, i32* %121, %struct.TYPE_41__* %6, %struct.TYPE_38__* %7, %struct.TYPE_38__* %8, i32* null, i32** %4)
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %147, %113
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @ERROR_REPARSE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* @NFS41_MAX_SYMLINK_DEPTH, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @ERROR_TOO_MANY_LINKS, align 4
  store i32 %133, i32* %12, align 4
  br label %246

134:                                              ; preds = %127
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @nfs41_symlink_target(i32* %135, %struct.TYPE_38__* %7, %struct.TYPE_41__* %6)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 2
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i8*, i64, ...) @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %144, i32 %145)
  br label %246

147:                                              ; preds = %134
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @nfs41_lookup(i32 %150, i32* %151, %struct.TYPE_41__* %6, %struct.TYPE_38__* %7, %struct.TYPE_38__* null, i32* null, i32** %4)
  store i32 %152, i32* %12, align 4
  br label %123

153:                                              ; preds = %123
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %159 = load i16, i16* %158, align 8
  %160 = zext i16 %159 to i64
  %161 = add nsw i64 %157, %160
  %162 = call i32 @last_component(i64 %155, i64 %161, %struct.TYPE_40__* %9)
  %163 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %9, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 1
  %168 = call i32 @last_component(i64 %164, i64 %166, %struct.TYPE_40__* %167)
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @NO_ERROR, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %153
  %173 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %178, i32* %12, align 4
  br label %246

179:                                              ; preds = %172
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %182 = load i32, i32* @TRUE, align 4
  %183 = call i32 @nfs41_delegation_return(i32* %180, %struct.TYPE_38__* %8, i32 %181, i32 %182)
  br label %195

184:                                              ; preds = %153
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %192)
  br label %246

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194, %179
  %196 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %200, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %195
  %206 = load i32, i32* @ERROR_NOT_SAME_DEVICE, align 4
  store i32 %206, i32* %12, align 4
  br label %246

207:                                              ; preds = %195
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @is_dst_name_opened(%struct.TYPE_41__* %6, i32* %208)
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 (i8*, i64, ...) @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %216, i32* %12, align 4
  br label %246

217:                                              ; preds = %207
  %218 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %221, i32 0, i32 2
  %223 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %224 = load i32, i32* @FALSE, align 4
  %225 = call i32 @nfs41_delegation_return(i32* %220, %struct.TYPE_38__* %222, i32 %223, i32 %224)
  %226 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %232 = call i32 @nfs41_rename(i32* %228, %struct.TYPE_32__* %230, %struct.TYPE_40__* %231, %struct.TYPE_38__* %7, %struct.TYPE_40__* %9)
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %217
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @nfs_error_string(i32 %236)
  %238 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %241 = call i32 @nfs_to_windows_error(i32 %239, i32 %240)
  store i32 %241, i32* %12, align 4
  br label %245

242:                                              ; preds = %217
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %244 = call i32 @open_state_rename(%struct.TYPE_39__* %243, %struct.TYPE_41__* %6)
  br label %245

245:                                              ; preds = %242, %235
  br label %246

246:                                              ; preds = %245, %212, %205, %188, %177, %139, %132, %107, %85
  %247 = load i32, i32* %12, align 4
  ret i32 %247
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AcquireSRWLockShared(i32*) #2

declare dso_local i32 @abs_path_copy(%struct.TYPE_41__*, %struct.TYPE_37__*) #2

declare dso_local i32 @ReleaseSRWLockShared(i32*) #2

declare dso_local i32 @path_fh_init(%struct.TYPE_38__*, %struct.TYPE_41__*) #2

declare dso_local i32 @fh_copy(%struct.TYPE_34__*, %struct.TYPE_35__*) #2

declare dso_local i32 @create_silly_rename(%struct.TYPE_41__*, %struct.TYPE_34__*, %struct.TYPE_40__*) #2

declare dso_local i32 @dprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @nfs41_delegation_return(i32*, %struct.TYPE_38__*, i32, i32) #2

declare dso_local i32 @nfs41_rename(i32*, %struct.TYPE_32__*, %struct.TYPE_40__*, %struct.TYPE_38__*, %struct.TYPE_40__*) #2

declare dso_local i32 @nfs_error_string(i32) #2

declare dso_local i32 @nfs_to_windows_error(i32, i32) #2

declare dso_local i32 @open_state_rename(%struct.TYPE_39__*, %struct.TYPE_41__*) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i64, i32, i64, i32, i32*, i32*) #2

declare dso_local i32 @eprintf(i8*, i64, ...) #2

declare dso_local i32 @nfs41_lookup(i32, i32*, %struct.TYPE_41__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*, i32**) #2

declare dso_local i32* @nfs41_root_session(i32) #2

declare dso_local i32 @nfs41_symlink_target(i32*, %struct.TYPE_38__*, %struct.TYPE_41__*) #2

declare dso_local i32 @last_component(i64, i64, %struct.TYPE_40__*) #2

declare dso_local i32 @is_dst_name_opened(%struct.TYPE_41__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
