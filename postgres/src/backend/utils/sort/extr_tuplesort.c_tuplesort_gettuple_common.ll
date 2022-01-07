; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_gettuple_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_gettuple_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"retrieved too many tuples in a bounded sort\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unexpected tape position\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bogus tuple length in backward scan\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid tuplesort state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)* @tuplesort_gettuple_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuplesort_gettuple_common(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = call i32 @WORKER(%struct.TYPE_15__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %353 [
    i32 129, label %21
    i32 128, label %120
    i32 130, label %292
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ true, %21 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %29
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i64 %59
  %61 = bitcast %struct.TYPE_16__* %51 to i8*
  %62 = bitcast %struct.TYPE_16__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  store i32 1, i32* %4, align 4
  br label %356

63:                                               ; preds = %42
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @ERROR, align 4
  %80 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %70, %63
  store i32 0, i32* %4, align 4
  br label %356

82:                                               ; preds = %29
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %356

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  br label %107

96:                                               ; preds = %88
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %356

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %116
  %118 = bitcast %struct.TYPE_16__* %108 to i8*
  %119 = bitcast %struct.TYPE_16__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  store i32 1, i32* %4, align 4
  br label %356

120:                                              ; preds = %3
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i1 [ true, %120 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @Assert(i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @Assert(i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @RELEASE_SLAB_SLOT(%struct.TYPE_15__* %141, i32* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 4
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %140, %128
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %148
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %356

157:                                              ; preds = %151
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @getlen(%struct.TYPE_15__* %158, i32 %161, i32 1)
  store i32 %162, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %157
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @READTUP(%struct.TYPE_15__* %165, %struct.TYPE_16__* %166, i32 %169, i32 %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  store i32* %174, i32** %176, align 8
  store i32 1, i32* %4, align 4
  br label %356

177:                                              ; preds = %157
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  store i32 1, i32* %179, align 8
  store i32 0, i32* %4, align 4
  br label %356

180:                                              ; preds = %148
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %180
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @LogicalTapeBackspace(i32 %188, i32 %191, i32 8)
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %356

196:                                              ; preds = %185
  %197 = load i64, i64* %9, align 8
  %198 = icmp ne i64 %197, 8
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @ERROR, align 4
  %201 = call i32 @elog(i32 %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  store i32 0, i32* %205, align 8
  br label %258

206:                                              ; preds = %180
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @LogicalTapeBackspace(i32 %209, i32 %212, i32 4)
  store i64 %213, i64* %9, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %356

217:                                              ; preds = %206
  %218 = load i64, i64* %9, align 8
  %219 = icmp ne i64 %218, 4
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @ERROR, align 4
  %222 = call i32 @elog(i32 %221, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @getlen(%struct.TYPE_15__* %225, i32 %228, i32 0)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %8, align 4
  %237 = zext i32 %236 to i64
  %238 = add i64 %237, 8
  %239 = trunc i64 %238 to i32
  %240 = call i64 @LogicalTapeBackspace(i32 %232, i32 %235, i32 %239)
  store i64 %240, i64* %9, align 8
  %241 = load i64, i64* %9, align 8
  %242 = load i32, i32* %8, align 4
  %243 = zext i32 %242 to i64
  %244 = add i64 %243, 4
  %245 = icmp eq i64 %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %356

247:                                              ; preds = %224
  %248 = load i64, i64* %9, align 8
  %249 = load i32, i32* %8, align 4
  %250 = zext i32 %249 to i64
  %251 = add i64 %250, 8
  %252 = icmp ne i64 %248, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %247
  %254 = load i32, i32* @ERROR, align 4
  %255 = call i32 @elog(i32 %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %247
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257, %203
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @getlen(%struct.TYPE_15__* %259, i32 %262, i32 0)
  store i32 %263, i32* %8, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i64 @LogicalTapeBackspace(i32 %266, i32 %269, i32 %270)
  store i64 %271, i64* %9, align 8
  %272 = load i64, i64* %9, align 8
  %273 = load i32, i32* %8, align 4
  %274 = zext i32 %273 to i64
  %275 = icmp ne i64 %272, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %258
  %277 = load i32, i32* @ERROR, align 4
  %278 = call i32 @elog(i32 %277, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %258
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @READTUP(%struct.TYPE_15__* %280, %struct.TYPE_16__* %281, i32 %284, i32 %285)
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 4
  store i32* %289, i32** %291, align 8
  store i32 1, i32* %4, align 4
  br label %356

292:                                              ; preds = %3
  %293 = load i32, i32* %6, align 4
  %294 = call i32 @Assert(i32 %293)
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @Assert(i32 %297)
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 4
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %311

303:                                              ; preds = %292
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 @RELEASE_SLAB_SLOT(%struct.TYPE_15__* %304, i32* %307)
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 4
  store i32* null, i32** %310, align 8
  br label %311

311:                                              ; preds = %303, %292
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %352

316:                                              ; preds = %311
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 5
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %10, align 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 5
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i64 0
  %328 = bitcast %struct.TYPE_16__* %323 to i8*
  %329 = bitcast %struct.TYPE_16__* %327 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %328, i8* align 8 %329, i64 16, i1 false)
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 4
  store i32* %332, i32** %334, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @mergereadnext(%struct.TYPE_15__* %335, i32 %336, %struct.TYPE_16__* %11)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %316
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %341 = call i32 @tuplesort_heap_delete_top(%struct.TYPE_15__* %340)
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %10, align 4
  %346 = call i32 @LogicalTapeRewindForWrite(i32 %344, i32 %345)
  store i32 1, i32* %4, align 4
  br label %356

347:                                              ; preds = %316
  %348 = load i32, i32* %10, align 4
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 %348, i32* %349, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %351 = call i32 @tuplesort_heap_replace_top(%struct.TYPE_15__* %350, %struct.TYPE_16__* %11)
  store i32 1, i32* %4, align 4
  br label %356

352:                                              ; preds = %311
  store i32 0, i32* %4, align 4
  br label %356

353:                                              ; preds = %3
  %354 = load i32, i32* @ERROR, align 4
  %355 = call i32 @elog(i32 %354, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %356

356:                                              ; preds = %353, %352, %347, %339, %279, %246, %216, %195, %177, %164, %156, %107, %105, %87, %81, %50
  %357 = load i32, i32* %4, align 4
  ret i32 %357
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WORKER(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @RELEASE_SLAB_SLOT(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @getlen(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @READTUP(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @LogicalTapeBackspace(i32, i32, i32) #1

declare dso_local i32 @mergereadnext(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @tuplesort_heap_delete_top(%struct.TYPE_15__*) #1

declare dso_local i32 @LogicalTapeRewindForWrite(i32, i32) #1

declare dso_local i32 @tuplesort_heap_replace_top(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
