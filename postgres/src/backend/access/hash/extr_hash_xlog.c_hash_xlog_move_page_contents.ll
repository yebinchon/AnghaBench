; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_move_page_contents.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_move_page_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@InvalidBuffer = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"hash_xlog_move_page_contents: failed to add item to hash index page, size %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @hash_xlog_move_page_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_move_page_contents(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = call i64 @XLogRecGetData(%struct.TYPE_9__* %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %4, align 8
  %29 = load i32, i32* @InvalidBuffer, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @InvalidBuffer, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @InvalidBuffer, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = load i32, i32* @RBM_NORMAL, align 4
  %39 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_9__* %37, i32 1, i32 %38, i32 1, i32* %6)
  store i64 %39, i64* %8, align 8
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = load i32, i32* @RBM_NORMAL, align 4
  %43 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_9__* %41, i32 0, i32 %42, i32 1, i32* %5)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i64 @XLogReadBufferForRedo(%struct.TYPE_9__* %44, i32 1, i32* %6)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %46
  store i64 0, i64* %13, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i8* @XLogRecGetBlockData(%struct.TYPE_9__* %51, i32 1, i32* %12)
  store i8* %52, i8** %10, align 8
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @BufferGetPage(i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %50
  %60 = load i8*, i8** %11, align 8
  %61 = bitcast i8* %60 to i64*
  store i64* %61, i64** %14, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 8, %65
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  br label %69

69:                                               ; preds = %105, %59
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %69
  %79 = load i8*, i8** %11, align 8
  %80 = ptrtoint i8* %79 to i64
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @IndexTupleSize(i64 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @MAXALIGN(i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %11, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %15, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %16, align 4
  %93 = load i64*, i64** %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @PageAddItem(i64 %89, i32 %91, i32 %92, i64 %96, i32 0, i32 0)
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @InvalidOffsetNumber, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %78
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @elog(i32 %102, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %78
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %69

108:                                              ; preds = %69
  br label %109

109:                                              ; preds = %108, %50
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @PageSetLSN(i64 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @MarkBufferDirty(i32 %121)
  br label %123

123:                                              ; preds = %109, %46
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = call i64 @XLogReadBufferForRedo(%struct.TYPE_9__* %124, i32 2, i32* %7)
  %126 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %168

128:                                              ; preds = %123
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = call i8* @XLogRecGetBlockData(%struct.TYPE_9__* %129, i32 2, i32* %20)
  store i8* %130, i8** %19, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @BufferGetPage(i32 %131)
  store i64 %132, i64* %18, align 8
  %133 = load i32, i32* %20, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %128
  %136 = load i8*, i8** %19, align 8
  %137 = bitcast i8* %136 to i64*
  store i64* %137, i64** %21, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = bitcast i8* %141 to i64*
  store i64* %142, i64** %22, align 8
  %143 = load i64*, i64** %22, align 8
  %144 = load i64*, i64** %21, align 8
  %145 = ptrtoint i64* %143 to i64
  %146 = ptrtoint i64* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %135
  %151 = load i64, i64* %18, align 8
  %152 = load i64*, i64** %21, align 8
  %153 = load i64*, i64** %22, align 8
  %154 = load i64*, i64** %21, align 8
  %155 = ptrtoint i64* %153 to i64
  %156 = ptrtoint i64* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @PageIndexMultiDelete(i64 %151, i64* %152, i32 %159)
  br label %161

161:                                              ; preds = %150, %135
  br label %162

162:                                              ; preds = %161, %128
  %163 = load i64, i64* %18, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @PageSetLSN(i64 %163, i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @MarkBufferDirty(i32 %166)
  br label %168

168:                                              ; preds = %162, %123
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @BufferIsValid(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @UnlockReleaseBuffer(i32 %173)
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @BufferIsValid(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @UnlockReleaseBuffer(i32 %180)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @BufferIsValid(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @UnlockReleaseBuffer(i32 %187)
  br label %189

189:                                              ; preds = %186, %182
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i64*, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
