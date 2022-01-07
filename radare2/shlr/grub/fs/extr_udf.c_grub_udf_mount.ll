; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_udf_data = type { i64, i64, i32, %struct.grub_udf_vrs, %struct.grub_udf_partmap**, %struct.grub_udf_vrs*, i32 }
%struct.grub_udf_vrs = type { i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.grub_udf_partmap = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.grub_udf_fileset = type { i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_6__, i32 }
%struct.grub_udf_avdp = type { i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_6__, i32 }
%struct.grub_udf_tag = type { i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_6__, i32 }

@sblocklist = common dso_local global i32* null, align 8
@GRUB_UDF_LOG2_BLKSZ = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"not an UDF filesystem\00", align 1
@GRUB_UDF_STD_IDENT_NSR03 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_NSR02 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_BEA01 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_BOOT2 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_CD001 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_CDW02 = common dso_local global i32 0, align 4
@GRUB_UDF_STD_IDENT_TEA01 = common dso_local global i32 0, align 4
@GRUB_UDF_TAG_IDENT_AVDP = common dso_local global i64 0, align 8
@GRUB_UDF_TAG_IDENT_PD = common dso_local global i64 0, align 8
@GRUB_UDF_MAX_PDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"too many PDs\00", align 1
@GRUB_UDF_TAG_IDENT_LVD = common dso_local global i64 0, align 8
@GRUB_UDF_MAX_PMS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"too many partition maps\00", align 1
@GRUB_UDF_PARTMAP_TYPE_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"partmap type not supported\00", align 1
@GRUB_UDF_TAG_IDENT_TD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid tag ident\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"can't find PD\00", align 1
@grub_errno = common dso_local global i64 0, align 8
@GRUB_UDF_TAG_IDENT_FSD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid fileset descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_udf_data* (i32)* @grub_udf_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_udf_data* @grub_udf_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_udf_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_udf_data*, align 8
  %5 = alloca %struct.grub_udf_fileset, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_udf_vrs, align 8
  %10 = alloca %struct.grub_udf_avdp, align 8
  %11 = alloca %struct.grub_udf_tag, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.grub_udf_partmap*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.grub_udf_data* null, %struct.grub_udf_data** %4, align 8
  %15 = load i32*, i32** @sblocklist, align 8
  store i32* %15, i32** %6, align 8
  %16 = call %struct.grub_udf_data* @grub_malloc(i32 96)
  store %struct.grub_udf_data* %16, %struct.grub_udf_data** %4, align 8
  %17 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %18 = icmp ne %struct.grub_udf_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.grub_udf_data* null, %struct.grub_udf_data** %2, align 8
  br label %386

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %23 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  store i32 16, i32* %7, align 4
  br label %24

24:                                               ; preds = %81, %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %28 = shl i32 %26, %27
  %29 = call i64 @grub_disk_read(i32 %25, i32 %28, i32 0, i32 48, %struct.grub_udf_vrs* %9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %33 = call i32 @grub_error(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GRUB_UDF_STD_IDENT_NSR03, align 4
  %38 = call i64 @grub_memcmp(i32 %36, i32 %37, i32 5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GRUB_UDF_STD_IDENT_NSR02, align 4
  %44 = call i64 @grub_memcmp(i32 %42, i32 %43, i32 5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %34
  br label %84

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GRUB_UDF_STD_IDENT_BEA01, align 4
  %51 = call i64 @grub_memcmp(i32 %49, i32 %50, i32 5)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GRUB_UDF_STD_IDENT_BOOT2, align 4
  %57 = call i64 @grub_memcmp(i32 %55, i32 %56, i32 5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GRUB_UDF_STD_IDENT_CD001, align 4
  %63 = call i64 @grub_memcmp(i32 %61, i32 %62, i32 5)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GRUB_UDF_STD_IDENT_CDW02, align 4
  %69 = call i64 @grub_memcmp(i32 %67, i32 %68, i32 5)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %9, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GRUB_UDF_STD_IDENT_TEA01, align 4
  %75 = call i64 @grub_memcmp(i32 %73, i32 %74, i32 5)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %79 = call i32 @grub_error(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

80:                                               ; preds = %71, %65, %59, %53, %47
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %24

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84, %118
  %86 = load i32, i32* %3, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %90 = shl i32 %88, %89
  %91 = bitcast %struct.grub_udf_avdp* %10 to %struct.grub_udf_vrs*
  %92 = call i64 @grub_disk_read(i32 %86, i32 %90, i32 0, i32 48, %struct.grub_udf_vrs* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %96 = call i32 @grub_error(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.grub_udf_avdp, %struct.grub_udf_avdp* %10, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @U16(i64 %100)
  %102 = load i64, i64* @GRUB_UDF_TAG_IDENT_AVDP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.grub_udf_avdp, %struct.grub_udf_avdp* %10, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @U32(i32 %107)
  store i32 %108, i32* %7, align 4
  br label %119

109:                                              ; preds = %97
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %6, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %117 = call i32 @grub_error(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

118:                                              ; preds = %109
  br label %85

119:                                              ; preds = %104
  %120 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %121 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %123 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %270
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %128 = shl i32 %126, %127
  %129 = bitcast %struct.grub_udf_tag* %11 to %struct.grub_udf_vrs*
  %130 = call i64 @grub_disk_read(i32 %125, i32 %128, i32 0, i32 48, %struct.grub_udf_vrs* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %134 = call i32 @grub_error(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @U16(i64 %137)
  %139 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @GRUB_UDF_TAG_IDENT_PD, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %135
  %145 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %146 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @GRUB_UDF_MAX_PDS, align 8
  %149 = icmp uge i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %152 = call i32 @grub_error(i32 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %383

153:                                              ; preds = %144
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %157 = shl i32 %155, %156
  %158 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %159 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %158, i32 0, i32 5
  %160 = load %struct.grub_udf_vrs*, %struct.grub_udf_vrs** %159, align 8
  %161 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %162 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %160, i64 %163
  %165 = call i64 @grub_disk_read(i32 %154, i32 %157, i32 0, i32 4, %struct.grub_udf_vrs* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %153
  %168 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %169 = call i32 @grub_error(i32 %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

170:                                              ; preds = %153
  %171 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %172 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %270

175:                                              ; preds = %135
  %176 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @GRUB_UDF_TAG_IDENT_LVD, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %253

180:                                              ; preds = %175
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %184 = shl i32 %182, %183
  %185 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %186 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %185, i32 0, i32 3
  %187 = call i64 @grub_disk_read(i32 %181, i32 %184, i32 0, i32 4, %struct.grub_udf_vrs* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %191 = call i32 @grub_error(i32 %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

192:                                              ; preds = %180
  %193 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %194 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %197 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @U32(i32 %199)
  %201 = sext i32 %200 to i64
  %202 = add i64 %195, %201
  %203 = load i64, i64* @GRUB_UDF_MAX_PMS, align 8
  %204 = icmp ugt i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %192
  %206 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %207 = call i32 @grub_error(i32 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %383

208:                                              ; preds = %192
  %209 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %210 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %210, i32 0, i32 6
  %212 = bitcast i32* %211 to %struct.grub_udf_partmap*
  store %struct.grub_udf_partmap* %212, %struct.grub_udf_partmap** %13, align 8
  %213 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %214 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @U32(i32 %216)
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %249, %208
  %219 = load i32, i32* %12, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %252

221:                                              ; preds = %218
  %222 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %13, align 8
  %223 = getelementptr inbounds %struct.grub_udf_partmap, %struct.grub_udf_partmap* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @GRUB_UDF_PARTMAP_TYPE_1, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %229 = call i32 @grub_error(i32 %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %383

230:                                              ; preds = %221
  %231 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %13, align 8
  %232 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %233 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %232, i32 0, i32 4
  %234 = load %struct.grub_udf_partmap**, %struct.grub_udf_partmap*** %233, align 8
  %235 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %236 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = getelementptr inbounds %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %234, i64 %237
  store %struct.grub_udf_partmap* %231, %struct.grub_udf_partmap** %239, align 8
  %240 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %13, align 8
  %241 = bitcast %struct.grub_udf_partmap* %240 to i8*
  %242 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %13, align 8
  %243 = getelementptr inbounds %struct.grub_udf_partmap, %struct.grub_udf_partmap* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @U32(i32 %244)
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %241, i64 %246
  %248 = bitcast i8* %247 to %struct.grub_udf_partmap*
  store %struct.grub_udf_partmap* %248, %struct.grub_udf_partmap** %13, align 8
  br label %249

249:                                              ; preds = %230
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %12, align 4
  br label %218

252:                                              ; preds = %218
  br label %269

253:                                              ; preds = %175
  %254 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @GRUB_UDF_TAG_IDENT_TD, align 8
  %257 = icmp sgt i64 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %260 = call i32 @grub_error(i32 %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %383

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.grub_udf_tag, %struct.grub_udf_tag* %11, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @GRUB_UDF_TAG_IDENT_TD, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %273

267:                                              ; preds = %261
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268, %252
  br label %270

270:                                              ; preds = %269, %170
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %124

273:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %274

274:                                              ; preds = %335, %273
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %278 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ult i64 %276, %279
  br i1 %280, label %281, label %338

281:                                              ; preds = %274
  store i32 0, i32* %14, align 4
  br label %282

282:                                              ; preds = %321, %281
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %286 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ult i64 %284, %287
  br i1 %288, label %289, label %324

289:                                              ; preds = %282
  %290 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %291 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %290, i32 0, i32 4
  %292 = load %struct.grub_udf_partmap**, %struct.grub_udf_partmap*** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %292, i64 %294
  %296 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %295, align 8
  %297 = getelementptr inbounds %struct.grub_udf_partmap, %struct.grub_udf_partmap* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %301 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %300, i32 0, i32 5
  %302 = load %struct.grub_udf_vrs*, %struct.grub_udf_vrs** %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %302, i64 %304
  %306 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %299, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %289
  %310 = load i32, i32* %14, align 4
  %311 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %312 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %311, i32 0, i32 4
  %313 = load %struct.grub_udf_partmap**, %struct.grub_udf_partmap*** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %313, i64 %315
  %317 = load %struct.grub_udf_partmap*, %struct.grub_udf_partmap** %316, align 8
  %318 = getelementptr inbounds %struct.grub_udf_partmap, %struct.grub_udf_partmap* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  store i32 %310, i32* %319, align 8
  br label %324

320:                                              ; preds = %289
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %282

324:                                              ; preds = %309, %282
  %325 = load i32, i32* %14, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %328 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %326, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %333 = call i32 @grub_error(i32 %332, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %383

334:                                              ; preds = %324
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %8, align 4
  br label %274

338:                                              ; preds = %274
  %339 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %340 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %341 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %347 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.grub_udf_vrs, %struct.grub_udf_vrs* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @grub_udf_get_block(%struct.grub_udf_data* %339, i32 %345, i32 %351)
  store i32 %352, i32* %7, align 4
  %353 = load i64, i64* @grub_errno, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %338
  br label %383

356:                                              ; preds = %338
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* @GRUB_UDF_LOG2_BLKSZ, align 4
  %360 = shl i32 %358, %359
  %361 = bitcast %struct.grub_udf_fileset* %5 to %struct.grub_udf_vrs*
  %362 = call i64 @grub_disk_read(i32 %357, i32 %360, i32 0, i32 48, %struct.grub_udf_vrs* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %356
  %365 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %366 = call i32 @grub_error(i32 %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %383

367:                                              ; preds = %356
  %368 = getelementptr inbounds %struct.grub_udf_fileset, %struct.grub_udf_fileset* %5, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i64 @U16(i64 %370)
  %372 = load i64, i64* @GRUB_UDF_TAG_IDENT_FSD, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %367
  %375 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %376 = call i32 @grub_error(i32 %375, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %383

377:                                              ; preds = %367
  %378 = getelementptr inbounds %struct.grub_udf_fileset, %struct.grub_udf_fileset* %5, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %381 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 8
  %382 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  store %struct.grub_udf_data* %382, %struct.grub_udf_data** %2, align 8
  br label %386

383:                                              ; preds = %374, %364, %355, %331, %258, %227, %205, %189, %167, %150, %132, %115, %94, %77, %31
  %384 = load %struct.grub_udf_data*, %struct.grub_udf_data** %4, align 8
  %385 = call i32 @grub_free(%struct.grub_udf_data* %384)
  store %struct.grub_udf_data* null, %struct.grub_udf_data** %2, align 8
  br label %386

386:                                              ; preds = %383, %377, %19
  %387 = load %struct.grub_udf_data*, %struct.grub_udf_data** %2, align 8
  ret %struct.grub_udf_data* %387
}

declare dso_local %struct.grub_udf_data* @grub_malloc(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_udf_vrs*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i64 @grub_memcmp(i32, i32, i32) #1

declare dso_local i64 @U16(i64) #1

declare dso_local i32 @U32(i32) #1

declare dso_local i32 @grub_udf_get_block(%struct.grub_udf_data*, i32, i32) #1

declare dso_local i32 @grub_free(%struct.grub_udf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
