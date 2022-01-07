; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ProcessOp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ProcessOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_18__, %struct.TYPE_20__*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_20__*, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TREE_DEPTH_MAX = common dso_local global i32 0, align 4
@JSREPORT_ERROR = common dso_local global i32 0, align 4
@JSMSG_REGEXP_TOO_COMPLEX = common dso_local global i32 0, align 4
@REOP_FLAT = common dso_local global i8* null, align 8
@REG_FOLD = common dso_local global i32 0, align 4
@REOP_ALTPREREQ = common dso_local global i8* null, align 8
@REOP_CLASS = common dso_local global i8* null, align 8
@REOP_ALTPREREQ2 = common dso_local global i8* null, align 8
@JSMSG_MISSING_PAREN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__**, i32)* @ProcessOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessOp(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %286 [
    i32 133, label %14
    i32 130, label %252
    i32 132, label %277
    i32 131, label %277
    i32 128, label %277
    i32 129, label %277
  ]

14:                                               ; preds = %4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = call %struct.TYPE_20__* @NewRENode(%struct.TYPE_21__* %15, i32 133)
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %10, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %18 = icmp ne %struct.TYPE_20__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %289

21:                                               ; preds = %14
  %22 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %22, i64 %25
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %29, align 8
  %30 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %30, i64 %33
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %40, i64 %43
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TREE_DEPTH_MAX, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %21
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = load i32, i32* @JSREPORT_ERROR, align 4
  %53 = load i32, i32* @JSMSG_REGEXP_TOO_COMPLEX, align 4
  %54 = call i32 @ReportRegExpError(%struct.TYPE_21__* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %5, align 4
  br label %289

56:                                               ; preds = %21
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** @REOP_FLAT, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %56
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @REOP_FLAT, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %68
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @REG_FOLD, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %77
  %85 = load i8*, i8** @REOP_ALTPREREQ, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 13
  store i32 %114, i32* %112, align 4
  br label %251

115:                                              ; preds = %77, %68, %56
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** @REOP_CLASS, align 8
  %122 = icmp eq i8* %120, %121
  br i1 %122, label %123, label %179

123:                                              ; preds = %115
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 256
  br i1 %131, label %132, label %179

132:                                              ; preds = %123
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** @REOP_FLAT, align 8
  %140 = icmp eq i8* %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %132
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @REG_FOLD, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %141
  %149 = load i8*, i8** @REOP_ALTPREREQ2, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 13
  store i32 %178, i32* %176, align 4
  br label %250

179:                                              ; preds = %141, %132, %123, %115
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** @REOP_FLAT, align 8
  %186 = icmp eq i8* %184, %185
  br i1 %186, label %187, label %244

187:                                              ; preds = %179
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** @REOP_CLASS, align 8
  %195 = icmp eq i8* %193, %194
  br i1 %195, label %196, label %244

196:                                              ; preds = %187
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %204, 256
  br i1 %205, label %206, label %244

206:                                              ; preds = %196
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @REG_FOLD, align 4
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %206
  %214 = load i8*, i8** @REOP_ALTPREREQ2, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  store i32 %235, i32* %239, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 13
  store i32 %243, i32* %241, align 4
  br label %249

244:                                              ; preds = %206, %196, %187, %179
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 7
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %244, %213
  br label %250

250:                                              ; preds = %249, %148
  br label %251

251:                                              ; preds = %250, %84
  br label %287

252:                                              ; preds = %4
  %253 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sub nsw i32 %254, 2
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %253, i64 %256
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  store %struct.TYPE_20__* %258, %struct.TYPE_20__** %10, align 8
  br label %259

259:                                              ; preds = %264, %252
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %261, align 8
  %263 = icmp ne %struct.TYPE_20__* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  store %struct.TYPE_20__* %267, %struct.TYPE_20__** %10, align 8
  br label %259

268:                                              ; preds = %259
  %269 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sub nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %269, i64 %272
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %273, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  store %struct.TYPE_20__* %274, %struct.TYPE_20__** %276, align 8
  br label %287

277:                                              ; preds = %4, %4, %4, %4
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %279 = load i32, i32* @JSREPORT_ERROR, align 4
  %280 = load i32, i32* @JSMSG_MISSING_PAREN, align 4
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @ReportRegExpErrorHelper(%struct.TYPE_21__* %278, i32 %279, i32 %280, i32 %283)
  %285 = load i32, i32* @FALSE, align 4
  store i32 %285, i32* %5, align 4
  br label %289

286:                                              ; preds = %4
  br label %287

287:                                              ; preds = %286, %268, %251
  %288 = load i32, i32* @TRUE, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %287, %277, %50, %19
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local %struct.TYPE_20__* @NewRENode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ReportRegExpError(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ReportRegExpErrorHelper(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
