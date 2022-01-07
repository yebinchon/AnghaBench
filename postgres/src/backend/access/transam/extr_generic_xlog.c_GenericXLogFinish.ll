; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_GenericXLogFinish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_GenericXLogFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@MAX_GENERIC_XLOG_PAGES = common dso_local global i32 0, align 4
@GENERIC_XLOG_FULL_IMAGE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@REGBUF_FORCE_IMAGE = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_GENERIC_ID = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GenericXLogFinish(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %197

14:                                               ; preds = %1
  %15 = call i32 (...) @XLogBeginInsert()
  %16 = call i32 (...) @START_CRIT_SECTION()
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %158, %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_GENERIC_XLOG_PAGES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %161

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @BufferIsInvalid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %158

34:                                               ; preds = %21
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @BufferGetPage(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GENERIC_XLOG_FULL_IMAGE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %34
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(i64 %50, i64 %53, i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @memset(i64 %62, i32 0, i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i64, i64* @BLCKSZ, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = call i32 @memcpy(i64 %75, i64 %82, i64 %87)
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @REGBUF_FORCE_IMAGE, align 4
  %94 = load i32, i32* @REGBUF_STANDARD, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @XLogRegisterBuffer(i32 %89, i32 %92, i32 %95)
  br label %157

97:                                               ; preds = %34
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @computeDelta(%struct.TYPE_8__* %98, i64 %99, i64 %102)
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @memcpy(i64 %104, i64 %107, i64 %110)
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = call i32 @memset(i64 %116, i32 0, i64 %123)
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load i64, i64* @BLCKSZ, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = call i32 @memcpy(i64 %129, i64 %136, i64 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @REGBUF_STANDARD, align 4
  %148 = call i32 @XLogRegisterBuffer(i32 %143, i32 %146, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @XLogRegisterBufData(i32 %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %97, %49
  br label %158

158:                                              ; preds = %157, %33
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %17

161:                                              ; preds = %17
  %162 = load i32, i32* @RM_GENERIC_ID, align 4
  %163 = call i32 @XLogInsert(i32 %162, i32 0)
  store i32 %163, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %192, %161
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @MAX_GENERIC_XLOG_PAGES, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %195

168:                                              ; preds = %164
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 %173
  store %struct.TYPE_8__* %174, %struct.TYPE_8__** %8, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @BufferIsInvalid(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %192

181:                                              ; preds = %168
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @BufferGetPage(i32 %184)
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @PageSetLSN(i64 %185, i32 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @MarkBufferDirty(i32 %190)
  br label %192

192:                                              ; preds = %181, %180
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %164

195:                                              ; preds = %164
  %196 = call i32 (...) @END_CRIT_SECTION()
  br label %236

197:                                              ; preds = %1
  %198 = call i32 (...) @START_CRIT_SECTION()
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %230, %197
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @MAX_GENERIC_XLOG_PAGES, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %199
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  store %struct.TYPE_8__* %209, %struct.TYPE_8__** %9, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @BufferIsInvalid(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %230

216:                                              ; preds = %203
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @BufferGetPage(i32 %219)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @BLCKSZ, align 8
  %225 = call i32 @memcpy(i64 %220, i64 %223, i64 %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @MarkBufferDirty(i32 %228)
  br label %230

230:                                              ; preds = %216, %215
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %199

233:                                              ; preds = %199
  %234 = call i32 (...) @END_CRIT_SECTION()
  %235 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %233, %195
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %238 = call i32 @pfree(%struct.TYPE_9__* %237)
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i64 @BufferIsInvalid(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @computeDelta(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @XLogRegisterBufData(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
