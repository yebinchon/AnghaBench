; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_construct_errorCode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_construct_errorCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"POSTGRES\00", align 1
@PG_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"SQLSTATE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@UTF_BEGIN = common dso_local global i32 0, align 4
@UTF_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"datatype\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"cursor_position\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"funcname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @pltcl_construct_errorCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pltcl_construct_errorCode(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = call i32* (...) @Tcl_NewObj()
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %10 = call i32 @Tcl_ListObjAppendElement(i32* %7, i32* %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** @PG_VERSION, align 8
  %14 = call i32 @Tcl_NewStringObj(i8* %13, i32 -1)
  %15 = call i32 @Tcl_ListObjAppendElement(i32* %11, i32* %12, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %19 = call i32 @Tcl_ListObjAppendElement(i32* %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @unpack_sql_state(i32 %24)
  %26 = call i32 @Tcl_NewStringObj(i8* %25, i32 -1)
  %27 = call i32 @Tcl_ListObjAppendElement(i32* %20, i32* %21, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %31 = call i32 @Tcl_ListObjAppendElement(i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @pltcl_get_condition_name(i32 %36)
  %38 = call i32 @Tcl_NewStringObj(i8* %37, i32 -1)
  %39 = call i32 @Tcl_ListObjAppendElement(i32* %32, i32* %33, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %43 = call i32 @Tcl_ListObjAppendElement(i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* @UTF_BEGIN, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 13
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @UTF_E2U(i64 %49)
  %51 = call i32 @Tcl_NewStringObj(i8* %50, i32 -1)
  %52 = call i32 @Tcl_ListObjAppendElement(i32* %45, i32* %46, i32 %51)
  %53 = load i32, i32* @UTF_END, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %2
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %62 = call i32 @Tcl_ListObjAppendElement(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* @UTF_BEGIN, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @UTF_E2U(i64 %68)
  %70 = call i32 @Tcl_NewStringObj(i8* %69, i32 -1)
  %71 = call i32 @Tcl_ListObjAppendElement(i32* %64, i32* %65, i32 %70)
  %72 = load i32, i32* @UTF_END, align 4
  br label %73

73:                                               ; preds = %58, %2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %82 = call i32 @Tcl_ListObjAppendElement(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* @UTF_BEGIN, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @UTF_E2U(i64 %88)
  %90 = call i32 @Tcl_NewStringObj(i8* %89, i32 -1)
  %91 = call i32 @Tcl_ListObjAppendElement(i32* %84, i32* %85, i32 %90)
  %92 = load i32, i32* @UTF_END, align 4
  br label %93

93:                                               ; preds = %78, %73
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %102 = call i32 @Tcl_ListObjAppendElement(i32* %99, i32* %100, i32 %101)
  %103 = load i32, i32* @UTF_BEGIN, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @UTF_E2U(i64 %108)
  %110 = call i32 @Tcl_NewStringObj(i8* %109, i32 -1)
  %111 = call i32 @Tcl_ListObjAppendElement(i32* %104, i32* %105, i32 %110)
  %112 = load i32, i32* @UTF_END, align 4
  br label %113

113:                                              ; preds = %98, %93
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load i32*, i32** %3, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  %122 = call i32 @Tcl_ListObjAppendElement(i32* %119, i32* %120, i32 %121)
  %123 = load i32, i32* @UTF_BEGIN, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @UTF_E2U(i64 %128)
  %130 = call i32 @Tcl_NewStringObj(i8* %129, i32 -1)
  %131 = call i32 @Tcl_ListObjAppendElement(i32* %124, i32* %125, i32 %130)
  %132 = load i32, i32* @UTF_END, align 4
  br label %133

133:                                              ; preds = %118, %113
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %142 = call i32 @Tcl_ListObjAppendElement(i32* %139, i32* %140, i32 %141)
  %143 = load i32, i32* @UTF_BEGIN, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @UTF_E2U(i64 %148)
  %150 = call i32 @Tcl_NewStringObj(i8* %149, i32 -1)
  %151 = call i32 @Tcl_ListObjAppendElement(i32* %144, i32* %145, i32 %150)
  %152 = load i32, i32* @UTF_END, align 4
  br label %153

153:                                              ; preds = %138, %133
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load i32*, i32** %3, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %162 = call i32 @Tcl_ListObjAppendElement(i32* %159, i32* %160, i32 %161)
  %163 = load i32, i32* @UTF_BEGIN, align 4
  %164 = load i32*, i32** %3, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @UTF_E2U(i64 %168)
  %170 = call i32 @Tcl_NewStringObj(i8* %169, i32 -1)
  %171 = call i32 @Tcl_ListObjAppendElement(i32* %164, i32* %165, i32 %170)
  %172 = load i32, i32* @UTF_END, align 4
  br label %173

173:                                              ; preds = %158, %153
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load i32*, i32** %3, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %182 = call i32 @Tcl_ListObjAppendElement(i32* %179, i32* %180, i32 %181)
  %183 = load i32, i32* @UTF_BEGIN, align 4
  %184 = load i32*, i32** %3, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @UTF_E2U(i64 %188)
  %190 = call i32 @Tcl_NewStringObj(i8* %189, i32 -1)
  %191 = call i32 @Tcl_ListObjAppendElement(i32* %184, i32* %185, i32 %190)
  %192 = load i32, i32* @UTF_END, align 4
  br label %193

193:                                              ; preds = %178, %173
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %193
  %199 = load i32*, i32** %3, align 8
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  %202 = call i32 @Tcl_ListObjAppendElement(i32* %199, i32* %200, i32 %201)
  %203 = load i32, i32* @UTF_BEGIN, align 4
  %204 = load i32*, i32** %3, align 8
  %205 = load i32*, i32** %5, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i8* @UTF_E2U(i64 %208)
  %210 = call i32 @Tcl_NewStringObj(i8* %209, i32 -1)
  %211 = call i32 @Tcl_ListObjAppendElement(i32* %204, i32* %205, i32 %210)
  %212 = load i32, i32* @UTF_END, align 4
  br label %213

213:                                              ; preds = %198, %193
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %213
  %219 = load i32*, i32** %3, align 8
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %222 = call i32 @Tcl_ListObjAppendElement(i32* %219, i32* %220, i32 %221)
  %223 = load i32, i32* @UTF_BEGIN, align 4
  %224 = load i32*, i32** %3, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @UTF_E2U(i64 %228)
  %230 = call i32 @Tcl_NewStringObj(i8* %229, i32 -1)
  %231 = call i32 @Tcl_ListObjAppendElement(i32* %224, i32* %225, i32 %230)
  %232 = load i32, i32* @UTF_END, align 4
  br label %233

233:                                              ; preds = %218, %213
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load i32*, i32** %3, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %242 = call i32 @Tcl_ListObjAppendElement(i32* %239, i32* %240, i32 %241)
  %243 = load i32*, i32** %3, align 8
  %244 = load i32*, i32** %5, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @Tcl_NewIntObj(i64 %247)
  %249 = call i32 @Tcl_ListObjAppendElement(i32* %243, i32* %244, i32 %248)
  br label %250

250:                                              ; preds = %238, %233
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %250
  %256 = load i32*, i32** %3, align 8
  %257 = load i32*, i32** %5, align 8
  %258 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %259 = call i32 @Tcl_ListObjAppendElement(i32* %256, i32* %257, i32 %258)
  %260 = load i32, i32* @UTF_BEGIN, align 4
  %261 = load i32*, i32** %3, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = call i8* @UTF_E2U(i64 %265)
  %267 = call i32 @Tcl_NewStringObj(i8* %266, i32 -1)
  %268 = call i32 @Tcl_ListObjAppendElement(i32* %261, i32* %262, i32 %267)
  %269 = load i32, i32* @UTF_END, align 4
  br label %270

270:                                              ; preds = %255, %250
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %270
  %276 = load i32*, i32** %3, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 -1)
  %279 = call i32 @Tcl_ListObjAppendElement(i32* %276, i32* %277, i32 %278)
  %280 = load i32*, i32** %3, align 8
  %281 = load i32*, i32** %5, align 8
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @Tcl_NewIntObj(i64 %284)
  %286 = call i32 @Tcl_ListObjAppendElement(i32* %280, i32* %281, i32 %285)
  br label %287

287:                                              ; preds = %275, %270
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %287
  %293 = load i32*, i32** %3, align 8
  %294 = load i32*, i32** %5, align 8
  %295 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 -1)
  %296 = call i32 @Tcl_ListObjAppendElement(i32* %293, i32* %294, i32 %295)
  %297 = load i32, i32* @UTF_BEGIN, align 4
  %298 = load i32*, i32** %3, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i8* @UTF_E2U(i64 %302)
  %304 = call i32 @Tcl_NewStringObj(i8* %303, i32 -1)
  %305 = call i32 @Tcl_ListObjAppendElement(i32* %298, i32* %299, i32 %304)
  %306 = load i32, i32* @UTF_END, align 4
  br label %307

307:                                              ; preds = %292, %287
  %308 = load i32*, i32** %3, align 8
  %309 = load i32*, i32** %5, align 8
  %310 = call i32 @Tcl_SetObjErrorCode(i32* %308, i32* %309)
  ret void
}

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i8* @unpack_sql_state(i32) #1

declare dso_local i8* @pltcl_get_condition_name(i32) #1

declare dso_local i8* @UTF_E2U(i64) #1

declare dso_local i32 @Tcl_NewIntObj(i64) #1

declare dso_local i32 @Tcl_SetObjErrorCode(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
