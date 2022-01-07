; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_GetClipboardDataDimensions.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_cliputils.c_GetClipboardDataDimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@Globals = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@ANSI_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetClipboardDataDimensions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SetRectEmpty(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Globals, i32 0, i32 0), align 4
  %21 = call i32 @OpenClipboard(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %189

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %185 [
    i32 132, label %27
    i32 135, label %27
    i32 134, label %37
    i32 133, label %37
    i32 131, label %111
    i32 129, label %111
    i32 130, label %111
    i32 128, label %111
  ]

27:                                               ; preds = %25, %25
  %28 = call i32 @GetClipboardData(i32 135)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GetObjectW(i32 %29, i32 8, %struct.TYPE_10__* %7)
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SetRect(i32 %31, i32 0, i32 0, i32 %33, i32 %35)
  br label %186

37:                                               ; preds = %25, %25
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @GetClipboardData(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %186

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @GlobalLock(i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %186

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = bitcast %struct.TYPE_8__* %57 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %10, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SetRect(i32 %59, i32 0, i32 0, i32 %62, i32 %65)
  br label %108

67:                                               ; preds = %50
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %85, label %106

85:                                               ; preds = %79, %73, %67
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  br label %103

98:                                               ; preds = %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i32 [ %97, %94 ], [ %102, %98 ]
  %105 = call i32 @SetRect(i32 %86, i32 0, i32 0, i32 %89, i32 %104)
  br label %107

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107, %56
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @GlobalUnlock(i32 %109)
  br label %186

111:                                              ; preds = %25, %25, %25, %25
  %112 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %112, i8 0, i64 16, i1 false)
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @GetClipboardData(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %186

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  %120 = call i8* @GlobalLock(i32 %119)
  store i8* %120, i8** %13, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %186

124:                                              ; preds = %118
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Globals, i32 0, i32 0), align 4
  %126 = call i32 @GetDC(i32 %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %160, %124
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i8*, i8** %13, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @UNICODE_NULL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %173

137:                                              ; preds = %130
  %138 = load i8*, i8** %13, align 8
  %139 = bitcast i8** %14 to i32**
  %140 = call i32 @GetLineExtentW(i8* %138, i32** %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @GetTabbedTextExtentW(i32 %141, i8* %142, i32 %143, i32 0, i32* null)
  store i32 %144, i32* %15, align 4
  br label %160

145:                                              ; preds = %127
  %146 = load i8*, i8** %13, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ANSI_NULL, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %173

152:                                              ; preds = %145
  %153 = load i8*, i8** %13, align 8
  %154 = bitcast i8** %14 to i32**
  %155 = call i32 @GetLineExtentA(i8* %153, i32** %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @GetTabbedTextExtentA(i32 %156, i8* %157, i32 %158, i32 0, i32* null)
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %152, %137
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @LOWORD(i32 %163)
  %165 = call i32 @max(i32 %162, i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @HIWORD(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = load i8*, i8** %14, align 8
  store i8* %172, i8** %13, align 8
  br label %127

173:                                              ; preds = %151, %136
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Globals, i32 0, i32 0), align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @ReleaseDC(i32 %174, i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @GlobalUnlock(i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @SetRect(i32 %179, i32 0, i32 0, i32 %181, i32 %183)
  br label %186

185:                                              ; preds = %25
  br label %186

186:                                              ; preds = %185, %173, %123, %117, %108, %49, %42, %27
  %187 = call i32 (...) @CloseClipboard()
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %23
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @SetRectEmpty(i32) #1

declare dso_local i32 @OpenClipboard(i32) #1

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SetRect(i32, i32, i32, i32, i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetLineExtentW(i8*, i32**) #1

declare dso_local i32 @GetTabbedTextExtentW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @GetLineExtentA(i8*, i32**) #1

declare dso_local i32 @GetTabbedTextExtentA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
