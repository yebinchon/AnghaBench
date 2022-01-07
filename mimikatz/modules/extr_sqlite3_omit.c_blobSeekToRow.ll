; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_blobSeekToRow.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_blobSeekToRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i32*, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8* }

@MEM_Int = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i8**)* @blobSeekToRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blobSeekToRow(%struct.TYPE_16__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load i32, i32* @MEM_Int, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i8* %22, i8** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %33, label %52

33:                                               ; preds = %3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OP_NotExists, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = call i32 @sqlite3VdbeExec(%struct.TYPE_15__* %50)
  store i32 %51, i32* %7, align 4
  br label %57

52:                                               ; preds = %3
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @sqlite3_step(i64 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %52, %33
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SQLITE_ROW, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %161

61:                                               ; preds = %57
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %64, i64 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %74
  %86 = phi i32 [ %83, %74 ], [ 0, %84 ]
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @testcase(i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  %103 = icmp eq i32 %98, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @testcase(i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 12
  br i1 %107, label %108, label %130

108:                                              ; preds = %85
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %120

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 7
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %120

120:                                              ; preds = %115, %114
  %121 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %114 ], [ %119, %115 ]
  %122 = call i8* @sqlite3MPrintf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %121)
  store i8* %122, i8** %8, align 8
  %123 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %123, i32* %7, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @sqlite3_finalize(i64 %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  br label %160

130:                                              ; preds = %85
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = getelementptr inbounds i32, i32* %133, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @sqlite3VdbeSerialTypeLen(i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sqlite3BtreeIncrblobCursor(i32 %158)
  br label %160

160:                                              ; preds = %130, %120
  br label %161

161:                                              ; preds = %160, %57
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @SQLITE_ROW, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @SQLITE_OK, align 4
  store i32 %166, i32* %7, align 4
  br label %200

167:                                              ; preds = %161
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @sqlite3_finalize(i64 %175)
  store i32 %176, i32* %7, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @SQLITE_OK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = call i8* @sqlite3MPrintf(i32 %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %186)
  store i8* %187, i8** %8, align 8
  %188 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %188, i32* %7, align 4
  br label %198

189:                                              ; preds = %172
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @sqlite3_errmsg(i32 %195)
  %197 = call i8* @sqlite3MPrintf(i32 %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %196)
  store i8* %197, i8** %8, align 8
  br label %198

198:                                              ; preds = %189, %182
  br label %199

199:                                              ; preds = %198, %167
  br label %200

200:                                              ; preds = %199, %165
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @SQLITE_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load i8*, i8** %8, align 8
  %206 = icmp eq i8* %205, null
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i1 [ true, %200 ], [ %206, %204 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @SQLITE_ROW, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @SQLITE_DONE, align 4
  %217 = icmp ne i32 %215, %216
  br label %218

218:                                              ; preds = %214, %207
  %219 = phi i1 [ false, %207 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i8*, i8** %8, align 8
  %223 = load i8**, i8*** %6, align 8
  store i8* %222, i8** %223, align 8
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeExec(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_step(i64) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i8* @sqlite3MPrintf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i32 @sqlite3VdbeSerialTypeLen(i32) #1

declare dso_local i32 @sqlite3BtreeIncrblobCursor(i32) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
