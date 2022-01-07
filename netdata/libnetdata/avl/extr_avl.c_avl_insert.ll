; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/avl/extr_avl.c_avl_insert.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/avl/extr_avl.c_avl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__** }

@AVL_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @avl_insert(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %20 = load i32, i32* @AVL_MAX_HEIGHT, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = bitcast %struct.TYPE_9__** %25 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %6, align 8
  store i8 0, i8* %12, align 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %8, align 8
  br label %32

32:                                               ; preds = %63, %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %72

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = call i32 %38(%struct.TYPE_9__* %39, %struct.TYPE_9__* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %17, align 4
  br label %346

46:                                               ; preds = %35
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %7, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %16, align 4
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %12, align 1
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %23, i64 %61
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %9, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %66, align 8
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %67, i64 %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %8, align 8
  br label %32

72:                                               ; preds = %32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %75, align 8
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %76, i64 %78
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %10, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %86, i64 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = icmp eq %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %72
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %17, align 4
  br label %346

94:                                               ; preds = %72
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %118, %94
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = icmp ne %struct.TYPE_9__* %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %23, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  br label %117

112:                                              ; preds = %100
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %23, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %121, i64 %126
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %96

131:                                              ; preds = %96
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, -2
  br i1 %135, label %136, label %229

136:                                              ; preds = %131
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %139, i64 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %18, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, -1
  br i1 %145, label %146, label %166

146:                                              ; preds = %136
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %147, %struct.TYPE_9__** %11, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %150, i64 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %155, i64 0
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %160, i64 1
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %161, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  br label %228

166:                                              ; preds = %136
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %169, i64 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %11, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %174, i64 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %179, i64 1
  store %struct.TYPE_9__* %176, %struct.TYPE_9__** %180, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %184, i64 0
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %185, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %188, i64 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %193, i64 0
  store %struct.TYPE_9__* %190, %struct.TYPE_9__** %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %198, i64 1
  store %struct.TYPE_9__* %195, %struct.TYPE_9__** %199, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %204, label %209

204:                                              ; preds = %166
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i64 1, i64* %208, align 8
  br label %225

209:                                              ; preds = %166
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  br label %224

219:                                              ; preds = %209
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i64 -1, i64* %221, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %219, %214
  br label %225

225:                                              ; preds = %224, %204
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %225, %146
  br label %330

229:                                              ; preds = %131
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 2
  br i1 %233, label %234, label %327

234:                                              ; preds = %229
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %237, i64 1
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  store %struct.TYPE_9__* %239, %struct.TYPE_9__** %19, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 1
  br i1 %243, label %244, label %264

244:                                              ; preds = %234
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %245, %struct.TYPE_9__** %11, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %248, i64 0
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %253, i64 1
  store %struct.TYPE_9__* %250, %struct.TYPE_9__** %254, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %258, i64 0
  store %struct.TYPE_9__* %255, %struct.TYPE_9__** %259, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  store i64 0, i64* %261, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  store i64 0, i64* %263, align 8
  br label %326

264:                                              ; preds = %234
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %267, i64 0
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  store %struct.TYPE_9__* %269, %struct.TYPE_9__** %11, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %272, i64 1
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %277, i64 0
  store %struct.TYPE_9__* %274, %struct.TYPE_9__** %278, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %282, i64 1
  store %struct.TYPE_9__* %279, %struct.TYPE_9__** %283, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %286, i64 0
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %291, i64 1
  store %struct.TYPE_9__* %288, %struct.TYPE_9__** %292, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %296, i64 0
  store %struct.TYPE_9__* %293, %struct.TYPE_9__** %297, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %300, 1
  br i1 %301, label %302, label %307

302:                                              ; preds = %264
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  store i64 0, i64* %304, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  store i64 -1, i64* %306, align 8
  br label %323

307:                                              ; preds = %264
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  store i64 0, i64* %314, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  store i64 0, i64* %316, align 8
  br label %322

317:                                              ; preds = %307
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  store i64 1, i64* %319, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  store i64 0, i64* %321, align 8
  br label %322

322:                                              ; preds = %317, %312
  br label %323

323:                                              ; preds = %322, %302
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  store i64 0, i64* %325, align 8
  br label %326

326:                                              ; preds = %323, %244
  br label %329

327:                                              ; preds = %229
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %328, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %17, align 4
  br label %346

329:                                              ; preds = %326
  br label %330

330:                                              ; preds = %329, %228
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %333, align 8
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %338, i64 0
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = icmp ne %struct.TYPE_9__* %335, %340
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %334, i64 %343
  store %struct.TYPE_9__* %331, %struct.TYPE_9__** %344, align 8
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %345, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %17, align 4
  br label %346

346:                                              ; preds = %330, %327, %92, %44
  %347 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %348
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
