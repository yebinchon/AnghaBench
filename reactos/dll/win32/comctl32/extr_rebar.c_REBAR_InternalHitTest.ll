; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_InternalHitTest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_InternalHitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@RBHT_NOWHERE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"NOWHERE\0A\00", align 1
@RBHT_GRABBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ON GRABBER %d\0A\00", align 1
@RBHT_CAPTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"ON CAPTION %d\0A\00", align 1
@RBHT_CLIENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"ON CLIENT %d\0A\00", align 1
@RBHT_CHEVRON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"ON CHEVRON %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"NOWHERE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i64*, i32*)* @REBAR_InternalHitTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_InternalHitTest(%struct.TYPE_8__* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @GetClientRect(i32 %15, i32* %10)
  %17 = load i64, i64* @RBHT_NOWHERE, align 8
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @PtInRect(i32* %10, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %146

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i64, i64* @RBHT_NOWHERE, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %155

37:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %134, %37
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %137

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__* %45, i64 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = call i32 @translate_rect(%struct.TYPE_8__* %48, i32* %12, i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = call i64 @HIDDENBAND(%struct.TYPE_9__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %134

56:                                               ; preds = %44
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @PtInRect(i32* %12, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @PtInRect(i32* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i64, i64* @RBHT_GRABBER, align 8
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %155

80:                                               ; preds = %68
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @PtInRect(i32* %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i64, i64* @RBHT_CAPTION, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  br label %155

92:                                               ; preds = %80
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @PtInRect(i32* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i64, i64* @RBHT_CAPTION, align 8
  %101 = load i64*, i64** %7, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %155

104:                                              ; preds = %92
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @PtInRect(i32* %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i64, i64* @RBHT_CLIENT, align 8
  %113 = load i64*, i64** %7, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  br label %155

116:                                              ; preds = %104
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @PtInRect(i32* %118, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i64, i64* @RBHT_CHEVRON, align 8
  %125 = load i64*, i64** %7, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %126)
  br label %155

128:                                              ; preds = %116
  %129 = load i64, i64* @RBHT_NOWHERE, align 8
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %131)
  br label %155

133:                                              ; preds = %56
  br label %134

134:                                              ; preds = %133, %55
  %135 = load i64, i64* %11, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %38

137:                                              ; preds = %38
  %138 = load i64, i64* @RBHT_NOWHERE, align 8
  %139 = load i64*, i64** %7, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32*, i32** %8, align 8
  store i32 -1, i32* %143, align 4
  br label %144

144:                                              ; preds = %142, %137
  %145 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %155

146:                                              ; preds = %4
  %147 = load i64, i64* @RBHT_NOWHERE, align 8
  %148 = load i64*, i64** %7, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32*, i32** %8, align 8
  store i32 -1, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %144, %128, %123, %111, %99, %87, %75, %35
  ret void
}

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i64 @PtInRect(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @REBAR_GetBand(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @translate_rect(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @HIDDENBAND(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
