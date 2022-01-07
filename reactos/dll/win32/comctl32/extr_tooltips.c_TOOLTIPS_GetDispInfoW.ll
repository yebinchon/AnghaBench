; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_GetDispInfoW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_GetDispInfoW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@TTN_GETDISPINFOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"hdr.idFrom = %lx\0A\00", align 1
@WM_NOTIFY = common dso_local global i32 0, align 4
@INFOTIPSIZE = common dso_local global i32 0, align 4
@TTF_DI_SETITEM = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"recursive text callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @TOOLTIPS_GetDispInfoW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLTIPS_GetDispInfoW(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @ZeroMemory(%struct.TYPE_11__* %7, i32 48)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @TTN_GETDISPINFOW, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WM_NOTIFY, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ptrtoint %struct.TYPE_11__* %7 to i32
  %46 = call i32 @SendMessageW(i32 %40, i32 %41, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i64 @IS_INTRESOURCE(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @LOWORD(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @INFOTIPSIZE, align 4
  %61 = call i32 @LoadStringW(i32 %54, i32 %58, i32* %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TTF_DI_SETITEM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  br label %77

77:                                               ; preds = %67, %52
  br label %117

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 0, i32* %84, align 4
  br label %116

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @INFOTIPSIZE, align 4
  %95 = call i32 @Str_GetPtrW(i64 %92, i32* %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @TTF_DI_SETITEM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %90
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @Str_SetPtrW(i32** %107, i32* %108)
  br label %110

110:                                              ; preds = %101, %90
  br label %115

111:                                              ; preds = %85
  %112 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %110
  br label %116

116:                                              ; preds = %115, %82
  br label %117

117:                                              ; preds = %116, %77
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @GetParent(i32 %125)
  %127 = load i32, i32* @WM_NOTIFY, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = ptrtoint %struct.TYPE_11__* %7 to i32
  %132 = call i32 @SendMessageW(i32 %126, i32 %127, i32 %130, i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = call i64 @IS_INTRESOURCE(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %122
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 @LOWORD(i32* %143)
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* @INFOTIPSIZE, align 4
  %147 = call i32 @LoadStringW(i32 %140, i32 %144, i32* %145, i32 %146)
  br label %164

148:                                              ; preds = %122
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* @INFOTIPSIZE, align 4
  %162 = call i32 @Str_GetPtrW(i64 %159, i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %152, %148
  br label %164

164:                                              ; preds = %163, %138
  br label %165

165:                                              ; preds = %164, %117
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i32 @Str_GetPtrW(i64, i32*, i32) #1

declare dso_local i32 @Str_SetPtrW(i32**, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GetParent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
