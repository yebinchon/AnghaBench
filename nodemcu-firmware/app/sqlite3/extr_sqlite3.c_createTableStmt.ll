; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_createTableStmt.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_createTableStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",\0A  \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CREATE TABLE \00", align 1
@createTableStmt.azType = internal constant [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c" TEXT\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" NUM\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" INT\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" REAL\00", align 1
@SQLITE_AFF_BLOB = common dso_local global i64 0, align 8
@SQLITE_AFF_TEXT = common dso_local global i64 0, align 8
@SQLITE_AFF_NUMERIC = common dso_local global i64 0, align 8
@SQLITE_AFF_INTEGER = common dso_local global i64 0, align 8
@SQLITE_AFF_REAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_4__*)* @createTableStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @createTableStmt(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @identLength(i32 %28)
  %30 = add nsw i64 %29, 5
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 1
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %13, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @identLength(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 50
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %53

52:                                               ; preds = %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 6, %56
  %58 = add nsw i32 35, %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @sqlite3DbMallocRaw(i32 0, i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @sqlite3OomFault(i32* %66)
  store i8* null, i8** %3, align 8
  br label %224

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %69, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @sqlite3Strlen30(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @identPut(i8* %74, i32* %7, i32 %77)
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 40, i8* %83, align 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %208, %68
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %213

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %96, i8* %100, i8* %101)
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = call i32 @sqlite3Strlen30(i8* %106)
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i8*, i8** %11, align 8
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @identPut(i8* %111, i32* %7, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %120 = sub nsw i64 %118, %119
  %121 = icmp sge i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %128 = sub nsw i64 %126, %127
  %129 = call i64 @ArraySize(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @createTableStmt.azType, i64 0, i64 0))
  %130 = icmp slt i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @testcase(i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SQLITE_AFF_TEXT, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @testcase(i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SQLITE_AFF_NUMERIC, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @testcase(i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SQLITE_AFF_INTEGER, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @testcase(i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SQLITE_AFF_REAL, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @testcase(i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %172 = sub nsw i64 %170, %171
  %173 = getelementptr inbounds [5 x i8*], [5 x i8*]* @createTableStmt.azType, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %15, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @sqlite3Strlen30(i8* %175)
  store i32 %176, i32* %14, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %93
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i64 @sqlite3AffinityType(i8* %186, i32 0)
  %188 = icmp eq i64 %185, %187
  br label %189

189:                                              ; preds = %182, %93
  %190 = phi i1 [ true, %93 ], [ %188, %182 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8*, i8** %15, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @memcpy(i8* %196, i8* %197, i32 %198)
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp sle i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 1
  store %struct.TYPE_5__* %212, %struct.TYPE_5__** %13, align 8
  br label %87

213:                                              ; preds = %87
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %216, i8* %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %221)
  %223 = load i8*, i8** %9, align 8
  store i8* %223, i8** %3, align 8
  br label %224

224:                                              ; preds = %213, %65
  %225 = load i8*, i8** %3, align 8
  ret i8* %225
}

declare dso_local i64 @identLength(i32) #1

declare dso_local i8* @sqlite3DbMallocRaw(i32, i32) #1

declare dso_local i32 @sqlite3OomFault(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @identPut(i8*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ArraySize(i8**) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @sqlite3AffinityType(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
