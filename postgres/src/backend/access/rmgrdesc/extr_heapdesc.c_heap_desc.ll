; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_heapdesc.c_heap_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_heapdesc.c_heap_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@XLOG_HEAP_OPMASK = common dso_local global i32 0, align 4
@XLOG_HEAP_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"off %u flags 0x%02X\00", align 1
@XLOG_HEAP_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"off %u flags 0x%02X \00", align 1
@XLOG_HEAP_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"off %u xmax %u flags 0x%02X \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"; new off %u xmax %u\00", align 1
@XLOG_HEAP_HOT_UPDATE = common dso_local global i32 0, align 4
@XLOG_HEAP_TRUNCATE = common dso_local global i32 0, align 4
@XLH_TRUNCATE_CASCADE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"cascade \00", align 1
@XLH_TRUNCATE_RESTART_SEQS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"restart_seqs \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"nrelids %u relids\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@XLOG_HEAP_CONFIRM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"off %u\00", align 1
@XLOG_HEAP_LOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"off %u: xid %u: flags 0x%02X \00", align 1
@XLOG_HEAP_INPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @XLogRecGetData(i32* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @XLogRecGetInfo(i32* %18)
  %20 = load i32, i32* @XLR_INFO_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @XLOG_HEAP_OPMASK, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @XLOG_HEAP_INSERT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %228

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @XLOG_HEAP_DELETE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %8, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @out_infobits(i32 %55, i32 %58)
  br label %227

60:                                               ; preds = %40
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @XLOG_HEAP_UPDATE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %9, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @out_infobits(i32 %78, i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %89)
  br label %226

91:                                               ; preds = %60
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @XLOG_HEAP_HOT_UPDATE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %10, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @out_infobits(i32 %109, i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %120)
  br label %225

122:                                              ; preds = %91
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @XLOG_HEAP_TRUNCATE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %122
  %127 = load i8*, i8** %5, align 8
  %128 = bitcast i8* %127 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %11, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @XLH_TRUNCATE_CASCADE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @appendStringInfoString(i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %126
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @XLH_TRUNCATE_RESTART_SEQS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @appendStringInfoString(i32 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %138
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %170, %148
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load i32, i32* %3, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %154

173:                                              ; preds = %154
  br label %224

174:                                              ; preds = %122
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @XLOG_HEAP_CONFIRM, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load i8*, i8** %5, align 8
  %180 = bitcast i8* %179 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %13, align 8
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  br label %223

186:                                              ; preds = %174
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @XLOG_HEAP_LOCK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %186
  %191 = load i8*, i8** %5, align 8
  %192 = bitcast i8* %191 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %14, align 8
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %196, i32 %199, i32 %202)
  %204 = load i32, i32* %3, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @out_infobits(i32 %204, i32 %207)
  br label %222

209:                                              ; preds = %186
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @XLOG_HEAP_INPLACE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = load i8*, i8** %5, align 8
  %215 = bitcast i8* %214 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %215, %struct.TYPE_12__** %15, align 8
  %216 = load i32, i32* %3, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %213, %209
  br label %222

222:                                              ; preds = %221, %190
  br label %223

223:                                              ; preds = %222, %178
  br label %224

224:                                              ; preds = %223, %173
  br label %225

225:                                              ; preds = %224, %95
  br label %226

226:                                              ; preds = %225, %64
  br label %227

227:                                              ; preds = %226, %44
  br label %228

228:                                              ; preds = %227, %29
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @out_infobits(i32, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
