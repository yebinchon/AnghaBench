; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_encode_file_attrs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_encode_file_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32* }

@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD0_ARCHIVE = common dso_local global i32 0, align 4
@FATTR4_WORD0_HIDDEN = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@FATTR4_WORD1_SYSTEM = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS_SET = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_CREATE = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY_SET = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD2_MODE_SET_MASKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"encode_file_attrs() attempted to encode extra attributes in arr[%d]: encoded %d, but wanted %d.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @encode_file_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_file_attrs(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %17 = load i32, i32* @XDR_ENCODE, align 4
  %18 = call i32 @xdrmem_create(i32* %7, i8* %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = call i32 @ZeroMemory(%struct.TYPE_10__* %22, i32 4)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %142

36:                                               ; preds = %2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 13
  %49 = call i32 @xdr_u_hyper(i32* %7, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %445

53:                                               ; preds = %46
  %54 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %54
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %53, %36
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %62
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @xdr_nfsacl41(i32* %7, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %445

80:                                               ; preds = %72
  %81 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %81
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %80, %62
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FATTR4_WORD0_ARCHIVE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %89
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 11
  %102 = call i32 @xdr_bool(i32* %7, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %3, align 4
  br label %445

106:                                              ; preds = %99
  %107 = load i32, i32* @FATTR4_WORD0_ARCHIVE, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %107
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %106, %89
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FATTR4_WORD0_HIDDEN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %115
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 10
  %128 = call i32 @xdr_bool(i32* %7, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %445

132:                                              ; preds = %125
  %133 = load i32, i32* @FATTR4_WORD0_HIDDEN, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %133
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %132, %115
  br label %142

142:                                              ; preds = %141, %2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %146, 1
  br i1 %147, label %148, label %353

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %148
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = call i32 @xdr_u_int32_t(i32* %7, i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* @FALSE, align 4
  store i32 %164, i32* %3, align 4
  br label %445

165:                                              ; preds = %158
  %166 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %166
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %165, %148
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @FATTR4_WORD1_SYSTEM, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %174
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 9
  %187 = call i32 @xdr_bool(i32* %7, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %3, align 4
  br label %445

191:                                              ; preds = %184
  %192 = load i32, i32* @FATTR4_WORD1_SYSTEM, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %192
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %191, %174
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS_SET, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %229

210:                                              ; preds = %200
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @xdr_settime4(i32* %7, i32* %212, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %210
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %3, align 4
  br label %445

220:                                              ; preds = %210
  %221 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS_SET, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %221
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %220, %200
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @FATTR4_WORD1_TIME_CREATE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %229
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 7
  %242 = call i32 @xdr_nfstime4(i32* %7, i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @FALSE, align 4
  store i32 %245, i32* %3, align 4
  br label %445

246:                                              ; preds = %239
  %247 = load i32, i32* @FATTR4_WORD1_TIME_CREATE, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %247
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %246, %229
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY_SET, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %255
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 6
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @xdr_settime4(i32* %7, i32* %267, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %265
  %274 = load i32, i32* @FALSE, align 4
  store i32 %274, i32* %3, align 4
  br label %445

275:                                              ; preds = %265
  %276 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY_SET, align 4
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %276
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %275, %255
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %318

294:                                              ; preds = %284
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  store i8* %298, i8** %8, align 8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strlen(i8* %301)
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %9, align 8
  %304 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %305 = call i32 @xdr_bytes(i32* %7, i8** %8, i64* %9, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %294
  %308 = load i32, i32* @FALSE, align 4
  store i32 %308, i32* %3, align 4
  br label %445

309:                                              ; preds = %294
  %310 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %310
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %309, %284
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %352

328:                                              ; preds = %318
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  store i8* %332, i8** %10, align 8
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @strlen(i8* %335)
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %11, align 8
  %338 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %339 = call i32 @xdr_bytes(i32* %7, i8** %10, i64* %11, i32 %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %328
  %342 = load i32, i32* @FALSE, align 4
  store i32 %342, i32* %3, align 4
  br label %445

343:                                              ; preds = %328
  %344 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %344
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %343, %318
  br label %353

353:                                              ; preds = %352, %142
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ugt i64 %357, 2
  br i1 %358, label %359, label %393

359:                                              ; preds = %353
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @FATTR4_WORD2_MODE_SET_MASKED, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %392

369:                                              ; preds = %359
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 4
  %372 = call i32 @xdr_u_int32_t(i32* %7, i32* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %369
  %375 = load i32, i32* @FALSE, align 4
  store i32 %375, i32* %3, align 4
  br label %445

376:                                              ; preds = %369
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 3
  %379 = call i32 @xdr_u_int32_t(i32* %7, i32* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %376
  %382 = load i32, i32* @FALSE, align 4
  store i32 %382, i32* %3, align 4
  br label %445

383:                                              ; preds = %376
  %384 = load i32, i32* @FATTR4_WORD2_MODE_SET_MASKED, align 4
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 2
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %384
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %383, %359
  br label %393

393:                                              ; preds = %392, %353
  store i64 0, i64* %6, align 8
  br label %394

394:                                              ; preds = %437, %393
  %395 = load i64, i64* %6, align 8
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp ult i64 %395, %399
  br i1 %400, label %401, label %440

401:                                              ; preds = %394
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* %6, align 8
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = load i64, i64* %6, align 8
  %414 = getelementptr inbounds i32, i32* %412, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = icmp ne i32 %408, %415
  br i1 %416, label %417, label %436

417:                                              ; preds = %401
  %418 = load i64, i64* %6, align 8
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i64, i64* %6, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i64, i64* %6, align 8
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = sext i32 %433 to i64
  %435 = call i32 @eprintf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i64 %418, i64 %426, i64 %434)
  br label %436

436:                                              ; preds = %417, %401
  br label %437

437:                                              ; preds = %436
  %438 = load i64, i64* %6, align 8
  %439 = add i64 %438, 1
  store i64 %439, i64* %6, align 8
  br label %394

440:                                              ; preds = %394
  %441 = call i32 @xdr_getpos(i32* %7)
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 0
  store i32 %441, i32* %443, align 8
  %444 = load i32, i32* @TRUE, align 4
  store i32 %444, i32* %3, align 4
  br label %445

445:                                              ; preds = %440, %381, %374, %341, %307, %273, %244, %218, %189, %163, %130, %104, %78, %51
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xdr_u_hyper(i32*, i32*) #1

declare dso_local i32 @xdr_nfsacl41(i32*, i32) #1

declare dso_local i32 @xdr_bool(i32*, i32*) #1

declare dso_local i32 @xdr_u_int32_t(i32*, i32*) #1

declare dso_local i32 @xdr_settime4(i32*, i32*, i32) #1

declare dso_local i32 @xdr_nfstime4(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i64*, i32) #1

declare dso_local i32 @eprintf(i8*, i64, i64, i64) #1

declare dso_local i32 @xdr_getpos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
