; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_FillThumb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_FillThumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TBS_BOTH = common dso_local global i32 0, align 4
@TBS_VERT = common dso_local global i32 0, align 4
@TBS_LEFT = common dso_local global i32 0, align 4
@TBS_TOP = common dso_local global i32 0, align 4
@WINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @TRACKBAR_FillThumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_FillThumb(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca [6 x %struct.TYPE_10__], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TBS_BOTH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FillRect(i32 %21, %struct.TYPE_9__* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %366

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TBS_VERT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %188

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TBS_LEFT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %118

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 16
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 16
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 16
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 16
  %111 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %187

118:                                              ; preds = %32
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 16
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  %129 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %133, %134
  %136 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 16
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sub nsw i32 %167, %168
  %170 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 16
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 16
  %180 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %118, %47
  br label %350

188:                                              ; preds = %25
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %191, %194
  %196 = sdiv i32 %195, 2
  store i32 %196, i32* %10, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @TBS_TOP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %277

203:                                              ; preds = %188
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %206, %207
  %209 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 16
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  %215 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %219, 1
  %221 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %225, %226
  %228 = add nsw i32 %227, 1
  %229 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 1
  %235 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 16
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  %241 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %250, 1
  %252 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 16
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %261, %262
  %264 = add nsw i32 %263, 1
  %265 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 16
  %270 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  br label %349

277:                                              ; preds = %188
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, 1
  %282 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 16
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, 1
  %293 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %10, align 4
  %299 = sub nsw i32 %297, %298
  %300 = sub nsw i32 %299, 1
  %301 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %305, %306
  %308 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 16
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %312, 1
  %314 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 2
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %10, align 4
  %325 = sub nsw i32 %323, %324
  %326 = sub nsw i32 %325, 1
  %327 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 3
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 16
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 4
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 16
  %342 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  %344 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 5
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  br label %349

349:                                              ; preds = %277, %203
  br label %350

350:                                              ; preds = %349, %187
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %7, align 4
  %353 = call i32 @SelectObject(i32 %351, i32 %352)
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* @WINDING, align 4
  %356 = call i32 @SetPolyFillMode(i32 %354, i32 %355)
  %357 = load i32, i32* %6, align 4
  %358 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %359 = getelementptr inbounds [6 x %struct.TYPE_10__], [6 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %360 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %359)
  %361 = call i32 @Polygon(i32 %357, %struct.TYPE_10__* %358, i32 %360)
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @SelectObject(i32 %362, i32 %363)
  %365 = load i32, i32* %10, align 4
  store i32 %365, i32* %4, align 4
  br label %366

366:                                              ; preds = %350, %20
  %367 = load i32, i32* %4, align 4
  ret i32 %367
}

declare dso_local i32 @FillRect(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetPolyFillMode(i32, i32) #1

declare dso_local i32 @Polygon(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
