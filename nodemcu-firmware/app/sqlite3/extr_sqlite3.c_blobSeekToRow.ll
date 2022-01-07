; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_blobSeekToRow.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_blobSeekToRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32*, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8* }

@MEM_Int = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot open value of type %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"no such rowid: %lld\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i8**)* @blobSeekToRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blobSeekToRow(%struct.TYPE_14__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %9, align 8
  %16 = load i32, i32* @MEM_Int, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i8* %22, i8** %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = call i32 @sqlite3VdbeExec(%struct.TYPE_13__* %36)
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @sqlite3_step(i64 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SQLITE_ROW, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %147

47:                                               ; preds = %43
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %50, i64 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %10, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %47
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %60
  %72 = phi i32 [ %69, %60 ], [ 0, %70 ]
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @testcase(i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = icmp eq i32 %84, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @testcase(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 12
  br i1 %93, label %94, label %116

94:                                               ; preds = %71
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %106

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 7
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %100 ], [ %105, %101 ]
  %108 = call i8* @sqlite3MPrintf(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %107)
  store i8* %108, i8** %8, align 8
  %109 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @sqlite3_finalize(i64 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  br label %146

116:                                              ; preds = %71
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %123, %126
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @sqlite3VdbeSerialTypeLen(i32 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @sqlite3BtreeIncrblobCursor(i32 %144)
  br label %146

146:                                              ; preds = %116, %106
  br label %147

147:                                              ; preds = %146, %43
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @SQLITE_ROW, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @SQLITE_OK, align 4
  store i32 %152, i32* %7, align 4
  br label %186

153:                                              ; preds = %147
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %153
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @sqlite3_finalize(i64 %161)
  store i32 %162, i32* %7, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @SQLITE_OK, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i8* @sqlite3MPrintf(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  store i8* %173, i8** %8, align 8
  %174 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %174, i32* %7, align 4
  br label %184

175:                                              ; preds = %158
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @sqlite3_errmsg(i32 %181)
  %183 = call i8* @sqlite3MPrintf(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  store i8* %183, i8** %8, align 8
  br label %184

184:                                              ; preds = %175, %168
  br label %185

185:                                              ; preds = %184, %153
  br label %186

186:                                              ; preds = %185, %151
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @SQLITE_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load i8*, i8** %8, align 8
  %192 = icmp eq i8* %191, null
  br label %193

193:                                              ; preds = %190, %186
  %194 = phi i1 [ true, %186 ], [ %192, %190 ]
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @SQLITE_ROW, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @SQLITE_DONE, align 4
  %203 = icmp ne i32 %201, %202
  br label %204

204:                                              ; preds = %200, %193
  %205 = phi i1 [ false, %193 ], [ %203, %200 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i8*, i8** %8, align 8
  %209 = load i8**, i8*** %6, align 8
  store i8* %208, i8** %209, align 8
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

declare dso_local i32 @sqlite3VdbeExec(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3_step(i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i8* @sqlite3MPrintf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i32 @sqlite3VdbeSerialTypeLen(i32) #1

declare dso_local i32 @sqlite3BtreeIncrblobCursor(i32) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
