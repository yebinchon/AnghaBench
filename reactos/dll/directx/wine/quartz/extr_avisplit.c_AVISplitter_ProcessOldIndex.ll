; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_ProcessOldIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_ProcessOldIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"dwChunkId: %.4s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dwFlags: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dwOffset (%s): %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dwSize: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"Faulty index or bug in handling: Wanted FCC: %s, Abs FCC: %s (@ %x), Rel FCC: %s (@ %s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Scanned dwChunkId: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Dropping index: no idea whether it is relative or absolute\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @AVISplitter_ProcessOldIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_ProcessOldIndex(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BYTES_FROM_MEDIATIME(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %178, %1
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 24
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %181

31:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = bitcast i32* %10 to i8*
  %53 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %176

80:                                               ; preds = %31
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @IAsyncReader_SyncRead(i32 %83, i32 %84, i32 4, i32* %7)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @mmioFOURCC(i8 signext 55, float 7.000000e+01, i8 signext 120, i8 signext 120)
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %80
  %94 = bitcast i32* %7 to i8*
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 4
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 105
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = bitcast i32* %7 to i8*
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 120
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %99, %93, %80
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %167

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BYTES_FROM_MEDIATIME(i32 %116)
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @IAsyncReader_SyncRead(i32 %122, i32 %125, i32 4, i32* %8)
  br label %127

127:                                              ; preds = %119, %110
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @mmioFOURCC(i8 signext 55, float 7.000000e+01, i8 signext 120, i8 signext 120)
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = bitcast i32* %8 to i8*
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 4
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 105
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = bitcast i32* %8 to i8*
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 120
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %166

144:                                              ; preds = %137, %131, %127
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = bitcast i32* %10 to i8*
  %150 = call i8* @debugstr_an(i8* %149, i32 4)
  %151 = bitcast i32* %7 to i8*
  %152 = call i8* @debugstr_an(i8* %151, i32 4)
  %153 = load i32, i32* %9, align 4
  %154 = bitcast i32* %8 to i8*
  %155 = call i8* @debugstr_an(i8* %154, i32 4)
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @wine_dbgstr_longlong(i32 %158)
  %160 = call i32 @ERR(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i8* %150, i8* %152, i32 %153, i8* %155, i32 %159)
  store i32 -1, i32* %5, align 4
  br label %165

161:                                              ; preds = %144
  %162 = bitcast i32* %8 to i8*
  %163 = call i8* @debugstr_an(i8* %162, i32 4)
  %164 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %161, %148
  br label %166

166:                                              ; preds = %165, %143
  br label %175

167:                                              ; preds = %107
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = bitcast i32* %7 to i8*
  %172 = call i8* @debugstr_an(i8* %171, i32 4)
  %173 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %170, %167
  br label %175

175:                                              ; preds = %174, %166
  br label %177

176:                                              ; preds = %31
  br label %181

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %22

181:                                              ; preds = %176, %22
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = call i32 @FIXME(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = call i32 @CoTaskMemFree(%struct.TYPE_12__* %188)
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %191, align 8
  br label %203

192:                                              ; preds = %181
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %202

198:                                              ; preds = %192
  %199 = load i32, i32* %3, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %195
  br label %203

203:                                              ; preds = %202, %184
  %204 = load i32, i32* @S_OK, align 4
  ret i32 %204
}

declare dso_local i32 @BYTES_FROM_MEDIATIME(i32) #1

declare dso_local i32 @TRACE(i8*, i8*, ...) #1

declare dso_local i32 @IAsyncReader_SyncRead(i32, i32, i32, i32*) #1

declare dso_local i32 @mmioFOURCC(i8 signext, float, i8 signext, i8 signext) #1

declare dso_local i32 @ERR(i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i8* @debugstr_an(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
