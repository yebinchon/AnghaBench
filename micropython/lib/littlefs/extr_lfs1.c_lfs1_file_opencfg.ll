; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_file_opencfg.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_file_opencfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, i32, i8* }
%struct.TYPE_28__ = type { i32, i64, i32, %struct.TYPE_28__*, %struct.TYPE_22__, %struct.lfs1_file_config*, i64, i32, i32* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.lfs1_file_config = type { i8* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_29__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_24__, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64 }

@LFS1_O_RDONLY = common dso_local global i32 0, align 4
@LFS1_ERR_NOENT = common dso_local global i32 0, align 4
@LFS1_O_CREAT = common dso_local global i32 0, align 4
@LFS1_TYPE_REG = common dso_local global i64 0, align 8
@LFS1_TYPE_DIR = common dso_local global i64 0, align 8
@LFS1_ERR_ISDIR = common dso_local global i32 0, align 4
@LFS1_O_EXCL = common dso_local global i32 0, align 4
@LFS1_ERR_EXIST = common dso_local global i32 0, align 4
@LFS1_O_TRUNC = common dso_local global i32 0, align 4
@LFS1_F_DIRTY = common dso_local global i32 0, align 4
@LFS1_ERR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs1_file_opencfg(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, i8* %2, i32 %3, %struct.lfs1_file_config* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lfs1_file_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_29__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.lfs1_file_config* %4, %struct.lfs1_file_config** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = and i32 %16, 3
  %18 = load i32, i32* @LFS1_O_RDONLY, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = call i32 @lfs1_deorphan(%struct.TYPE_27__* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %284

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %20, %5
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %35 = call i32 @lfs1_dir_find(%struct.TYPE_27__* %34, %struct.TYPE_30__* %13, %struct.TYPE_29__* %14, i8** %9)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @LFS1_ERR_NOENT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = call i32* @strchr(i8* %43, i8 signext 47)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %284

48:                                               ; preds = %42, %33
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @LFS1_ERR_NOENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @LFS1_O_CREAT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @LFS1_ERR_NOENT, align 4
  store i32 %58, i32* %6, align 4
  br label %284

59:                                               ; preds = %52
  %60 = load i64, i64* @LFS1_TYPE_REG, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  store i32 44, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @lfs1_dir_append(%struct.TYPE_27__* %79, %struct.TYPE_30__* %13, %struct.TYPE_29__* %14, i8* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %284

86:                                               ; preds = %59
  br label %104

87:                                               ; preds = %48
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LFS1_TYPE_DIR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @LFS1_ERR_ISDIR, align 4
  store i32 %94, i32* %6, align 4
  br label %284

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @LFS1_O_EXCL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @LFS1_ERR_EXIST, align 4
  store i32 %101, i32* %6, align 4
  br label %284

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.lfs1_file_config*, %struct.lfs1_file_config** %11, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 5
  store %struct.lfs1_file_config* %105, %struct.lfs1_file_config** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %111, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 8
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %119, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 6
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @LFS1_O_TRUNC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %104
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @LFS1_F_DIRTY, align 4
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  store i32 -1, i32* %164, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %104
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  store i32 -1, i32* %170, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 5
  %173 = load %struct.lfs1_file_config*, %struct.lfs1_file_config** %172, align 8
  %174 = icmp ne %struct.lfs1_file_config* %173, null
  br i1 %174, label %175, label %191

175:                                              ; preds = %167
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 5
  %178 = load %struct.lfs1_file_config*, %struct.lfs1_file_config** %177, align 8
  %179 = getelementptr inbounds %struct.lfs1_file_config, %struct.lfs1_file_config* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %175
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 5
  %185 = load %struct.lfs1_file_config*, %struct.lfs1_file_config** %184, align 8
  %186 = getelementptr inbounds %struct.lfs1_file_config, %struct.lfs1_file_config* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  store i8* %187, i8** %190, align 8
  br label %259

191:                                              ; preds = %175, %167
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %214

198:                                              ; preds = %191
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %200, align 8
  %202 = icmp ne %struct.TYPE_28__* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @LFS1_ERR_NOMEM, align 4
  store i32 %204, i32* %6, align 4
  br label %284

205:                                              ; preds = %198
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  store i8* %210, i8** %213, align 8
  br label %258

214:                                              ; preds = %191
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 3
  %219 = load i32, i32* @LFS1_O_RDONLY, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %214
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @lfs1_malloc(i32 %226)
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 1
  store i8* %227, i8** %230, align 8
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %221
  %237 = load i32, i32* @LFS1_ERR_NOMEM, align 4
  store i32 %237, i32* %6, align 4
  br label %284

238:                                              ; preds = %221
  br label %257

239:                                              ; preds = %214
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @lfs1_malloc(i32 %244)
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  store i8* %245, i8** %248, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %239
  %255 = load i32, i32* @LFS1_ERR_NOMEM, align 4
  store i32 %255, i32* %6, align 4
  br label %284

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256, %238
  br label %258

258:                                              ; preds = %257, %205
  br label %259

259:                                              ; preds = %258, %182
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 4
  %263 = call i32 @lfs1_cache_drop(%struct.TYPE_27__* %260, %struct.TYPE_22__* %262)
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 3
  %268 = load i32, i32* @LFS1_O_RDONLY, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %259
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 4
  %274 = call i32 @lfs1_cache_zero(%struct.TYPE_27__* %271, %struct.TYPE_22__* %273)
  br label %275

275:                                              ; preds = %270, %259
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %277, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 3
  store %struct.TYPE_28__* %278, %struct.TYPE_28__** %280, align 8
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 0
  store %struct.TYPE_28__* %281, %struct.TYPE_28__** %283, align 8
  store i32 0, i32* %6, align 4
  br label %284

284:                                              ; preds = %275, %254, %236, %203, %100, %93, %84, %57, %46, %30
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i32 @lfs1_deorphan(%struct.TYPE_27__*) #1

declare dso_local i32 @lfs1_dir_find(%struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_29__*, i8**) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lfs1_dir_append(%struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_29__*, i8*) #1

declare dso_local i8* @lfs1_malloc(i32) #1

declare dso_local i32 @lfs1_cache_drop(%struct.TYPE_27__*, %struct.TYPE_22__*) #1

declare dso_local i32 @lfs1_cache_zero(%struct.TYPE_27__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
