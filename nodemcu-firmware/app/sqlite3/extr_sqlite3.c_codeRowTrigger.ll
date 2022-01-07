; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeRowTrigger.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeRowTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_34__* }
%struct.TYPE_37__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i64, i32, i32, i32, %struct.TYPE_34__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_38__*, %struct.TYPE_36__*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }

@.str = private unnamed_addr constant [31 x i8] c"Start: %s.%s (%s %s%s%s ON %s)\00", align 1
@TRIGGER_BEFORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@TK_UPDATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TK_INSERT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@TK_DELETE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"-- TRIGGER %s\00", align 1
@P4_DYNAMIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"End: %s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_38__*, %struct.TYPE_35__*, %struct.TYPE_36__*, i32)* @codeRowTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @codeRowTrigger(%struct.TYPE_38__* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_39__, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %20 = call %struct.TYPE_38__* @sqlite3ParseToplevel(%struct.TYPE_38__* %19)
  store %struct.TYPE_38__* %20, %struct.TYPE_38__** %10, align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 14
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %11, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %16, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %31 = call %struct.TYPE_36__* @tableOfTrigger(%struct.TYPE_35__* %30)
  %32 = icmp eq %struct.TYPE_36__* %29, %31
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ true, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %42 = call i8* @sqlite3DbMallocZero(%struct.TYPE_33__* %41, i32 40)
  %43 = bitcast i8* %42 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %43, %struct.TYPE_34__** %12, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %45 = icmp ne %struct.TYPE_34__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %309

47:                                               ; preds = %33
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %49, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 4
  store %struct.TYPE_34__* %50, %struct.TYPE_34__** %52, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 5
  store %struct.TYPE_34__* %53, %struct.TYPE_34__** %55, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %57 = call i8* @sqlite3DbMallocZero(%struct.TYPE_33__* %56, i32 24)
  %58 = bitcast i8* %57 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %58, %struct.TYPE_37__** %16, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 3
  store %struct.TYPE_37__* %58, %struct.TYPE_37__** %60, align 8
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %62 = icmp ne %struct.TYPE_37__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %47
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %309

64:                                               ; preds = %47
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %69 = call i32 @sqlite3VdbeLinkSubProgram(i32 %67, %struct.TYPE_37__* %68)
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 2
  store %struct.TYPE_35__* %70, %struct.TYPE_35__** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 -1, i32* %79, align 4
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %85 = call %struct.TYPE_38__* @sqlite3StackAllocZero(%struct.TYPE_33__* %84, i32 88)
  store %struct.TYPE_38__* %85, %struct.TYPE_38__** %17, align 8
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %87 = icmp ne %struct.TYPE_38__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %64
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %5, align 8
  br label %309

89:                                               ; preds = %64
  %90 = call i32 @memset(%struct.TYPE_39__* %15, i32 0, i32 8)
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  store %struct.TYPE_38__* %91, %struct.TYPE_38__** %92, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i32 0, i32 14
  store %struct.TYPE_33__* %93, %struct.TYPE_33__** %95, align 8
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 13
  store %struct.TYPE_36__* %96, %struct.TYPE_36__** %98, align 8
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 12
  store %struct.TYPE_38__* %99, %struct.TYPE_38__** %101, align 8
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %105, i32 0, i32 11
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %118 = call i32* @sqlite3GetVdbe(%struct.TYPE_38__* %117)
  store i32* %118, i32** %14, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %274

121:                                              ; preds = %89
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @onErrorText(i32 %126)
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TRIGGER_BEFORE, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TK_UPDATE, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TK_INSERT, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TK_DELETE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i32*
  %161 = call i32 @VdbeComment(i32* %160)
  %162 = load i32*, i32** %14, align 8
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @sqlite3MPrintf(%struct.TYPE_33__* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @P4_DYNAMIC, align 4
  %169 = call i32 @sqlite3VdbeChangeP4(i32* %162, i32 -1, i32 %167, i32 %168)
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %121
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32* @sqlite3ExprDup(%struct.TYPE_33__* %175, i32 %178, i32 0)
  store i32* %179, i32** %13, align 8
  %180 = load i64, i64* @SQLITE_OK, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_39__* %15, i32* %181)
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %174
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @sqlite3VdbeMakeLabel(i32* %190)
  store i32 %191, i32* %18, align 4
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %196 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_38__* %192, i32* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %189, %184, %174
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = call i32 @sqlite3ExprDelete(%struct.TYPE_33__* %198, i32* %199)
  br label %201

201:                                              ; preds = %197, %121
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @codeTriggerProgram(%struct.TYPE_38__* %202, i32 %205, i32 %206)
  %208 = load i32, i32* %18, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @sqlite3VdbeResolveLabel(i32* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %201
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* @OP_Halt, align 4
  %217 = call i32 @sqlite3VdbeAddOp0(i32* %215, i32 %216)
  %218 = load i32*, i32** %14, align 8
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @onErrorText(i32 %222)
  %224 = sext i32 %223 to i64
  %225 = inttoptr i64 %224 to i32*
  %226 = call i32 @VdbeComment(i32* %225)
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %229 = call i32 @transferParseError(%struct.TYPE_38__* %227, %struct.TYPE_38__* %228)
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %214
  %235 = load i32*, i32** %14, align 8
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 4
  %240 = call i32 @sqlite3VdbeTakeOpArray(i32* %235, i32* %237, i32* %239)
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %234, %214
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %255 = bitcast %struct.TYPE_35__* %254 to i8*
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  %265 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  store i32 %267, i32* %271, align 4
  %272 = load i32*, i32** %14, align 8
  %273 = call i32 @sqlite3VdbeDelete(i32* %272)
  br label %274

274:                                              ; preds = %243, %89
  %275 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %274
  %280 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  br label %285

285:                                              ; preds = %279, %274
  %286 = phi i1 [ false, %274 ], [ %284, %279 ]
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  %289 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %290 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %289, i32 0, i32 5
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %290, align 8
  %292 = icmp ne %struct.TYPE_34__* %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %285
  %294 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  br label %299

299:                                              ; preds = %293, %285
  %300 = phi i1 [ false, %285 ], [ %298, %293 ]
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %304 = call i32 @sqlite3ParserReset(%struct.TYPE_38__* %303)
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %306 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %307 = call i32 @sqlite3StackFree(%struct.TYPE_33__* %305, %struct.TYPE_38__* %306)
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_34__* %308, %struct.TYPE_34__** %5, align 8
  br label %309

309:                                              ; preds = %299, %88, %63, %46
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  ret %struct.TYPE_34__* %310
}

declare dso_local %struct.TYPE_38__* @sqlite3ParseToplevel(%struct.TYPE_38__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_36__* @tableOfTrigger(%struct.TYPE_35__*) #1

declare dso_local i8* @sqlite3DbMallocZero(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @sqlite3VdbeLinkSubProgram(i32, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_38__* @sqlite3StackAllocZero(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_38__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @onErrorText(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3MPrintf(%struct.TYPE_33__*, i8*, i32) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_38__*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @codeTriggerProgram(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @transferParseError(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3VdbeTakeOpArray(i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeDelete(i32*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_33__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
