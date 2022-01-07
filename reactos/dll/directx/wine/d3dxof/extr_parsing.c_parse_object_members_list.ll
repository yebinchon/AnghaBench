; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object_members_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object_members_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_15__*, i64, i64, i64, %struct.TYPE_17__*, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, i64*, i64, i64, i32, i64* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Elements to consider: %u\0A\00", align 1
@TOKEN_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Found sub-object %s\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown template %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Enter %s\0A\00", align 1
@TOKEN_INTEGER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"%s = %d\0A\00", align 1
@TOKEN_WORD = common dso_local global i64 0, align 8
@TOKEN_DWORD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Token %d not supported\0A\00", align 1
@TOKEN_FLOAT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"%s = %f\0A\00", align 1
@TOKEN_LPSTR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@MAX_STRINGS_BUFFER = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Buffer too small %p %p %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Unexpected token %d\0A\00", align 1
@TOKEN_COMMA = common dso_local global i64 0, align 8
@TOKEN_SEMICOLON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @parse_object_members_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_object_members_list(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %13, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %14, i64 %17
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %612, %1
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %615

33:                                               ; preds = %27
  store i64 1, i64* %8, align 8
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  store i32 %41, i32* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i64 %52, i64* %60, align 8
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %128, %33
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %62, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %71
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = mul i64 %94, %93
  store i64 %95, i64* %8, align 8
  br label %127

96:                                               ; preds = %71
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %103, %121
  %123 = inttoptr i64 %122 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = mul i64 %125, %124
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %96, %83
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %7, align 8
  br label %61

131:                                              ; preds = %61
  %132 = load i64, i64* %8, align 8
  %133 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %132)
  store i64 0, i64* %7, align 8
  br label %134

134:                                              ; preds = %587, %131
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %590

138:                                              ; preds = %134
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TOKEN_NAME, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %277

148:                                              ; preds = %138
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 7
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %164)
  %166 = load i64, i64* @FALSE, align 8
  store i64 %166, i64* %9, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  store i64 0, i64* %10, align 8
  br label %171

171:                                              ; preds = %222, %148
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ult i64 %172, %177
  br i1 %178, label %179, label %225

179:                                              ; preds = %171
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 7
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i64, i64* %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @_strnicmp(i32 %194, i32 %203, i32 -1)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %221, label %206

206:                                              ; preds = %179
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 7
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i64 %212
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 8
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %215, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %216, i64 %219
  store %struct.TYPE_18__* %213, %struct.TYPE_18__** %220, align 8
  br label %225

221:                                              ; preds = %179
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %10, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %10, align 8
  br label %171

225:                                              ; preds = %206, %171
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 7
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %226, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %225
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %237)
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, -1
  store i64 %242, i64* %240, align 8
  %243 = load i64, i64* @FALSE, align 8
  store i64 %243, i64* %2, align 8
  br label %617

244:                                              ; preds = %225
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = load i64, i64* %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %260)
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %263 = load i64, i64* @FALSE, align 8
  %264 = call i32 @parse_object_parts(%struct.TYPE_19__* %262, i64 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %244
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, -1
  store i64 %270, i64* %268, align 8
  %271 = load i64, i64* @FALSE, align 8
  store i64 %271, i64* %2, align 8
  br label %617

272:                                              ; preds = %244
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, -1
  store i64 %276, i64* %274, align 8
  br label %553

277:                                              ; preds = %138
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %279 = call i64 @check_TOKEN(%struct.TYPE_19__* %278)
  store i64 %279, i64* %4, align 8
  %280 = load i64, i64* %4, align 8
  %281 = load i64, i64* @TOKEN_INTEGER, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %373

283:                                              ; preds = %277
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %285 = call i32 @get_TOKEN(%struct.TYPE_19__* %284)
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = load i64, i64* %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = inttoptr i64 %296 to i64*
  %298 = load i64, i64* %297, align 8
  %299 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %293, i64 %298)
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %301 = call i32 @check_buffer(%struct.TYPE_19__* %300, i32 4)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %283
  %304 = load i64, i64* @FALSE, align 8
  store i64 %304, i64* %2, align 8
  br label %617

305:                                              ; preds = %283
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = load i64, i64* %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @TOKEN_WORD, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %333

315:                                              ; preds = %305
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to i64*
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %323, %326
  %328 = inttoptr i64 %327 to i64*
  store i64 %320, i64* %328, align 8
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, 2
  store i64 %332, i64* %330, align 8
  br label %372

333:                                              ; preds = %305
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %335, align 8
  %337 = load i64, i64* %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @TOKEN_DWORD, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %333
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = inttoptr i64 %346 to i64*
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 5
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %351, %354
  %356 = inttoptr i64 %355 to i64*
  store i64 %348, i64* %356, align 8
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %359, 4
  store i64 %360, i64* %358, align 8
  br label %371

361:                                              ; preds = %333
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %363, align 8
  %365 = load i64, i64* %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %368)
  %370 = load i64, i64* @FALSE, align 8
  store i64 %370, i64* %2, align 8
  br label %617

371:                                              ; preds = %343
  br label %372

372:                                              ; preds = %371, %315
  br label %552

373:                                              ; preds = %277
  %374 = load i64, i64* %4, align 8
  %375 = load i64, i64* @TOKEN_FLOAT, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %439

377:                                              ; preds = %373
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %379 = call i32 @get_TOKEN(%struct.TYPE_19__* %378)
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %381, align 8
  %383 = load i64, i64* %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 6
  %390 = load i64, i64* %389, align 8
  %391 = inttoptr i64 %390 to float*
  %392 = load float, float* %391, align 4
  %393 = fpext float %392 to double
  %394 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %387, double %393)
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %396 = call i32 @check_buffer(%struct.TYPE_19__* %395, i32 4)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %377
  %399 = load i64, i64* @FALSE, align 8
  store i64 %399, i64* %2, align 8
  br label %617

400:                                              ; preds = %377
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %402, align 8
  %404 = load i64, i64* %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @TOKEN_FLOAT, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %428

410:                                              ; preds = %400
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 6
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to float*
  %415 = load float, float* %414, align 4
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 5
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %418, %421
  %423 = inttoptr i64 %422 to float*
  store float %415, float* %423, align 4
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = add nsw i64 %426, 4
  store i64 %427, i64* %425, align 8
  br label %438

428:                                              ; preds = %400
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %430, align 8
  %432 = load i64, i64* %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %435)
  %437 = load i64, i64* @FALSE, align 8
  store i64 %437, i64* %2, align 8
  br label %617

438:                                              ; preds = %410
  br label %551

439:                                              ; preds = %373
  %440 = load i64, i64* %4, align 8
  %441 = load i64, i64* @TOKEN_LPSTR, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %546

443:                                              ; preds = %439
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %445 = call i32 @get_TOKEN(%struct.TYPE_19__* %444)
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  %449 = load i64, i64* %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = sext i32 %452 to i64
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 6
  %456 = load i64, i64* %455, align 8
  %457 = inttoptr i64 %456 to i8*
  %458 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %453, i8* %457)
  %459 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %460 = call i32 @check_buffer(%struct.TYPE_19__* %459, i32 4)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %443
  %463 = load i64, i64* @FALSE, align 8
  store i64 %463, i64* %2, align 8
  br label %617

464:                                              ; preds = %443
  %465 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %465, i32 0, i32 1
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %466, align 8
  %468 = load i64, i64* %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %467, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 2
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @TOKEN_LPSTR, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %535

474:                                              ; preds = %464
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 6
  %477 = load i64, i64* %476, align 8
  %478 = inttoptr i64 %477 to i8*
  %479 = call i32 @strlen(i8* %478)
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %11, align 4
  %481 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = sub nsw i64 %483, %486
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = add nsw i64 %487, %489
  %491 = load i64, i64* @MAX_STRINGS_BUFFER, align 8
  %492 = icmp sgt i64 %490, %491
  br i1 %492, label %493, label %503

493:                                              ; preds = %474
  %494 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 2
  %499 = load i64, i64* %498, align 8
  %500 = load i32, i32* %11, align 4
  %501 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %496, i64 %499, i32 %500)
  %502 = load i64, i64* @FALSE, align 8
  store i64 %502, i64* %2, align 8
  br label %617

503:                                              ; preds = %474
  %504 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = inttoptr i64 %506 to i8*
  %508 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %508, i32 0, i32 6
  %510 = load i64, i64* %509, align 8
  %511 = inttoptr i64 %510 to i8*
  %512 = call i32 @strcpy(i8* %507, i8* %511)
  %513 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = inttoptr i64 %515 to i8*
  %517 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %517, i32 0, i32 5
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %520, i32 0, i32 4
  %522 = load i64, i64* %521, align 8
  %523 = add nsw i64 %519, %522
  %524 = inttoptr i64 %523 to i8**
  store i8* %516, i8** %524, align 8
  %525 = load i32, i32* %11, align 4
  %526 = sext i32 %525 to i64
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = add nsw i64 %529, %526
  store i64 %530, i64* %528, align 8
  %531 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %531, i32 0, i32 4
  %533 = load i64, i64* %532, align 8
  %534 = add i64 %533, 4
  store i64 %534, i64* %532, align 8
  br label %545

535:                                              ; preds = %464
  %536 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_16__*, %struct.TYPE_16__** %537, align 8
  %539 = load i64, i64* %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %538, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 2
  %542 = load i64, i64* %541, align 8
  %543 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %542)
  %544 = load i64, i64* @FALSE, align 8
  store i64 %544, i64* %2, align 8
  br label %617

545:                                              ; preds = %503
  br label %550

546:                                              ; preds = %439
  %547 = load i64, i64* %4, align 8
  %548 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %547)
  %549 = load i64, i64* @FALSE, align 8
  store i64 %549, i64* %2, align 8
  br label %617

550:                                              ; preds = %545
  br label %551

551:                                              ; preds = %550, %438
  br label %552

552:                                              ; preds = %551, %372
  br label %553

553:                                              ; preds = %552, %272
  %554 = load i64, i64* %9, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %586

556:                                              ; preds = %553
  %557 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %558 = call i64 @check_TOKEN(%struct.TYPE_19__* %557)
  store i64 %558, i64* %4, align 8
  %559 = load i64, i64* %4, align 8
  %560 = load i64, i64* @TOKEN_COMMA, align 8
  %561 = icmp ne i64 %559, %560
  br i1 %561, label %562, label %568

562:                                              ; preds = %556
  %563 = load i64, i64* %4, align 8
  %564 = load i64, i64* @TOKEN_SEMICOLON, align 8
  %565 = icmp ne i64 %563, %564
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = load i64, i64* @FALSE, align 8
  store i64 %567, i64* %2, align 8
  br label %617

568:                                              ; preds = %562, %556
  br label %569

569:                                              ; preds = %574, %568
  %570 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %571 = call i64 @check_TOKEN(%struct.TYPE_19__* %570)
  %572 = load i64, i64* @TOKEN_SEMICOLON, align 8
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %569
  %575 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %576 = call i32 @get_TOKEN(%struct.TYPE_19__* %575)
  br label %569

577:                                              ; preds = %569
  %578 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %579 = call i64 @check_TOKEN(%struct.TYPE_19__* %578)
  %580 = load i64, i64* @TOKEN_COMMA, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %582, label %585

582:                                              ; preds = %577
  %583 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %584 = call i32 @get_TOKEN(%struct.TYPE_19__* %583)
  br label %585

585:                                              ; preds = %582, %577
  br label %586

586:                                              ; preds = %585, %553
  br label %587

587:                                              ; preds = %586
  %588 = load i64, i64* %7, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %7, align 8
  br label %134

590:                                              ; preds = %134
  %591 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %592 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %591, i32 0, i32 4
  %593 = load i64, i64* %592, align 8
  %594 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %594, i32 0, i32 3
  %596 = load %struct.TYPE_15__*, %struct.TYPE_15__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %596, i32 0, i32 1
  %598 = load %struct.TYPE_14__*, %struct.TYPE_14__** %597, align 8
  %599 = load i64, i64* %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %598, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = sub nsw i64 %593, %602
  %604 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %605 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %604, i32 0, i32 3
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_14__*, %struct.TYPE_14__** %607, align 8
  %609 = load i64, i64* %5, align 8
  %610 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %608, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %610, i32 0, i32 1
  store i64 %603, i64* %611, align 8
  br label %612

612:                                              ; preds = %590
  %613 = load i64, i64* %5, align 8
  %614 = add i64 %613, 1
  store i64 %614, i64* %5, align 8
  br label %27

615:                                              ; preds = %27
  %616 = load i64, i64* @TRUE, align 8
  store i64 %616, i64* %2, align 8
  br label %617

617:                                              ; preds = %615, %566, %546, %535, %493, %462, %428, %398, %361, %303, %266, %233
  %618 = load i64, i64* %2, align 8
  ret i64 %618
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @_strnicmp(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i32 @parse_object_parts(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @check_TOKEN(%struct.TYPE_19__*) #1

declare dso_local i32 @get_TOKEN(%struct.TYPE_19__*) #1

declare dso_local i32 @check_buffer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @FIXME(i8*, i64, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
