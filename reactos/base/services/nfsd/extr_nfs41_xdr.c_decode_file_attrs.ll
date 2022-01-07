; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_file_attrs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_decode_file_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FATTR4_WORD0_SUPPORTED_ATTRS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FATTR4_WORD0_TYPE = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHANGE = common dso_local global i32 0, align 4
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@FATTR4_WORD0_LINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_SYMLINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_FSID = common dso_local global i32 0, align 4
@FATTR4_WORD0_LEASE_TIME = common dso_local global i32 0, align 4
@FATTR4_WORD0_RDATTR_ERROR = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@xdr_nfsace4 = common dso_local global i64 0, align 8
@FATTR4_WORD0_ACLSUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_ARCHIVE = common dso_local global i32 0, align 4
@FATTR4_WORD0_CANSETTIME = common dso_local global i32 0, align 4
@FATTR4_WORD0_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@FATTR4_WORD0_CASE_PRESERVING = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD0_FS_LOCATIONS = common dso_local global i32 0, align 4
@FATTR4_WORD0_HIDDEN = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXREAD = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXWRITE = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@FATTR4_WORD1_NUMLINKS = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_AVAIL = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_FREE = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_TOTAL = common dso_local global i32 0, align 4
@FATTR4_WORD1_SYSTEM = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_CREATE = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_DELTA = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@FATTR4_WORD1_DACL = common dso_local global i32 0, align 4
@FATTR4_WORD1_FS_LAYOUT_TYPE = common dso_local global i32 0, align 4
@FATTR4_WORD2_MDSTHRESHOLD = common dso_local global i32 0, align 4
@FATTR4_WORD2_SUPPATTR_EXCLCREAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @decode_file_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_file_attrs(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %409

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FATTR4_WORD0_SUPPORTED_ATTRS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 34
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xdr_bitmap4(i32* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %748

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FATTR4_WORD0_TYPE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 33
  %52 = call i32 @xdr_u_int32_t(i32* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %748

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FATTR4_WORD0_CHANGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 32
  %71 = call i32 @xdr_u_hyper(i32* %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %748

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %76
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 31
  %90 = call i32 @xdr_u_hyper(i32* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %4, align 4
  br label %748

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @FATTR4_WORD0_LINK_SUPPORT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 30
  %109 = call i32 @xdr_bool(i32* %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  br label %748

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FATTR4_WORD0_SYMLINK_SUPPORT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 29
  %128 = call i32 @xdr_bool(i32* %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %4, align 4
  br label %748

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %114
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FATTR4_WORD0_FSID, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = load i32*, i32** %5, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 28
  %147 = call i32 @xdr_fsid(i32* %144, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %4, align 4
  br label %748

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %133
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @FATTR4_WORD0_LEASE_TIME, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 27
  %166 = call i32 @xdr_u_int32_t(i32* %163, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %4, align 4
  br label %748

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @FATTR4_WORD0_RDATTR_ERROR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %171
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 26
  %185 = call i32 @xdr_u_int32_t(i32* %182, i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @FALSE, align 4
  store i32 %188, i32* %4, align 4
  br label %748

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %171
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %190
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %8, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = bitcast i32* %206 to i8**
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i64, i64* @xdr_nfsace4, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @xdr_array(i32* %204, i8** %207, i32* %209, i32 32, i32 4, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %200
  %215 = load i32, i32* @FALSE, align 4
  store i32 %215, i32* %4, align 4
  br label %748

216:                                              ; preds = %200
  br label %217

217:                                              ; preds = %216, %190
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @FATTR4_WORD0_ACLSUPPORT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %217
  %228 = load i32*, i32** %5, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 25
  %231 = call i32 @xdr_u_int32_t(i32* %228, i32* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %227
  %234 = load i32, i32* @FALSE, align 4
  store i32 %234, i32* %4, align 4
  br label %748

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %217
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FATTR4_WORD0_ARCHIVE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %236
  %247 = load i32*, i32** %5, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 24
  %250 = call i32 @xdr_bool(i32* %247, i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %246
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %4, align 4
  br label %748

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %236
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @FATTR4_WORD0_CANSETTIME, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %255
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 23
  %269 = call i32 @xdr_bool(i32* %266, i32* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %265
  %272 = load i32, i32* @FALSE, align 4
  store i32 %272, i32* %4, align 4
  br label %748

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %273, %255
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @FATTR4_WORD0_CASE_INSENSITIVE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %274
  %285 = load i32*, i32** %5, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 22
  %288 = call i32 @xdr_bool(i32* %285, i32* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %284
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %4, align 4
  br label %748

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292, %274
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @FATTR4_WORD0_CASE_PRESERVING, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %293
  %304 = load i32*, i32** %5, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 21
  %307 = call i32 @xdr_bool(i32* %304, i32* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %303
  %310 = load i32, i32* @FALSE, align 4
  store i32 %310, i32* %4, align 4
  br label %748

311:                                              ; preds = %303
  br label %312

312:                                              ; preds = %311, %293
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %312
  %323 = load i32*, i32** %5, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 20
  %326 = call i32 @xdr_u_hyper(i32* %323, i32* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %322
  %329 = load i32, i32* @FALSE, align 4
  store i32 %329, i32* %4, align 4
  br label %748

330:                                              ; preds = %322
  br label %331

331:                                              ; preds = %330, %312
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @FATTR4_WORD0_FS_LOCATIONS, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %331
  %342 = load i32*, i32** %5, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 19
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @decode_fs_locations4(i32* %342, i32 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %341
  %349 = load i32, i32* @FALSE, align 4
  store i32 %349, i32* %4, align 4
  br label %748

350:                                              ; preds = %341
  br label %351

351:                                              ; preds = %350, %331
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @FATTR4_WORD0_HIDDEN, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %351
  %362 = load i32*, i32** %5, align 8
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 18
  %365 = call i32 @xdr_bool(i32* %362, i32* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %361
  %368 = load i32, i32* @FALSE, align 4
  store i32 %368, i32* %4, align 4
  br label %748

369:                                              ; preds = %361
  br label %370

370:                                              ; preds = %369, %351
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @FATTR4_WORD0_MAXREAD, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %370
  %381 = load i32*, i32** %5, align 8
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 17
  %384 = call i32 @xdr_u_hyper(i32* %381, i32* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %380
  %387 = load i32, i32* @FALSE, align 4
  store i32 %387, i32* %4, align 4
  br label %748

388:                                              ; preds = %380
  br label %389

389:                                              ; preds = %388, %370
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @FATTR4_WORD0_MAXWRITE, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %389
  %400 = load i32*, i32** %5, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 16
  %403 = call i32 @xdr_u_hyper(i32* %400, i32* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %399
  %406 = load i32, i32* @FALSE, align 4
  store i32 %406, i32* %4, align 4
  br label %748

407:                                              ; preds = %399
  br label %408

408:                                              ; preds = %407, %389
  br label %409

409:                                              ; preds = %408, %3
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp sge i32 %413, 2
  br i1 %414, label %415, label %700

415:                                              ; preds = %409
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %415
  %426 = load i32*, i32** %5, align 8
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 15
  %429 = call i32 @xdr_u_int32_t(i32* %426, i32* %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %425
  %432 = load i32, i32* @FALSE, align 4
  store i32 %432, i32* %4, align 4
  br label %748

433:                                              ; preds = %425
  br label %434

434:                                              ; preds = %433, %415
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 1
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @FATTR4_WORD1_NUMLINKS, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %434
  %445 = load i32*, i32** %5, align 8
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 14
  %448 = call i32 @xdr_u_int32_t(i32* %445, i32* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %444
  %451 = load i32, i32* @FALSE, align 4
  store i32 %451, i32* %4, align 4
  br label %748

452:                                              ; preds = %444
  br label %453

453:                                              ; preds = %452, %434
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %480

463:                                              ; preds = %453
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 0
  %466 = load i8*, i8** %465, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 0
  store i8* %467, i8** %9, align 8
  %468 = load i32*, i32** %5, align 8
  %469 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %470 = call i32 @xdr_bytes(i32* %468, i8** %9, i64* %10, i32 %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %463
  %473 = load i32, i32* @FALSE, align 4
  store i32 %473, i32* %4, align 4
  br label %748

474:                                              ; preds = %463
  %475 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  %478 = load i64, i64* %10, align 8
  %479 = getelementptr inbounds i8, i8* %477, i64 %478
  store i8 0, i8* %479, align 1
  br label %480

480:                                              ; preds = %474, %453
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 1
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %507

490:                                              ; preds = %480
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 0
  store i8* %494, i8** %11, align 8
  %495 = load i32*, i32** %5, align 8
  %496 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %497 = call i32 @xdr_bytes(i32* %495, i8** %11, i64* %12, i32 %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %501, label %499

499:                                              ; preds = %490
  %500 = load i32, i32* @FALSE, align 4
  store i32 %500, i32* %4, align 4
  br label %748

501:                                              ; preds = %490
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 1
  %504 = load i8*, i8** %503, align 8
  %505 = load i64, i64* %12, align 8
  %506 = getelementptr inbounds i8, i8* %504, i64 %505
  store i8 0, i8* %506, align 1
  br label %507

507:                                              ; preds = %501, %480
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @FATTR4_WORD1_SPACE_AVAIL, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %526

517:                                              ; preds = %507
  %518 = load i32*, i32** %5, align 8
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 13
  %521 = call i32 @xdr_u_hyper(i32* %518, i32* %520)
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %525, label %523

523:                                              ; preds = %517
  %524 = load i32, i32* @FALSE, align 4
  store i32 %524, i32* %4, align 4
  br label %748

525:                                              ; preds = %517
  br label %526

526:                                              ; preds = %525, %507
  %527 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 1
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 1
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @FATTR4_WORD1_SPACE_FREE, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %545

536:                                              ; preds = %526
  %537 = load i32*, i32** %5, align 8
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 12
  %540 = call i32 @xdr_u_hyper(i32* %537, i32* %539)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %544, label %542

542:                                              ; preds = %536
  %543 = load i32, i32* @FALSE, align 4
  store i32 %543, i32* %4, align 4
  br label %748

544:                                              ; preds = %536
  br label %545

545:                                              ; preds = %544, %526
  %546 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* @FATTR4_WORD1_SPACE_TOTAL, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %564

555:                                              ; preds = %545
  %556 = load i32*, i32** %5, align 8
  %557 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 11
  %559 = call i32 @xdr_u_hyper(i32* %556, i32* %558)
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %563, label %561

561:                                              ; preds = %555
  %562 = load i32, i32* @FALSE, align 4
  store i32 %562, i32* %4, align 4
  br label %748

563:                                              ; preds = %555
  br label %564

564:                                              ; preds = %563, %545
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 1
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* @FATTR4_WORD1_SYSTEM, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %583

574:                                              ; preds = %564
  %575 = load i32*, i32** %5, align 8
  %576 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 10
  %578 = call i32 @xdr_bool(i32* %575, i32* %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %582, label %580

580:                                              ; preds = %574
  %581 = load i32, i32* @FALSE, align 4
  store i32 %581, i32* %4, align 4
  br label %748

582:                                              ; preds = %574
  br label %583

583:                                              ; preds = %582, %564
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 1
  %587 = load i32*, i32** %586, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 1
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %583
  %594 = load i32*, i32** %5, align 8
  %595 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 9
  %597 = call i32 @xdr_nfstime4(i32* %594, i32* %596)
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %601, label %599

599:                                              ; preds = %593
  %600 = load i32, i32* @FALSE, align 4
  store i32 %600, i32* %4, align 4
  br label %748

601:                                              ; preds = %593
  br label %602

602:                                              ; preds = %601, %583
  %603 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %604 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 1
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 1
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @FATTR4_WORD1_TIME_CREATE, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %621

612:                                              ; preds = %602
  %613 = load i32*, i32** %5, align 8
  %614 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %615 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i32 0, i32 8
  %616 = call i32 @xdr_nfstime4(i32* %613, i32* %615)
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %620, label %618

618:                                              ; preds = %612
  %619 = load i32, i32* @FALSE, align 4
  store i32 %619, i32* %4, align 4
  br label %748

620:                                              ; preds = %612
  br label %621

621:                                              ; preds = %620, %602
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %623, i32 0, i32 1
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 1
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* @FATTR4_WORD1_TIME_DELTA, align 4
  %629 = and i32 %627, %628
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %641

631:                                              ; preds = %621
  %632 = load i32*, i32** %5, align 8
  %633 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %634 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %633, i32 0, i32 7
  %635 = load i32*, i32** %634, align 8
  %636 = call i32 @xdr_nfstime4(i32* %632, i32* %635)
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %640, label %638

638:                                              ; preds = %631
  %639 = load i32, i32* @FALSE, align 4
  store i32 %639, i32* %4, align 4
  br label %748

640:                                              ; preds = %631
  br label %641

641:                                              ; preds = %640, %621
  %642 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %643 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %643, i32 0, i32 1
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 1
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %649 = and i32 %647, %648
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %660

651:                                              ; preds = %641
  %652 = load i32*, i32** %5, align 8
  %653 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 6
  %655 = call i32 @xdr_nfstime4(i32* %652, i32* %654)
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %659, label %657

657:                                              ; preds = %651
  %658 = load i32, i32* @FALSE, align 4
  store i32 %658, i32* %4, align 4
  br label %748

659:                                              ; preds = %651
  br label %660

660:                                              ; preds = %659, %641
  %661 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %662 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %662, i32 0, i32 1
  %664 = load i32*, i32** %663, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 1
  %666 = load i32, i32* %665, align 4
  %667 = load i32, i32* @FATTR4_WORD1_DACL, align 4
  %668 = and i32 %666, %667
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %680

670:                                              ; preds = %660
  %671 = load i32*, i32** %5, align 8
  %672 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %673 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %672, i32 0, i32 5
  %674 = load %struct.TYPE_9__*, %struct.TYPE_9__** %673, align 8
  %675 = call i32 @xdr_nfsdacl41(i32* %671, %struct.TYPE_9__* %674)
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %679, label %677

677:                                              ; preds = %670
  %678 = load i32, i32* @FALSE, align 4
  store i32 %678, i32* %4, align 4
  br label %748

679:                                              ; preds = %670
  br label %680

680:                                              ; preds = %679, %660
  %681 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %682 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %682, i32 0, i32 1
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 1
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @FATTR4_WORD1_FS_LAYOUT_TYPE, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %699

690:                                              ; preds = %680
  %691 = load i32*, i32** %5, align 8
  %692 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %693 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %692, i32 0, i32 4
  %694 = call i32 @xdr_layout_types(i32* %691, i32* %693)
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %698, label %696

696:                                              ; preds = %690
  %697 = load i32, i32* @FALSE, align 4
  store i32 %697, i32* %4, align 4
  br label %748

698:                                              ; preds = %690
  br label %699

699:                                              ; preds = %698, %680
  br label %700

700:                                              ; preds = %699, %409
  %701 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %702 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = icmp sge i32 %704, 3
  br i1 %705, label %706, label %746

706:                                              ; preds = %700
  %707 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %708 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %708, i32 0, i32 1
  %710 = load i32*, i32** %709, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 2
  %712 = load i32, i32* %711, align 4
  %713 = load i32, i32* @FATTR4_WORD2_MDSTHRESHOLD, align 4
  %714 = and i32 %712, %713
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %725

716:                                              ; preds = %706
  %717 = load i32*, i32** %5, align 8
  %718 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %719 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %718, i32 0, i32 3
  %720 = call i32 @xdr_mdsthreshold(i32* %717, i32* %719)
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %724, label %722

722:                                              ; preds = %716
  %723 = load i32, i32* @FALSE, align 4
  store i32 %723, i32* %4, align 4
  br label %748

724:                                              ; preds = %716
  br label %725

725:                                              ; preds = %724, %706
  %726 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %727 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %726, i32 0, i32 0
  %728 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %727, i32 0, i32 1
  %729 = load i32*, i32** %728, align 8
  %730 = getelementptr inbounds i32, i32* %729, i64 2
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* @FATTR4_WORD2_SUPPATTR_EXCLCREAT, align 4
  %733 = and i32 %731, %732
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %745

735:                                              ; preds = %725
  %736 = load i32*, i32** %5, align 8
  %737 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %738 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %737, i32 0, i32 2
  %739 = load i32, i32* %738, align 8
  %740 = call i32 @xdr_bitmap4(i32* %736, i32 %739)
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %744, label %742

742:                                              ; preds = %735
  %743 = load i32, i32* @FALSE, align 4
  store i32 %743, i32* %4, align 4
  br label %748

744:                                              ; preds = %735
  br label %745

745:                                              ; preds = %744, %725
  br label %746

746:                                              ; preds = %745, %700
  %747 = load i32, i32* @TRUE, align 4
  store i32 %747, i32* %4, align 4
  br label %748

748:                                              ; preds = %746, %742, %722, %696, %677, %657, %638, %618, %599, %580, %561, %542, %523, %499, %472, %450, %431, %405, %386, %367, %348, %328, %309, %290, %271, %252, %233, %214, %187, %168, %149, %130, %111, %92, %73, %54, %35
  %749 = load i32, i32* %4, align 4
  ret i32 %749
}

declare dso_local i32 @xdr_bitmap4(i32*, i32) #1

declare dso_local i32 @xdr_u_int32_t(i32*, i32*) #1

declare dso_local i32 @xdr_u_hyper(i32*, i32*) #1

declare dso_local i32 @xdr_bool(i32*, i32*) #1

declare dso_local i32 @xdr_fsid(i32*, i32*) #1

declare dso_local i32 @xdr_array(i32*, i8**, i32*, i32, i32, i32) #1

declare dso_local i32 @decode_fs_locations4(i32*, i32) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i64*, i32) #1

declare dso_local i32 @xdr_nfstime4(i32*, i32*) #1

declare dso_local i32 @xdr_nfsdacl41(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @xdr_layout_types(i32*, i32*) #1

declare dso_local i32 @xdr_mdsthreshold(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
