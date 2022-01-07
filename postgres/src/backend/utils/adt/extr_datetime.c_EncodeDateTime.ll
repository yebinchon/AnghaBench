; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeDateTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i64, i64, i32, i32, i32, i64 }

@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@DateOrder = common dso_local global i32 0, align 4
@DATEORDER_DMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %.*s\00", align 1
@MAXTZLEN = common dso_local global i8* null, align 8
@days = common dso_local global i8** null, align 8
@months = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" BC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EncodeDateTime(%struct.pg_tm* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.pg_tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.pg_tm* %0, %struct.pg_tm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %17 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %22 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

26:                                               ; preds = %20, %7
  %27 = phi i1 [ false, %7 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %31 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %275 [
    i32 131, label %37
    i32 128, label %37
    i32 129, label %104
    i32 132, label %198
    i32 130, label %274
  ]

37:                                               ; preds = %35, %35
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %40 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %45 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  br label %53

47:                                               ; preds = %37
  %48 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %49 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = sub nsw i64 0, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i64 [ %46, %43 ], [ %52, %47 ]
  %55 = trunc i64 %54 to i32
  %56 = call i8* @pg_ltostr_zeropad(i8* %38, i32 %55, i32 4)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  store i8 45, i8* %57, align 1
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %61 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @pg_ltostr_zeropad(i8* %59, i32 %62, i32 2)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  store i8 45, i8* %64, align 1
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %68 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @pg_ltostr_zeropad(i8* %66, i32 %69, i32 2)
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 131
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 32, i32 84
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %14, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %14, align 8
  %79 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %80 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @pg_ltostr_zeropad(i8* %78, i32 %81, i32 2)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %14, align 8
  store i8 58, i8* %83, align 1
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %87 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @pg_ltostr_zeropad(i8* %85, i32 %88, i32 2)
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %14, align 8
  store i8 58, i8* %90, align 1
  %92 = load i8*, i8** %14, align 8
  %93 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @AppendTimestampSeconds(i8* %92, %struct.pg_tm* %93, i32 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %53
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i8* @EncodeTimezone(i8* %99, i32 %100, i32 %101)
  store i8* %102, i8** %14, align 8
  br label %103

103:                                              ; preds = %98, %53
  br label %412

104:                                              ; preds = %35
  %105 = load i32, i32* @DateOrder, align 4
  %106 = load i32, i32* @DATEORDER_DMY, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %111 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @pg_ltostr_zeropad(i8* %109, i32 %112, i32 2)
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  store i8 47, i8* %114, align 1
  %116 = load i8*, i8** %14, align 8
  %117 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %118 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @pg_ltostr_zeropad(i8* %116, i32 %119, i32 2)
  store i8* %120, i8** %14, align 8
  br label %134

121:                                              ; preds = %104
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %124 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @pg_ltostr_zeropad(i8* %122, i32 %125, i32 2)
  store i8* %126, i8** %14, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %14, align 8
  store i8 47, i8* %127, align 1
  %129 = load i8*, i8** %14, align 8
  %130 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %131 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @pg_ltostr_zeropad(i8* %129, i32 %132, i32 2)
  store i8* %133, i8** %14, align 8
  br label %134

134:                                              ; preds = %121, %108
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %14, align 8
  store i8 47, i8* %135, align 1
  %137 = load i8*, i8** %14, align 8
  %138 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %139 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %144 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  br label %152

146:                                              ; preds = %134
  %147 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %148 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, 1
  %151 = sub nsw i64 0, %150
  br label %152

152:                                              ; preds = %146, %142
  %153 = phi i64 [ %145, %142 ], [ %151, %146 ]
  %154 = trunc i64 %153 to i32
  %155 = call i8* @pg_ltostr_zeropad(i8* %137, i32 %154, i32 4)
  store i8* %155, i8** %14, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %14, align 8
  store i8 32, i8* %156, align 1
  %158 = load i8*, i8** %14, align 8
  %159 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %160 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @pg_ltostr_zeropad(i8* %158, i32 %161, i32 2)
  store i8* %162, i8** %14, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %14, align 8
  store i8 58, i8* %163, align 1
  %165 = load i8*, i8** %14, align 8
  %166 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %167 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @pg_ltostr_zeropad(i8* %165, i32 %168, i32 2)
  store i8* %169, i8** %14, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %14, align 8
  store i8 58, i8* %170, align 1
  %172 = load i8*, i8** %14, align 8
  %173 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i8* @AppendTimestampSeconds(i8* %172, %struct.pg_tm* %173, i32 %174)
  store i8* %175, i8** %14, align 8
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %152
  %179 = load i8*, i8** %12, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load i8*, i8** %14, align 8
  %183 = load i8*, i8** @MAXTZLEN, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = call i32 @sprintf(i8* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %183, i8* %184)
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @strlen(i8* %186)
  %188 = load i8*, i8** %14, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %14, align 8
  br label %196

191:                                              ; preds = %178
  %192 = load i8*, i8** %14, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i8* @EncodeTimezone(i8* %192, i32 %193, i32 %194)
  store i8* %195, i8** %14, align 8
  br label %196

196:                                              ; preds = %191, %181
  br label %197

197:                                              ; preds = %196, %152
  br label %412

198:                                              ; preds = %35
  %199 = load i8*, i8** %14, align 8
  %200 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %201 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @pg_ltostr_zeropad(i8* %199, i32 %202, i32 2)
  store i8* %203, i8** %14, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %14, align 8
  store i8 46, i8* %204, align 1
  %206 = load i8*, i8** %14, align 8
  %207 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %208 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i8* @pg_ltostr_zeropad(i8* %206, i32 %209, i32 2)
  store i8* %210, i8** %14, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %14, align 8
  store i8 46, i8* %211, align 1
  %213 = load i8*, i8** %14, align 8
  %214 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %215 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %198
  %219 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %220 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  br label %228

222:                                              ; preds = %198
  %223 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %224 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %225, 1
  %227 = sub nsw i64 0, %226
  br label %228

228:                                              ; preds = %222, %218
  %229 = phi i64 [ %221, %218 ], [ %227, %222 ]
  %230 = trunc i64 %229 to i32
  %231 = call i8* @pg_ltostr_zeropad(i8* %213, i32 %230, i32 4)
  store i8* %231, i8** %14, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %14, align 8
  store i8 32, i8* %232, align 1
  %234 = load i8*, i8** %14, align 8
  %235 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %236 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @pg_ltostr_zeropad(i8* %234, i32 %237, i32 2)
  store i8* %238, i8** %14, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %14, align 8
  store i8 58, i8* %239, align 1
  %241 = load i8*, i8** %14, align 8
  %242 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %243 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @pg_ltostr_zeropad(i8* %241, i32 %244, i32 2)
  store i8* %245, i8** %14, align 8
  %246 = load i8*, i8** %14, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %14, align 8
  store i8 58, i8* %246, align 1
  %248 = load i8*, i8** %14, align 8
  %249 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i8* @AppendTimestampSeconds(i8* %248, %struct.pg_tm* %249, i32 %250)
  store i8* %251, i8** %14, align 8
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %228
  %255 = load i8*, i8** %12, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %254
  %258 = load i8*, i8** %14, align 8
  %259 = load i8*, i8** @MAXTZLEN, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @sprintf(i8* %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %259, i8* %260)
  %262 = load i8*, i8** %14, align 8
  %263 = call i32 @strlen(i8* %262)
  %264 = load i8*, i8** %14, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %14, align 8
  br label %272

267:                                              ; preds = %254
  %268 = load i8*, i8** %14, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %13, align 4
  %271 = call i8* @EncodeTimezone(i8* %268, i32 %269, i32 %270)
  store i8* %271, i8** %14, align 8
  br label %272

272:                                              ; preds = %267, %257
  br label %273

273:                                              ; preds = %272, %228
  br label %412

274:                                              ; preds = %35
  br label %275

275:                                              ; preds = %35, %274
  %276 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %277 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %281 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %284 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @date2j(i32 %279, i32 %282, i32 %285)
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i64 @j2day(i32 %287)
  %289 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %290 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %289, i32 0, i32 6
  store i64 %288, i64* %290, align 8
  %291 = load i8*, i8** %14, align 8
  %292 = load i8**, i8*** @days, align 8
  %293 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %294 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i8*, i8** %292, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @memcpy(i8* %291, i8* %297, i32 3)
  %299 = load i8*, i8** %14, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  store i8* %300, i8** %14, align 8
  %301 = load i8*, i8** %14, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %14, align 8
  store i8 32, i8* %301, align 1
  %303 = load i32, i32* @DateOrder, align 4
  %304 = load i32, i32* @DATEORDER_DMY, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %326

306:                                              ; preds = %275
  %307 = load i8*, i8** %14, align 8
  %308 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %309 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = call i8* @pg_ltostr_zeropad(i8* %307, i32 %310, i32 2)
  store i8* %311, i8** %14, align 8
  %312 = load i8*, i8** %14, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %14, align 8
  store i8 32, i8* %312, align 1
  %314 = load i8*, i8** %14, align 8
  %315 = load i8**, i8*** @months, align 8
  %316 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %317 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %315, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @memcpy(i8* %314, i8* %322, i32 3)
  %324 = load i8*, i8** %14, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 3
  store i8* %325, i8** %14, align 8
  br label %346

326:                                              ; preds = %275
  %327 = load i8*, i8** %14, align 8
  %328 = load i8**, i8*** @months, align 8
  %329 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %330 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %328, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @memcpy(i8* %327, i8* %335, i32 3)
  %337 = load i8*, i8** %14, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 3
  store i8* %338, i8** %14, align 8
  %339 = load i8*, i8** %14, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %14, align 8
  store i8 32, i8* %339, align 1
  %341 = load i8*, i8** %14, align 8
  %342 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %343 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = call i8* @pg_ltostr_zeropad(i8* %341, i32 %344, i32 2)
  store i8* %345, i8** %14, align 8
  br label %346

346:                                              ; preds = %326, %306
  %347 = load i8*, i8** %14, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %14, align 8
  store i8 32, i8* %347, align 1
  %349 = load i8*, i8** %14, align 8
  %350 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %351 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = call i8* @pg_ltostr_zeropad(i8* %349, i32 %352, i32 2)
  store i8* %353, i8** %14, align 8
  %354 = load i8*, i8** %14, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %14, align 8
  store i8 58, i8* %354, align 1
  %356 = load i8*, i8** %14, align 8
  %357 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %358 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = call i8* @pg_ltostr_zeropad(i8* %356, i32 %359, i32 2)
  store i8* %360, i8** %14, align 8
  %361 = load i8*, i8** %14, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %14, align 8
  store i8 58, i8* %361, align 1
  %363 = load i8*, i8** %14, align 8
  %364 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call i8* @AppendTimestampSeconds(i8* %363, %struct.pg_tm* %364, i32 %365)
  store i8* %366, i8** %14, align 8
  %367 = load i8*, i8** %14, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %14, align 8
  store i8 32, i8* %367, align 1
  %369 = load i8*, i8** %14, align 8
  %370 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %371 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = icmp sgt i64 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %346
  %375 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %376 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  br label %384

378:                                              ; preds = %346
  %379 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %380 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = sub nsw i64 %381, 1
  %383 = sub nsw i64 0, %382
  br label %384

384:                                              ; preds = %378, %374
  %385 = phi i64 [ %377, %374 ], [ %383, %378 ]
  %386 = trunc i64 %385 to i32
  %387 = call i8* @pg_ltostr_zeropad(i8* %369, i32 %386, i32 4)
  store i8* %387, i8** %14, align 8
  %388 = load i32, i32* %10, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %411

390:                                              ; preds = %384
  %391 = load i8*, i8** %12, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %403

393:                                              ; preds = %390
  %394 = load i8*, i8** %14, align 8
  %395 = load i8*, i8** @MAXTZLEN, align 8
  %396 = load i8*, i8** %12, align 8
  %397 = call i32 @sprintf(i8* %394, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %395, i8* %396)
  %398 = load i8*, i8** %14, align 8
  %399 = call i32 @strlen(i8* %398)
  %400 = load i8*, i8** %14, align 8
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  store i8* %402, i8** %14, align 8
  br label %410

403:                                              ; preds = %390
  %404 = load i8*, i8** %14, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %14, align 8
  store i8 32, i8* %404, align 1
  %406 = load i8*, i8** %14, align 8
  %407 = load i32, i32* %11, align 4
  %408 = load i32, i32* %13, align 4
  %409 = call i8* @EncodeTimezone(i8* %406, i32 %407, i32 %408)
  store i8* %409, i8** %14, align 8
  br label %410

410:                                              ; preds = %403, %393
  br label %411

411:                                              ; preds = %410, %384
  br label %412

412:                                              ; preds = %411, %273, %197, %103
  %413 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %414 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp sle i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %412
  %418 = load i8*, i8** %14, align 8
  %419 = call i32 @memcpy(i8* %418, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %420 = load i8*, i8** %14, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 3
  store i8* %421, i8** %14, align 8
  br label %422

422:                                              ; preds = %417, %412
  %423 = load i8*, i8** %14, align 8
  store i8 0, i8* %423, align 1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_ltostr_zeropad(i8*, i32, i32) #1

declare dso_local i8* @AppendTimestampSeconds(i8*, %struct.pg_tm*, i32) #1

declare dso_local i8* @EncodeTimezone(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @date2j(i32, i32, i32) #1

declare dso_local i64 @j2day(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
