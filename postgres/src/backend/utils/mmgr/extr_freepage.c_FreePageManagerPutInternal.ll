; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerPutInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerPutInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_39__ = type { i32, i64, %struct.TYPE_41__*, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_37__, %struct.TYPE_36__ }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__*, %struct.TYPE_40__* }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_40__ = type { i64, i64 }

@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"free page manager btree is corrupt\00", align 1
@FREE_PAGE_LEAF_MAGIC = common dso_local global i32 0, align 4
@FREE_PAGE_INTERNAL_MAGIC = common dso_local global i32 0, align 4
@FPM_ITEMS_PER_INTERNAL_PAGE = common dso_local global i64 0, align 8
@FPM_ITEMS_PER_LEAF_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_38__*, i64, i64, i32)* @FreePageManagerPutInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FreePageManagerPutInternal(%struct.TYPE_38__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_39__, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca %struct.TYPE_40__*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_41__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_41__*, align 8
  %25 = alloca %struct.TYPE_41__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_41__*, align 8
  %28 = alloca %struct.TYPE_41__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_41__*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_41__*, align 8
  %33 = alloca %struct.TYPE_41__*, align 8
  %34 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %36 = call i8* @fpm_segment_base(%struct.TYPE_38__* %35)
  store i8* %36, i8** %10, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %12, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %13, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %232

45:                                               ; preds = %4
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %57, i64 %58, i64 %59)
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  br label %768

64:                                               ; preds = %45
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @FreePagePopSpanLeader(%struct.TYPE_38__* %80, i64 %83)
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %85, i64 %88, i64 %91)
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %5, align 8
  br label %768

96:                                               ; preds = %64
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %97, %98
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %96
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @FreePagePopSpanLeader(%struct.TYPE_38__* %105, i64 %108)
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %118, i64 %121, i64 %124)
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %5, align 8
  br label %768

129:                                              ; preds = %96
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @relptr_is_null(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %137 = call %struct.TYPE_41__* @FreePageBtreeGetRecycled(%struct.TYPE_38__* %136)
  store %struct.TYPE_41__* %137, %struct.TYPE_41__** %17, align 8
  br label %156

138:                                              ; preds = %129
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i64 0, i64* %5, align 8
  br label %768

142:                                              ; preds = %138
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %144 = call i64 @FreePageManagerGetInternal(%struct.TYPE_38__* %143, i32 1, i64* %16)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i8*, i8** %10, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i64 @fpm_page_to_pointer(i8* %147, i64 %148)
  %150 = inttoptr i64 %149 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %150, %struct.TYPE_41__** %17, align 8
  br label %154

151:                                              ; preds = %142
  %152 = load i32, i32* @FATAL, align 4
  %153 = call i32 @elog(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %135
  %157 = load i32, i32* @FREE_PAGE_LEAF_MAGIC, align 4
  %158 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @relptr_store(i8* %164, i32 %168, %struct.TYPE_41__* null)
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %177, i32 0, i32 0
  store i64 %172, i64* %178, align 8
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %186, i32 0, i32 1
  store i64 %181, i64* %187, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %193 = call i32 @relptr_store(i8* %188, i32 %191, %struct.TYPE_41__* %192)
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 2
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_40__*, %struct.TYPE_40__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %156
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 0
  store i64 %209, i64* %215, align 8
  %216 = load i64, i64* %8, align 8
  %217 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %221, i32 0, i32 1
  store i64 %216, i64* %222, align 8
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %224 = load i64, i64* %7, align 8
  %225 = load i64, i64* %8, align 8
  %226 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %223, i64 %224, i64 %225)
  %227 = load i64, i64* %8, align 8
  store i64 %227, i64* %5, align 8
  br label %768

228:                                              ; preds = %156
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231, %4
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @FreePageBtreeSearch(%struct.TYPE_38__* %233, i64 %234, %struct.TYPE_39__* %11)
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = call i32 @Assert(i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %232
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %250, i64 %254
  store %struct.TYPE_40__* %255, %struct.TYPE_40__** %12, align 8
  br label %256

256:                                              ; preds = %245, %232
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %258, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %256
  %266 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %266, align 8
  store %struct.TYPE_41__* %267, %struct.TYPE_41__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %272 = load %struct.TYPE_41__*, %struct.TYPE_41__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_40__*, %struct.TYPE_40__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %275, i64 %278
  store %struct.TYPE_40__* %279, %struct.TYPE_40__** %13, align 8
  br label %294

280:                                              ; preds = %256
  %281 = load i8*, i8** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %282, align 8
  %284 = call %struct.TYPE_41__* @FreePageBtreeFindRightSibling(i8* %281, %struct.TYPE_41__* %283)
  store %struct.TYPE_41__* %284, %struct.TYPE_41__** %14, align 8
  store i64 0, i64* %15, align 8
  %285 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %286 = icmp ne %struct.TYPE_41__* %285, null
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_40__*, %struct.TYPE_40__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %291, i64 0
  store %struct.TYPE_40__* %292, %struct.TYPE_40__** %13, align 8
  br label %293

293:                                              ; preds = %287, %280
  br label %294

294:                                              ; preds = %293, %265
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %296 = icmp ne %struct.TYPE_40__* %295, null
  br i1 %296, label %297, label %400

297:                                              ; preds = %294
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %300, %303
  %305 = load i64, i64* %7, align 8
  %306 = icmp sge i64 %304, %305
  br i1 %306, label %307, label %400

307:                                              ; preds = %297
  store i32 0, i32* %18, align 4
  %308 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %310, %313
  %315 = load i64, i64* %7, align 8
  %316 = icmp eq i64 %314, %315
  %317 = zext i1 %316 to i32
  %318 = call i32 @Assert(i32 %317)
  %319 = load i64, i64* %7, align 8
  %320 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %319, %322
  %324 = load i64, i64* %8, align 8
  %325 = add nsw i64 %323, %324
  %326 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %326, i32 0, i32 1
  store i64 %325, i64* %327, align 8
  %328 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %329 = icmp ne %struct.TYPE_40__* %328, null
  br i1 %329, label %330, label %374

330:                                              ; preds = %307
  %331 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %333, %336
  %338 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp sge i64 %337, %340
  br i1 %341, label %342, label %374

342:                                              ; preds = %330
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %345, %348
  %350 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %351 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = icmp eq i64 %349, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @Assert(i32 %354)
  %356 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = sub nsw i64 %358, %361
  %363 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %362, %365
  %367 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %367, i32 0, i32 1
  store i64 %366, i64* %368, align 8
  %369 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @FreePagePopSpanLeader(%struct.TYPE_38__* %369, i64 %372)
  store i32 1, i32* %18, align 4
  br label %374

374:                                              ; preds = %342, %330, %307
  %375 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %376 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = call i32 @FreePagePopSpanLeader(%struct.TYPE_38__* %375, i64 %378)
  %380 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %380, i64 %383, i64 %386)
  %388 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %389 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %19, align 8
  %391 = load i32, i32* %18, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %374
  %394 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %395 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %396 = load i64, i64* %15, align 8
  %397 = call i32 @FreePageBtreeRemove(%struct.TYPE_38__* %394, %struct.TYPE_41__* %395, i64 %396)
  br label %398

398:                                              ; preds = %393, %374
  %399 = load i64, i64* %19, align 8
  store i64 %399, i64* %5, align 8
  br label %768

400:                                              ; preds = %297, %294
  %401 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %402 = icmp ne %struct.TYPE_40__* %401, null
  br i1 %402, label %403, label %455

403:                                              ; preds = %400
  %404 = load i64, i64* %7, align 8
  %405 = load i64, i64* %8, align 8
  %406 = add nsw i64 %404, %405
  %407 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %408 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp sge i64 %406, %409
  br i1 %410, label %411, label %455

411:                                              ; preds = %403
  %412 = load i64, i64* %7, align 8
  %413 = load i64, i64* %8, align 8
  %414 = add nsw i64 %412, %413
  %415 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp eq i64 %414, %417
  %419 = zext i1 %418 to i32
  %420 = call i32 @Assert(i32 %419)
  %421 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %422 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* %7, align 8
  %425 = sub nsw i64 %423, %424
  %426 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %427 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %425, %428
  store i64 %429, i64* %20, align 8
  %430 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %431 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %432 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = call i32 @FreePagePopSpanLeader(%struct.TYPE_38__* %430, i64 %433)
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %436 = load i64, i64* %7, align 8
  %437 = load i64, i64* %20, align 8
  %438 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %435, i64 %436, i64 %437)
  %439 = load i64, i64* %7, align 8
  %440 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %440, i32 0, i32 0
  store i64 %439, i64* %441, align 8
  %442 = load i64, i64* %20, align 8
  %443 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %444 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %443, i32 0, i32 1
  store i64 %442, i64* %444, align 8
  %445 = load i64, i64* %15, align 8
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %411
  %448 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %449 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %450 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__* %448, %struct.TYPE_41__* %449)
  br label %451

451:                                              ; preds = %447, %411
  %452 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %453 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %5, align 8
  br label %768

455:                                              ; preds = %403, %400
  %456 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp sgt i64 %457, 0
  br i1 %458, label %459, label %735

459:                                              ; preds = %455
  %460 = load i32, i32* %9, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  store i64 0, i64* %5, align 8
  br label %768

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = icmp sgt i64 %465, %468
  br i1 %469, label %470, label %507

470:                                              ; preds = %463
  %471 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = sub nsw i64 %472, %475
  store i64 %476, i64* %21, align 8
  store i64 0, i64* %23, align 8
  br label %477

477:                                              ; preds = %492, %470
  %478 = load i64, i64* %23, align 8
  %479 = load i64, i64* %21, align 8
  %480 = icmp slt i64 %478, %479
  br i1 %480, label %481, label %495

481:                                              ; preds = %477
  %482 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %483 = call i64 @FreePageManagerGetInternal(%struct.TYPE_38__* %482, i32 1, i64* %22)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %481
  %486 = load i32, i32* @FATAL, align 4
  %487 = call i32 @elog(i32 %486, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %488

488:                                              ; preds = %485, %481
  %489 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %490 = load i64, i64* %22, align 8
  %491 = call i32 @FreePageBtreeRecycle(%struct.TYPE_38__* %489, i64 %490)
  br label %492

492:                                              ; preds = %488
  %493 = load i64, i64* %23, align 8
  %494 = add nsw i64 %493, 1
  store i64 %494, i64* %23, align 8
  br label %477

495:                                              ; preds = %477
  %496 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %497 = load i64, i64* %7, align 8
  %498 = call i32 @FreePageBtreeSearch(%struct.TYPE_38__* %496, i64 %497, %struct.TYPE_39__* %11)
  %499 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %501, i32 0, i32 3
  %503 = load i64, i64* %502, align 8
  %504 = icmp sle i64 %500, %503
  %505 = zext i1 %504 to i32
  %506 = call i32 @Assert(i32 %505)
  br label %507

507:                                              ; preds = %495, %463
  %508 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = icmp sgt i64 %509, 0
  br i1 %510, label %511, label %734

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %513 = load %struct.TYPE_41__*, %struct.TYPE_41__** %512, align 8
  store %struct.TYPE_41__* %513, %struct.TYPE_41__** %24, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %25, align 8
  %514 = load i64, i64* %7, align 8
  store i64 %514, i64* %26, align 8
  br label %515

515:                                              ; preds = %725, %511
  %516 = load i8*, i8** %10, align 8
  %517 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %518 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = call %struct.TYPE_41__* @relptr_access(i8* %516, i32 %520)
  store %struct.TYPE_41__* %521, %struct.TYPE_41__** %28, align 8
  %522 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %523 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %524 = call %struct.TYPE_41__* @FreePageBtreeSplitPage(%struct.TYPE_38__* %522, %struct.TYPE_41__* %523)
  store %struct.TYPE_41__* %524, %struct.TYPE_41__** %27, align 8
  %525 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %526 = icmp eq %struct.TYPE_41__* %525, null
  br i1 %526, label %527, label %562

527:                                              ; preds = %515
  %528 = load i64, i64* %26, align 8
  %529 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %530 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %530, i32 0, i32 1
  %532 = load %struct.TYPE_40__*, %struct.TYPE_40__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %532, i64 0
  %534 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = icmp slt i64 %528, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %527
  %538 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  br label %541

539:                                              ; preds = %527
  %540 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  br label %541

541:                                              ; preds = %539, %537
  %542 = phi %struct.TYPE_41__* [ %538, %537 ], [ %540, %539 ]
  store %struct.TYPE_41__* %542, %struct.TYPE_41__** %30, align 8
  %543 = load %struct.TYPE_41__*, %struct.TYPE_41__** %30, align 8
  %544 = load i64, i64* %26, align 8
  %545 = call i64 @FreePageBtreeSearchLeaf(%struct.TYPE_41__* %543, i64 %544)
  store i64 %545, i64* %29, align 8
  %546 = load %struct.TYPE_41__*, %struct.TYPE_41__** %30, align 8
  %547 = load i64, i64* %29, align 8
  %548 = load i64, i64* %26, align 8
  %549 = load i64, i64* %8, align 8
  %550 = call i32 @FreePageBtreeInsertLeaf(%struct.TYPE_41__* %546, i64 %547, i64 %548, i64 %549)
  %551 = load i64, i64* %29, align 8
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %561

553:                                              ; preds = %541
  %554 = load %struct.TYPE_41__*, %struct.TYPE_41__** %30, align 8
  %555 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %556 = icmp eq %struct.TYPE_41__* %554, %555
  br i1 %556, label %557, label %561

557:                                              ; preds = %553
  %558 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %559 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %560 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__* %558, %struct.TYPE_41__* %559)
  br label %561

561:                                              ; preds = %557, %553, %541
  br label %605

562:                                              ; preds = %515
  %563 = load i64, i64* %26, align 8
  %564 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %565 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %565, i32 0, i32 0
  %567 = load %struct.TYPE_35__*, %struct.TYPE_35__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %567, i64 0
  %569 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = icmp slt i64 %563, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %562
  %573 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  br label %576

574:                                              ; preds = %562
  %575 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  br label %576

576:                                              ; preds = %574, %572
  %577 = phi %struct.TYPE_41__* [ %573, %572 ], [ %575, %574 ]
  store %struct.TYPE_41__* %577, %struct.TYPE_41__** %32, align 8
  %578 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %579 = load i64, i64* %26, align 8
  %580 = call i64 @FreePageBtreeSearchInternal(%struct.TYPE_41__* %578, i64 %579)
  store i64 %580, i64* %31, align 8
  %581 = load i8*, i8** %10, align 8
  %582 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %583 = load i64, i64* %31, align 8
  %584 = load i64, i64* %26, align 8
  %585 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %586 = call i32 @FreePageBtreeInsertInternal(i8* %581, %struct.TYPE_41__* %582, i64 %583, i64 %584, %struct.TYPE_41__* %585)
  %587 = load i8*, i8** %10, align 8
  %588 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %589 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %593 = call i32 @relptr_store(i8* %587, i32 %591, %struct.TYPE_41__* %592)
  %594 = load i64, i64* %31, align 8
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %604

596:                                              ; preds = %576
  %597 = load %struct.TYPE_41__*, %struct.TYPE_41__** %32, align 8
  %598 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %599 = icmp eq %struct.TYPE_41__* %597, %598
  br i1 %599, label %600, label %604

600:                                              ; preds = %596
  %601 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %602 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %603 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__* %601, %struct.TYPE_41__* %602)
  br label %604

604:                                              ; preds = %600, %596, %576
  br label %605

605:                                              ; preds = %604, %561
  %606 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %607 = icmp eq %struct.TYPE_41__* %606, null
  br i1 %607, label %608, label %686

608:                                              ; preds = %605
  %609 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %610 = call %struct.TYPE_41__* @FreePageBtreeGetRecycled(%struct.TYPE_38__* %609)
  store %struct.TYPE_41__* %610, %struct.TYPE_41__** %33, align 8
  %611 = load i32, i32* @FREE_PAGE_INTERNAL_MAGIC, align 4
  %612 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %613 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %613, i32 0, i32 2
  store i32 %611, i32* %614, align 8
  %615 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %616 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %616, i32 0, i32 0
  store i32 2, i32* %617, align 8
  %618 = load i8*, i8** %10, align 8
  %619 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %620 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = call i32 @relptr_store(i8* %618, i32 %622, %struct.TYPE_41__* null)
  %624 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %625 = call i8* @FreePageBtreeFirstKey(%struct.TYPE_41__* %624)
  %626 = ptrtoint i8* %625 to i64
  %627 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %628 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %628, i32 0, i32 0
  %630 = load %struct.TYPE_35__*, %struct.TYPE_35__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %630, i64 0
  %632 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %631, i32 0, i32 0
  store i64 %626, i64* %632, align 8
  %633 = load i8*, i8** %10, align 8
  %634 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %635 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %635, i32 0, i32 0
  %637 = load %struct.TYPE_35__*, %struct.TYPE_35__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %637, i64 0
  %639 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %642 = call i32 @relptr_store(i8* %633, i32 %640, %struct.TYPE_41__* %641)
  %643 = load i8*, i8** %10, align 8
  %644 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %645 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %649 = call i32 @relptr_store(i8* %643, i32 %647, %struct.TYPE_41__* %648)
  %650 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %651 = call i8* @FreePageBtreeFirstKey(%struct.TYPE_41__* %650)
  %652 = ptrtoint i8* %651 to i64
  %653 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %654 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %654, i32 0, i32 0
  %656 = load %struct.TYPE_35__*, %struct.TYPE_35__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %656, i64 1
  %658 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %657, i32 0, i32 0
  store i64 %652, i64* %658, align 8
  %659 = load i8*, i8** %10, align 8
  %660 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %661 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %661, i32 0, i32 0
  %663 = load %struct.TYPE_35__*, %struct.TYPE_35__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %663, i64 1
  %665 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 8
  %667 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %668 = call i32 @relptr_store(i8* %659, i32 %666, %struct.TYPE_41__* %667)
  %669 = load i8*, i8** %10, align 8
  %670 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %671 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %675 = call i32 @relptr_store(i8* %669, i32 %673, %struct.TYPE_41__* %674)
  %676 = load i8*, i8** %10, align 8
  %677 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %678 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %677, i32 0, i32 4
  %679 = load i32, i32* %678, align 8
  %680 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %681 = call i32 @relptr_store(i8* %676, i32 %679, %struct.TYPE_41__* %680)
  %682 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %683 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = add nsw i32 %684, 1
  store i32 %685, i32* %683, align 8
  br label %728

686:                                              ; preds = %605
  %687 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %688 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %688, i32 0, i32 0
  %690 = load %struct.TYPE_35__*, %struct.TYPE_35__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %690, i64 0
  %692 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %691, i32 0, i32 0
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %26, align 8
  %694 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %695 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = sext i32 %697 to i64
  %699 = load i64, i64* @FPM_ITEMS_PER_INTERNAL_PAGE, align 8
  %700 = icmp slt i64 %698, %699
  br i1 %700, label %701, label %725

701:                                              ; preds = %686
  %702 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %703 = load i64, i64* %26, align 8
  %704 = call i64 @FreePageBtreeSearchInternal(%struct.TYPE_41__* %702, i64 %703)
  store i64 %704, i64* %34, align 8
  %705 = load i8*, i8** %10, align 8
  %706 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %707 = load i64, i64* %34, align 8
  %708 = load i64, i64* %26, align 8
  %709 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %710 = call i32 @FreePageBtreeInsertInternal(i8* %705, %struct.TYPE_41__* %706, i64 %707, i64 %708, %struct.TYPE_41__* %709)
  %711 = load i8*, i8** %10, align 8
  %712 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %713 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %717 = call i32 @relptr_store(i8* %711, i32 %715, %struct.TYPE_41__* %716)
  %718 = load i64, i64* %34, align 8
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %724

720:                                              ; preds = %701
  %721 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %722 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  %723 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__* %721, %struct.TYPE_41__* %722)
  br label %724

724:                                              ; preds = %720, %701
  br label %728

725:                                              ; preds = %686
  %726 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  store %struct.TYPE_41__* %726, %struct.TYPE_41__** %25, align 8
  %727 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  store %struct.TYPE_41__* %727, %struct.TYPE_41__** %24, align 8
  br label %515

728:                                              ; preds = %724, %608
  %729 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %730 = load i64, i64* %7, align 8
  %731 = load i64, i64* %8, align 8
  %732 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %729, i64 %730, i64 %731)
  %733 = load i64, i64* %8, align 8
  store i64 %733, i64* %5, align 8
  br label %768

734:                                              ; preds = %507
  br label %735

735:                                              ; preds = %734, %455
  %736 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %737 = load %struct.TYPE_41__*, %struct.TYPE_41__** %736, align 8
  %738 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %737, i32 0, i32 0
  %739 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 8
  %741 = sext i32 %740 to i64
  %742 = load i64, i64* @FPM_ITEMS_PER_LEAF_PAGE, align 8
  %743 = icmp slt i64 %741, %742
  %744 = zext i1 %743 to i32
  %745 = call i32 @Assert(i32 %744)
  %746 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %747 = load %struct.TYPE_41__*, %struct.TYPE_41__** %746, align 8
  %748 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %749 = load i32, i32* %748, align 8
  %750 = sext i32 %749 to i64
  %751 = load i64, i64* %7, align 8
  %752 = load i64, i64* %8, align 8
  %753 = call i32 @FreePageBtreeInsertLeaf(%struct.TYPE_41__* %747, i64 %750, i64 %751, i64 %752)
  %754 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %755 = load i32, i32* %754, align 8
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %735
  %758 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %759 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 2
  %760 = load %struct.TYPE_41__*, %struct.TYPE_41__** %759, align 8
  %761 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__* %758, %struct.TYPE_41__* %760)
  br label %762

762:                                              ; preds = %757, %735
  %763 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %764 = load i64, i64* %7, align 8
  %765 = load i64, i64* %8, align 8
  %766 = call i32 @FreePagePushSpanLeader(%struct.TYPE_38__* %763, i64 %764, i64 %765)
  %767 = load i64, i64* %8, align 8
  store i64 %767, i64* %5, align 8
  br label %768

768:                                              ; preds = %762, %728, %462, %451, %398, %208, %141, %104, %74, %50
  %769 = load i64, i64* %5, align 8
  ret i64 %769
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_38__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FreePagePushSpanLeader(%struct.TYPE_38__*, i64, i64) #1

declare dso_local i32 @FreePagePopSpanLeader(%struct.TYPE_38__*, i64) #1

declare dso_local i32 @relptr_is_null(i32) #1

declare dso_local %struct.TYPE_41__* @FreePageBtreeGetRecycled(%struct.TYPE_38__*) #1

declare dso_local i64 @FreePageManagerGetInternal(%struct.TYPE_38__*, i32, i64*) #1

declare dso_local i64 @fpm_page_to_pointer(i8*, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @relptr_store(i8*, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @FreePageBtreeSearch(%struct.TYPE_38__*, i64, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_41__* @FreePageBtreeFindRightSibling(i8*, %struct.TYPE_41__*) #1

declare dso_local i32 @FreePageBtreeRemove(%struct.TYPE_38__*, %struct.TYPE_41__*, i64) #1

declare dso_local i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_38__*, %struct.TYPE_41__*) #1

declare dso_local i32 @FreePageBtreeRecycle(%struct.TYPE_38__*, i64) #1

declare dso_local %struct.TYPE_41__* @relptr_access(i8*, i32) #1

declare dso_local %struct.TYPE_41__* @FreePageBtreeSplitPage(%struct.TYPE_38__*, %struct.TYPE_41__*) #1

declare dso_local i64 @FreePageBtreeSearchLeaf(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @FreePageBtreeInsertLeaf(%struct.TYPE_41__*, i64, i64, i64) #1

declare dso_local i64 @FreePageBtreeSearchInternal(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @FreePageBtreeInsertInternal(i8*, %struct.TYPE_41__*, i64, i64, %struct.TYPE_41__*) #1

declare dso_local i8* @FreePageBtreeFirstKey(%struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
