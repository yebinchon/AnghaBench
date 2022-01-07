; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_PortalRunSelect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_PortalRunSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { i64 }

@NoMovementScanDirection = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@FETCH_ALL = common dso_local global i64 0, align 8
@CURSOR_OPT_NO_SCROLL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cursor can only scan forward\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Declare it with SCROLL option to enable backward scan.\00", align 1
@BackwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32, i64, i32*)* @PortalRunSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PortalRunSelect(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %4
  %23 = phi i1 [ true, %4 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %108

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @NoMovementScanDirection, align 4
  store i32 %44, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @FETCH_ALL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @RunFromStore(%struct.TYPE_9__* %58, i32 %59, i64 %60, i32* %61)
  store i64 %62, i64* %11, align 8
  br label %81

63:                                               ; preds = %52
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PushActiveSnapshot(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ExecutorRun(%struct.TYPE_8__* %68, i32 %69, i64 %70, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  %80 = call i32 (...) @PopActiveSnapshot()
  br label %81

81:                                               ; preds = %63, %57
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ScanDirectionIsNoMovement(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %101, %81
  br label %207

108:                                              ; preds = %32
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CURSOR_OPT_NO_SCROLL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %118 = call i32 @errcode(i32 %117)
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %120 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 @ereport(i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %115, %108
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, i64* %7, align 8
  %129 = icmp sle i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %122
  %131 = load i32, i32* @NoMovementScanDirection, align 4
  store i32 %131, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @BackwardScanDirection, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @FETCH_ALL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i64 0, i64* %7, align 8
  br label %139

139:                                              ; preds = %138, %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i64, i64* %7, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i64 @RunFromStore(%struct.TYPE_9__* %145, i32 %146, i64 %147, i32* %148)
  store i64 %149, i64* %11, align 8
  br label %168

150:                                              ; preds = %139
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PushActiveSnapshot(i32 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ExecutorRun(%struct.TYPE_8__* %155, i32 %156, i64 %157, i32 %160)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %11, align 8
  %167 = call i32 (...) @PopActiveSnapshot()
  br label %168

168:                                              ; preds = %150, %144
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @ScanDirectionIsNoMovement(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %206, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %11, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %180, %175, %172
  %188 = load i64, i64* %7, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %11, align 8
  %192 = load i64, i64* %7, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190, %187
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  br label %205

199:                                              ; preds = %190
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %203, %200
  store i64 %204, i64* %202, align 8
  br label %205

205:                                              ; preds = %199, %194
  br label %206

206:                                              ; preds = %205, %168
  br label %207

207:                                              ; preds = %206, %107
  %208 = load i64, i64* %11, align 8
  ret i64 %208
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RunFromStore(%struct.TYPE_9__*, i32, i64, i32*) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @ExecutorRun(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @ScanDirectionIsNoMovement(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
