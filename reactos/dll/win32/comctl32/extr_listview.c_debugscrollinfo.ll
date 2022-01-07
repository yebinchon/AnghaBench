; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debugscrollinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debugscrollinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"{cbSize=%u, \00", align 1
@SIF_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"nMin=%d, nMax=%d, \00", align 1
@SIF_PAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"nPage=%u, \00", align 1
@SIF_POS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"nPos=%d, \00", align 1
@SIF_TRACKPOS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"nTrackPos=%d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @debugscrollinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugscrollinfo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = call i8* (...) @debug_getbuf()
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @DEBUG_BUFFER_SIZE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %156

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %136

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SIF_RANGE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %136

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SIF_PAGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %136

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SIF_POS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  store i32 %99, i32* %6, align 4
  br label %101

100:                                              ; preds = %79
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %93
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %136

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load i8*, i8** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SIF_TRACKPOS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %105
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %120, i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  store i32 %125, i32* %6, align 4
  br label %127

126:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %119
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %136

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %4, align 8
  br label %142

136:                                              ; preds = %130, %104, %78, %52, %23
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i8*, i8** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = icmp sgt i64 %147, 2
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 -2
  store i8 125, i8* %151, align 1
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 -1
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i8*, i8** %5, align 8
  store i8* %155, i8** %2, align 8
  br label %156

156:                                              ; preds = %154, %13
  %157 = load i8*, i8** %2, align 8
  ret i8* %157
}

declare dso_local i8* @debug_getbuf(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
