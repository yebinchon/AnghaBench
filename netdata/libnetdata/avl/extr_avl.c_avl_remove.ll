; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/avl/extr_avl.c_avl_remove.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/avl/extr_avl.c_avl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__** }

@AVL_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @avl_remove(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* @AVL_MAX_HEIGHT, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca %struct.TYPE_9__*, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i32, i32* @AVL_MAX_HEIGHT, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  store i32 -1, i32* %11, align 4
  br label %32

32:                                               ; preds = %60, %2
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %12, align 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %42
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %43, align 8
  %44 = load i8, i8* %12, align 1
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %28, i64 %47
  store i8 %44, i8* %48, align 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %50, align 8
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %51, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %546

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = call i32 %63(%struct.TYPE_9__* %64, %struct.TYPE_9__* %65)
  store i32 %66, i32* %11, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %5, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %71, i64 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp eq %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %67
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %78, i64 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %28, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %93
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %94, align 8
  br label %227

95:                                               ; preds = %67
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %14, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %103, i64 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = icmp eq %struct.TYPE_9__* %105, null
  br i1 %106, label %107, label %145

107:                                              ; preds = %95
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %110, i64 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %115, i64 0
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %28, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %129, i64 %135
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %136, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %28, i64 %138
  store i8 1, i8* %139, align 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %143
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %144, align 8
  br label %226

145:                                              ; preds = %95
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  store i32 %146, i32* %16, align 4
  br label %148

148:                                              ; preds = %169, %145
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %28, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %155
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %159, i64 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %15, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %164, i64 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = icmp eq %struct.TYPE_9__* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %148
  br label %171

169:                                              ; preds = %148
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %14, align 8
  br label %148

171:                                              ; preds = %168
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %174, i64 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %179, i64 0
  store %struct.TYPE_9__* %176, %struct.TYPE_9__** %180, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %183, i64 1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %188, i64 0
  store %struct.TYPE_9__* %185, %struct.TYPE_9__** %189, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %192, i64 1
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %197, i64 1
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %198, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %207
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %28, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %211, i64 %217
  store %struct.TYPE_9__* %204, %struct.TYPE_9__** %218, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %28, i64 %220
  store i8 1, i8* %221, align 1
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %224
  store %struct.TYPE_9__* %222, %struct.TYPE_9__** %225, align 8
  br label %226

226:                                              ; preds = %171, %107
  br label %227

227:                                              ; preds = %226, %75
  br label %228

228:                                              ; preds = %543, %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %9, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %544

232:                                              ; preds = %228
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %234
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  store %struct.TYPE_9__* %236, %struct.TYPE_9__** %17, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %28, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %393

243:                                              ; preds = %232
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %544

253:                                              ; preds = %243
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %391

258:                                              ; preds = %253
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %261, i64 1
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  store %struct.TYPE_9__* %263, %struct.TYPE_9__** %18, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %345

268:                                              ; preds = %258
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %271, i64 0
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  store %struct.TYPE_9__* %273, %struct.TYPE_9__** %19, align 8
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %276, i64 1
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %277, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %281, i64 0
  store %struct.TYPE_9__* %278, %struct.TYPE_9__** %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %286, i64 1
  store %struct.TYPE_9__* %283, %struct.TYPE_9__** %287, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %290, i64 0
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %295, i64 1
  store %struct.TYPE_9__* %292, %struct.TYPE_9__** %296, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %300, i64 0
  store %struct.TYPE_9__* %297, %struct.TYPE_9__** %301, align 8
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %311

306:                                              ; preds = %268
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  store i32 -1, i32* %310, align 8
  br label %327

311:                                              ; preds = %268
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  store i32 0, i32* %318, align 8
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  store i32 0, i32* %320, align 8
  br label %326

321:                                              ; preds = %311
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  store i32 1, i32* %323, align 8
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  br label %326

326:                                              ; preds = %321, %316
  br label %327

327:                                              ; preds = %326, %306
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  store i32 0, i32* %329, align 8
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %333
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sub nsw i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %28, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = zext i8 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %337, i64 %343
  store %struct.TYPE_9__* %330, %struct.TYPE_9__** %344, align 8
  br label %390

345:                                              ; preds = %258
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %348, i64 0
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %353, i64 1
  store %struct.TYPE_9__* %350, %struct.TYPE_9__** %354, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %358, i64 0
  store %struct.TYPE_9__* %355, %struct.TYPE_9__** %359, align 8
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %363
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sub nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %28, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %367, i64 %373
  store %struct.TYPE_9__* %360, %struct.TYPE_9__** %374, align 8
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %345
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 0
  store i32 -1, i32* %381, align 8
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  store i32 1, i32* %383, align 8
  br label %544

384:                                              ; preds = %345
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  store i32 0, i32* %386, align 8
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  store i32 0, i32* %388, align 8
  br label %389

389:                                              ; preds = %384
  br label %390

390:                                              ; preds = %389, %327
  br label %391

391:                                              ; preds = %390, %253
  br label %392

392:                                              ; preds = %391
  br label %543

393:                                              ; preds = %232
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %395, align 8
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp eq i32 %400, -1
  br i1 %401, label %402, label %403

402:                                              ; preds = %393
  br label %544

403:                                              ; preds = %393
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, -2
  br i1 %407, label %408, label %541

408:                                              ; preds = %403
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %411, i64 0
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  store %struct.TYPE_9__* %413, %struct.TYPE_9__** %20, align 8
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %495

418:                                              ; preds = %408
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %421, i64 1
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %422, align 8
  store %struct.TYPE_9__* %423, %struct.TYPE_9__** %21, align 8
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 1
  %426 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %426, i64 0
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %427, align 8
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %431, i64 1
  store %struct.TYPE_9__* %428, %struct.TYPE_9__** %432, align 8
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %436, i64 0
  store %struct.TYPE_9__* %433, %struct.TYPE_9__** %437, align 8
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %440, i64 1
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %441, align 8
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %445, i64 0
  store %struct.TYPE_9__* %442, %struct.TYPE_9__** %446, align 8
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %450, i64 1
  store %struct.TYPE_9__* %447, %struct.TYPE_9__** %451, align 8
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = icmp eq i32 %454, -1
  br i1 %455, label %456, label %461

456:                                              ; preds = %418
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i32 0, i32 0
  store i32 0, i32* %458, align 8
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 0
  store i32 1, i32* %460, align 8
  br label %477

461:                                              ; preds = %418
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %471

466:                                              ; preds = %461
  %467 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 0
  store i32 0, i32* %468, align 8
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 0
  store i32 0, i32* %470, align 8
  br label %476

471:                                              ; preds = %461
  %472 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %472, i32 0, i32 0
  store i32 -1, i32* %473, align 8
  %474 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %475 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %474, i32 0, i32 0
  store i32 0, i32* %475, align 8
  br label %476

476:                                              ; preds = %471, %466
  br label %477

477:                                              ; preds = %476, %456
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  store i32 0, i32* %479, align 8
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %481 = load i32, i32* %9, align 4
  %482 = sub nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %483
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %486, align 8
  %488 = load i32, i32* %9, align 4
  %489 = sub nsw i32 %488, 1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %28, i64 %490
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %487, i64 %493
  store %struct.TYPE_9__* %480, %struct.TYPE_9__** %494, align 8
  br label %540

495:                                              ; preds = %408
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 1
  %498 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %498, i64 1
  %500 = load %struct.TYPE_9__*, %struct.TYPE_9__** %499, align 8
  %501 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %502 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %503, i64 0
  store %struct.TYPE_9__* %500, %struct.TYPE_9__** %504, align 8
  %505 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %508, i64 1
  store %struct.TYPE_9__* %505, %struct.TYPE_9__** %509, align 8
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %511 = load i32, i32* %9, align 4
  %512 = sub nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %513
  %515 = load %struct.TYPE_9__*, %struct.TYPE_9__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %516, align 8
  %518 = load i32, i32* %9, align 4
  %519 = sub nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %28, i64 %520
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i64
  %524 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %517, i64 %523
  store %struct.TYPE_9__* %510, %struct.TYPE_9__** %524, align 8
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %495
  %530 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 0
  store i32 1, i32* %531, align 8
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %533 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %532, i32 0, i32 0
  store i32 -1, i32* %533, align 8
  br label %544

534:                                              ; preds = %495
  %535 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 0
  store i32 0, i32* %536, align 8
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 0
  store i32 0, i32* %538, align 8
  br label %539

539:                                              ; preds = %534
  br label %540

540:                                              ; preds = %539, %477
  br label %541

541:                                              ; preds = %540, %403
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542, %392
  br label %228

544:                                              ; preds = %529, %402, %379, %252, %228
  %545 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %545, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %13, align 4
  br label %546

546:                                              ; preds = %544, %58
  %547 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %547)
  %548 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %548
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
