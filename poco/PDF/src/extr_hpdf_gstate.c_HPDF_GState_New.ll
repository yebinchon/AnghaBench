; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_gstate.c_HPDF_GState_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_gstate.c_HPDF_GState_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, i32, i64, i32*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HPDF_LIMIT_MAX_GSTATE = common dso_local global i64 0, align 8
@HPDF_EXCEED_GSTATE_LIMIT = common dso_local global i32 0, align 4
@__const.HPDF_GState_New.DEF_MATRIX = private unnamed_addr constant %struct.TYPE_12__ { i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@HPDF_DEF_LINEWIDTH = common dso_local global i32 0, align 4
@HPDF_DEF_LINECAP = common dso_local global i32 0, align 4
@HPDF_DEF_LINEJOIN = common dso_local global i32 0, align 4
@HPDF_DEF_MITERLIMIT = common dso_local global i32 0, align 4
@HPDF_DEF_FLATNESS = common dso_local global i32 0, align 4
@HPDF_DEF_CHARSPACE = common dso_local global i32 0, align 4
@HPDF_DEF_WORDSPACE = common dso_local global i32 0, align 4
@HPDF_DEF_HSCALING = common dso_local global i32 0, align 4
@HPDF_DEF_LEADING = common dso_local global i32 0, align 4
@HPDF_DEF_RENDERING_MODE = common dso_local global i32 0, align 4
@HPDF_DEF_RISE = common dso_local global i32 0, align 4
@HPDF_CS_DEVICE_GRAY = common dso_local global i8* null, align 8
@HPDF_WMODE_HORIZONTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @HPDF_GState_New(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HPDF_LIMIT_MAX_GSTATE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPDF_EXCEED_GSTATE_LIMIT, align 4
  %24 = call i32 @HPDF_SetError(i32 %22, i32 %23, i32 0)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %245

25:                                               ; preds = %13, %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__* %26, i32 4)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %6, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %245

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %166

34:                                               ; preds = %31
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 25
  %39 = bitcast %struct.TYPE_12__* %36 to i8*
  %40 = bitcast %struct.TYPE_12__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 24, i1 false)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 24
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 23
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 23
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 22
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 22
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 21
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 21
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 20
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 20
  %65 = bitcast %struct.TYPE_15__* %62 to i8*
  %66 = bitcast %struct.TYPE_15__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 40, i1 false)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 19
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 18
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 17
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 16
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 15
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 14
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 12
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 12
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 11
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 10
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 10
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 9
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 9
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 8
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 7
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 6
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 4
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %243

166:                                              ; preds = %31
  %167 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 bitcast (%struct.TYPE_12__* @__const.HPDF_GState_New.DEF_MATRIX to i8*), i64 24, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %168 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %168, i8 0, i64 40, i1 false)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 25
  %171 = bitcast %struct.TYPE_12__* %170 to i8*
  %172 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 24, i1 false)
  %173 = load i32, i32* @HPDF_DEF_LINEWIDTH, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 24
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @HPDF_DEF_LINECAP, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 23
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @HPDF_DEF_LINEJOIN, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 22
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @HPDF_DEF_MITERLIMIT, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 21
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 20
  %187 = bitcast %struct.TYPE_15__* %186 to i8*
  %188 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 %188, i64 40, i1 false)
  %189 = load i32, i32* @HPDF_DEF_FLATNESS, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 19
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @HPDF_DEF_CHARSPACE, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 18
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @HPDF_DEF_WORDSPACE, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 17
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @HPDF_DEF_HSCALING, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 16
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @HPDF_DEF_LEADING, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 15
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @HPDF_DEF_RENDERING_MODE, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 14
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @HPDF_DEF_RISE, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 13
  store i32 %207, i32* %209, align 8
  %210 = load i8*, i8** @HPDF_CS_DEVICE_GRAY, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 12
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @HPDF_CS_DEVICE_GRAY, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 11
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 10
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 9
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 8
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 7
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 6
  store i64 0, i64* %229, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 5
  store i64 0, i64* %231, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  store i32* null, i32** %233, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 3
  store i64 0, i64* %235, align 8
  %236 = load i32, i32* @HPDF_WMODE_HORIZONTAL, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %240, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  store i64 1, i64* %242, align 8
  br label %243

243:                                              ; preds = %166, %34
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %244, %struct.TYPE_14__** %3, align 8
  br label %245

245:                                              ; preds = %243, %30, %19
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %246
}

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
