; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_fs_btrfs.c_find_btrfs_disks.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_fs_btrfs.c_find_btrfs_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i64, i8*, i8*, i8*, i32, i32, %struct.TYPE_7__* }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BTRFS: Cannot open directory '%s'.\00", align 1
@DT_LNK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/%s/size\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s/%s/bcache/../queue/hw_sector_size\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s/%s/queue/hw_sector_size\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s/%s/../queue/hw_sector_size\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"BTRFS: failed to read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @find_btrfs_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_btrfs_disks(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @FILENAME_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %8, align 8
  br label %25

25:                                               ; preds = %31, %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %8, align 8
  br label %25

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = call i32* @opendir(i8* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %273

51:                                               ; preds = %35
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  store %struct.dirent* null, %struct.dirent** %11, align 8
  br label %54

54:                                               ; preds = %204, %197, %182, %76, %51
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.dirent* @readdir(i32* %55)
  store %struct.dirent* %56, %struct.dirent** %11, align 8
  %57 = icmp ne %struct.dirent* %56, null
  br i1 %57, label %58, label %217

58:                                               ; preds = %54
  %59 = load %struct.dirent*, %struct.dirent** %11, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DT_LNK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load %struct.dirent*, %struct.dirent** %11, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.dirent*, %struct.dirent** %11, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %64, %58
  br label %54

77:                                               ; preds = %70
  %78 = load %struct.dirent*, %struct.dirent** %11, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @simple_hash(i8* %80)
  store i64 %81, i64* %12, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %8, align 8
  br label %85

85:                                               ; preds = %105, %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.dirent*, %struct.dirent** %11, align 8
  %96 = getelementptr inbounds %struct.dirent, %struct.dirent* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %97, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %109

104:                                              ; preds = %94, %88
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 7
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %8, align 8
  br label %85

109:                                              ; preds = %103, %85
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = icmp ne %struct.TYPE_7__* %110, null
  br i1 %111, label %172, label %112

112:                                              ; preds = %109
  %113 = call %struct.TYPE_7__* @callocz(i32 56, i32 1)
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %8, align 8
  %114 = load %struct.dirent*, %struct.dirent** %11, align 8
  %115 = getelementptr inbounds %struct.dirent, %struct.dirent* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @strdupz(i8* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @simple_hash(i8* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @FILENAME_MAX, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = load %struct.dirent*, %struct.dirent** %11, align 8
  %129 = getelementptr inbounds %struct.dirent, %struct.dirent* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @snprintfz(i8* %19, i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %130)
  %132 = call i8* @strdupz(i8* %19)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @FILENAME_MAX, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = load %struct.dirent*, %struct.dirent** %11, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @snprintfz(i8* %19, i32 %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %136, i8* %139)
  %141 = call i32 @stat(i8* %19, %struct.stat* %13)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %160

143:                                              ; preds = %112
  %144 = load i32, i32* @FILENAME_MAX, align 4
  %145 = load i8*, i8** %5, align 8
  %146 = load %struct.dirent*, %struct.dirent** %11, align 8
  %147 = getelementptr inbounds %struct.dirent, %struct.dirent* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @snprintfz(i8* %19, i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %145, i8* %148)
  %150 = call i32 @stat(i8* %19, %struct.stat* %13)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load i32, i32* @FILENAME_MAX, align 4
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.dirent*, %struct.dirent** %11, align 8
  %156 = getelementptr inbounds %struct.dirent, %struct.dirent* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @snprintfz(i8* %19, i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %154, i8* %157)
  br label %159

159:                                              ; preds = %152, %143
  br label %160

160:                                              ; preds = %159, %112
  %161 = call i8* @strdupz(i8* %19)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store %struct.TYPE_7__* %169, %struct.TYPE_7__** %171, align 8
  br label %172

172:                                              ; preds = %160, %109
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 5
  %180 = call i64 @read_single_number_file(i8* %177, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  br label %54

189:                                              ; preds = %172
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 6
  %195 = call i64 @read_single_number_file(i8* %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %189
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %200)
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %54

204:                                              ; preds = %189
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %207, %210
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, %212
  store i64 %216, i64* %214, align 8
  br label %54

217:                                              ; preds = %54
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @closedir(i32* %218)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  store %struct.TYPE_7__* %222, %struct.TYPE_7__** %8, align 8
  br label %223

223:                                              ; preds = %267, %266, %217
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %225 = icmp ne %struct.TYPE_7__* %224, null
  br i1 %225, label %226, label %272

226:                                              ; preds = %223
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i64 @unlikely(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %226
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %240 = icmp eq %struct.TYPE_7__* %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %235
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  store %struct.TYPE_7__* %247, %struct.TYPE_7__** %249, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %251 = call i32 @btrfs_free_disk(%struct.TYPE_7__* %250)
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  store %struct.TYPE_7__* %254, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  br label %266

255:                                              ; preds = %235
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 7
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 7
  store %struct.TYPE_7__* %258, %struct.TYPE_7__** %260, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %262 = call i32 @btrfs_free_disk(%struct.TYPE_7__* %261)
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  store %struct.TYPE_7__* %265, %struct.TYPE_7__** %8, align 8
  br label %266

266:                                              ; preds = %255, %244
  br label %223

267:                                              ; preds = %226
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %268, %struct.TYPE_7__** %14, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 7
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  store %struct.TYPE_7__* %271, %struct.TYPE_7__** %8, align 8
  br label %223

272:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %273

273:                                              ; preds = %272, %50
  %274 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @simple_hash(i8*) #2

declare dso_local %struct.TYPE_7__* @callocz(i32, i32) #2

declare dso_local i8* @strdupz(i8*) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @read_single_number_file(i8*, i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @btrfs_free_disk(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
