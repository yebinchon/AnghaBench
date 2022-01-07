; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_setattr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_23__, i32, i32, i32, i32*, i32 }
%struct.TYPE_23__ = type { i32, i32* }

@NO_ERROR = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FATTR4_WORD0_HIDDEN = common dso_local global i32 0, align 4
@FATTR4_WORD0_ARCHIVE = common dso_local global i32 0, align 4
@FATTR4_WORD1_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_CREATE = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS_SET = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY_SET = common dso_local global i32 0, align 4
@OPEN_DELEGATE_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"nfs41_setattr() failed with error %s.\0A\00", align 1
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @handle_nfs41_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_nfs41_setattr(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %3, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %5, align 8
  %24 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 72, i1 false)
  %25 = bitcast %struct.TYPE_21__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 72, i1 false)
  %26 = load i32, i32* @NO_ERROR, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %122

31:                                               ; preds = %1
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @session_name_cache(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @nfs41_attr_cache_lookup(i32 %62, i32 %67, %struct.TYPE_21__* %8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %31
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71, %31
  %78 = load i32, i32* @FATTR4_WORD0_HIDDEN, align 4
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %77, %71
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88, %85
  %95 = load i32, i32* @FATTR4_WORD0_ARCHIVE, align 4
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %94, %88
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107, %104
  %114 = load i32, i32* @FATTR4_WORD1_SYSTEM, align 4
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %114, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %107
  br label %122

122:                                              ; preds = %121, %1
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 292
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store i32 420, i32* %134, align 4
  %135 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 4
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  store i32 2, i32* %143, align 8
  br label %144

144:                                              ; preds = %133, %126, %122
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %213

149:                                              ; preds = %144
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 9
  store i32* %151, i32** %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %149
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 8
  %162 = call i32 @file_time_to_nfs_time(%struct.TYPE_16__* %160, i32* %161)
  %163 = load i32, i32* @FATTR4_WORD1_TIME_CREATE, align 4
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %163
  store i32 %169, i32* %167, align 4
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  store i32 2, i32* %171, align 8
  br label %172

172:                                              ; preds = %158, %149
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 7
  %182 = call i32 @file_time_to_nfs_time(%struct.TYPE_16__* %180, i32* %181)
  %183 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS_SET, align 4
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  store i32 2, i32* %191, align 8
  br label %192

192:                                              ; preds = %178, %172
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 6
  %202 = call i32 @file_time_to_nfs_time(%struct.TYPE_16__* %200, i32* %201)
  %203 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY_SET, align 4
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %203
  store i32 %209, i32* %207, align 4
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  store i32 2, i32* %211, align 8
  br label %212

212:                                              ; preds = %198, %192
  br label %213

213:                                              ; preds = %212, %144
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  store i32 292, i32* %221, align 4
  %222 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %222
  store i32 %228, i32* %226, align 4
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  store i32 2, i32* %230, align 8
  br label %231

231:                                              ; preds = %220, %213
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %234 = call i32 @nfs41_superblock_supported_attrs(%struct.TYPE_19__* %232, %struct.TYPE_23__* %233)
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %231
  br label %271

240:                                              ; preds = %231
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i32, i32* @OPEN_DELEGATE_READ, align 4
  %247 = load i32, i32* @FALSE, align 4
  %248 = call i32 @nfs41_delegation_return(i32 %243, %struct.TYPE_24__* %245, i32 %246, i32 %247)
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %250 = call i32 @nfs41_open_stateid_arg(%struct.TYPE_20__* %249, i32* %6)
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = call i32 @nfs41_setattr(i32 %253, %struct.TYPE_24__* %255, i32* %6, %struct.TYPE_21__* %7)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %240
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @nfs_error_string(i32 %260)
  %262 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %265 = call i32 @nfs_to_windows_error(i32 %263, i32 %264)
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %259, %240
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %266, %239
  %272 = load i32, i32* %9, align 4
  ret i32 %272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs41_attr_cache_lookup(i32, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @session_name_cache(i32) #2

declare dso_local i32 @file_time_to_nfs_time(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @nfs41_superblock_supported_attrs(%struct.TYPE_19__*, %struct.TYPE_23__*) #2

declare dso_local i32 @nfs41_delegation_return(i32, %struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @nfs41_open_stateid_arg(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @nfs41_setattr(i32, %struct.TYPE_24__*, i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @dprintf(i32, i8*, i32) #2

declare dso_local i32 @nfs_error_string(i32) #2

declare dso_local i32 @nfs_to_windows_error(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
