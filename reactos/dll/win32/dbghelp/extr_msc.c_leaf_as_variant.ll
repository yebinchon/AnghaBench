; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_leaf_as_variant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_leaf_as_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i16, i8, i16, i16, i32, i64, i64, float }

@LF_NUMERIC = common dso_local global i16 0, align 2
@VT_UINT = common dso_local global i8* null, align 8
@VT_I1 = common dso_local global i8* null, align 8
@VT_I2 = common dso_local global i8* null, align 8
@VT_UI2 = common dso_local global i8* null, align 8
@VT_I4 = common dso_local global i8* null, align 8
@VT_UI4 = common dso_local global i8* null, align 8
@VT_I8 = common dso_local global i8* null, align 8
@VT_UI8 = common dso_local global i8* null, align 8
@VT_R4 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unsupported numeric leaf type %04x\0A\00", align 1
@VT_EMPTY = common dso_local global i8* null, align 8
@VT_R8 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown numeric leaf type %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i16*)* @leaf_as_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_as_variant(%struct.TYPE_9__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i16* %1, i16** %4, align 8
  %7 = load i16*, i16** %4, align 8
  %8 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %8, i16** %4, align 8
  %9 = load i16, i16* %7, align 2
  store i16 %9, i16* %5, align 2
  store i32 2, i32* %6, align 4
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @LF_NUMERIC, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i8*, i8** @VT_UINT, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i16, i16* %5, align 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i16 %21, i16* %26, align 8
  br label %267

27:                                               ; preds = %2
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  switch i32 %29, label %258 [
    i32 144, label %30
    i32 132, label %46
    i32 129, label %61
    i32 139, label %76
    i32 131, label %92
    i32 138, label %109
    i32 130, label %125
    i32 136, label %141
    i32 135, label %157
    i32 134, label %167
    i32 133, label %184
    i32 137, label %194
    i32 142, label %204
    i32 141, label %214
    i32 140, label %224
    i32 143, label %234
    i32 128, label %244
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i8*, i8** @VT_I1, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i16*, i16** %4, align 8
  %39 = bitcast i16* %38 to i8*
  %40 = load i8, i8* %39, align 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8 %40, i8* %45, align 2
  br label %266

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %6, align 4
  %49 = load i8*, i8** @VT_I2, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load i16*, i16** %4, align 8
  %55 = load i16, i16* %54, align 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i16 %55, i16* %60, align 4
  br label %266

61:                                               ; preds = %27
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  %64 = load i8*, i8** @VT_UI2, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %64, i8** %68, align 8
  %69 = load i16*, i16** %4, align 8
  %70 = load i16, i16* %69, align 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i16 %70, i16* %75, align 2
  br label %266

76:                                               ; preds = %27
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %6, align 4
  %79 = load i8*, i8** @VT_I4, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i8* %79, i8** %83, align 8
  %84 = load i16*, i16** %4, align 8
  %85 = bitcast i16* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  store i32 %86, i32* %91, align 8
  br label %266

92:                                               ; preds = %27
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %6, align 4
  %95 = load i8*, i8** @VT_UI4, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  %100 = load i16*, i16** %4, align 8
  %101 = bitcast i16* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i16
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i16 %103, i16* %108, align 2
  br label %266

109:                                              ; preds = %27
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 8
  store i32 %111, i32* %6, align 4
  %112 = load i8*, i8** @VT_I8, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i8* %112, i8** %116, align 8
  %117 = load i16*, i16** %4, align 8
  %118 = bitcast i16* %117 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i64 %119, i64* %124, align 8
  br label %266

125:                                              ; preds = %27
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 8
  store i32 %127, i32* %6, align 4
  %128 = load i8*, i8** @VT_UI8, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i8* %128, i8** %132, align 8
  %133 = load i16*, i16** %4, align 8
  %134 = bitcast i16* %133 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  store i64 %135, i64* %140, align 8
  br label %266

141:                                              ; preds = %27
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %6, align 4
  %144 = load i8*, i8** @VT_R4, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  %149 = load i16*, i16** %4, align 8
  %150 = bitcast i16* %149 to float*
  %151 = load float, float* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 7
  store float %151, float* %156, align 8
  br label %266

157:                                              ; preds = %27
  %158 = load i16, i16* %5, align 2
  %159 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %158)
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 6
  store i32 %161, i32* %6, align 4
  %162 = load i8*, i8** @VT_EMPTY, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i8* %162, i8** %166, align 8
  br label %266

167:                                              ; preds = %27
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 8
  store i32 %169, i32* %6, align 4
  %170 = load i8*, i8** @VT_R8, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i8* %170, i8** %174, align 8
  %175 = load i16*, i16** %4, align 8
  %176 = bitcast i16* %175 to double*
  %177 = load double, double* %176, align 8
  %178 = fptrunc double %177 to float
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 7
  store float %178, float* %183, align 8
  br label %266

184:                                              ; preds = %27
  %185 = load i16, i16* %5, align 2
  %186 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %185)
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 10
  store i32 %188, i32* %6, align 4
  %189 = load i8*, i8** @VT_EMPTY, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i8* %189, i8** %193, align 8
  br label %266

194:                                              ; preds = %27
  %195 = load i16, i16* %5, align 2
  %196 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %195)
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 16
  store i32 %198, i32* %6, align 4
  %199 = load i8*, i8** @VT_EMPTY, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i8* %199, i8** %203, align 8
  br label %266

204:                                              ; preds = %27
  %205 = load i16, i16* %5, align 2
  %206 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %205)
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 4
  store i32 %208, i32* %6, align 4
  %209 = load i8*, i8** @VT_EMPTY, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i8* %209, i8** %213, align 8
  br label %266

214:                                              ; preds = %27
  %215 = load i16, i16* %5, align 2
  %216 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %215)
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 8
  store i32 %218, i32* %6, align 4
  %219 = load i8*, i8** @VT_EMPTY, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  store i8* %219, i8** %223, align 8
  br label %266

224:                                              ; preds = %27
  %225 = load i16, i16* %5, align 2
  %226 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %225)
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 10
  store i32 %228, i32* %6, align 4
  %229 = load i8*, i8** @VT_EMPTY, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i8* %229, i8** %233, align 8
  br label %266

234:                                              ; preds = %27
  %235 = load i16, i16* %5, align 2
  %236 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %235)
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 16
  store i32 %238, i32* %6, align 4
  %239 = load i8*, i8** @VT_EMPTY, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  store i8* %239, i8** %243, align 8
  br label %266

244:                                              ; preds = %27
  %245 = load i16, i16* %5, align 2
  %246 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %245)
  %247 = load i16*, i16** %4, align 8
  %248 = load i16, i16* %247, align 2
  %249 = zext i16 %248 to i32
  %250 = add nsw i32 2, %249
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %6, align 4
  %253 = load i8*, i8** @VT_EMPTY, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store i8* %253, i8** %257, align 8
  br label %266

258:                                              ; preds = %27
  %259 = load i16, i16* %5, align 2
  %260 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %259)
  %261 = load i8*, i8** @VT_EMPTY, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  store i8* %261, i8** %265, align 8
  br label %266

266:                                              ; preds = %258, %244, %234, %224, %214, %204, %194, %184, %167, %157, %141, %125, %109, %92, %76, %61, %46, %30
  br label %267

267:                                              ; preds = %266, %15
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i32 @FIXME(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
