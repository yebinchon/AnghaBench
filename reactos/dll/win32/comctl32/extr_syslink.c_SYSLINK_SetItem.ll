; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@LIF_ITEMINDEX = common dso_local global i32 0, align 4
@LIF_FLAGSMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Flags!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Link %d couldn't be found\0A\00", align 1
@LIF_ITEMID = common dso_local global i32 0, align 4
@MAX_LINKID_TEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate memory for link id\0A\00", align 1
@LIF_URL = common dso_local global i32 0, align 4
@L_MAX_URL_LENGTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for link url\0A\00", align 1
@LIF_STATE = common dso_local global i32 0, align 4
@LIS_MASK = common dso_local global i32 0, align 4
@LIS_FOCUSED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*)* @SYSLINK_SetItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_SetItem(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LIF_ITEMINDEX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LIF_FLAGSMASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %2
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %225

29:                                               ; preds = %19
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_11__* @SYSLINK_GetLinkItemByIndex(i32* %30, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = icmp eq %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %225

43:                                               ; preds = %29
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LIF_ITEMID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lstrlenW(i32 %53)
  %55 = load i64, i64* @MAX_LINKID_TEXT, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @min(i32 %54, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i8* @Alloc(i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %50
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @lstrcpynW(i8* %67, i32 %70, i32 %72)
  br label %77

74:                                               ; preds = %50
  %75 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %225

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LIF_URL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lstrlenW(i32 %88)
  %90 = load i64, i64* @L_MAX_URL_LENGTH, align 8
  %91 = sub nsw i64 %90, 1
  %92 = call i32 @min(i32 %89, i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i8* @Alloc(i32 %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %85
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i32 @lstrcpynW(i8* %102, i32 %105, i32 %107)
  br label %114

109:                                              ; preds = %85
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @Free(i8* %110)
  %112 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %3, align 4
  br label %225

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %78
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LIF_ITEMID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @Free(i8* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i8* %129, i8** %133, align 8
  br label %134

134:                                              ; preds = %122, %115
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @LIF_URL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @Free(i8* %146)
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %141, %134
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LIF_STATE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %216

160:                                              ; preds = %153
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %11, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @LIS_MASK, align 4
  %170 = and i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %171
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %180, %183
  %185 = load i32, i32* @LIS_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %186
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %193, %198
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %10, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @LIS_FOCUSED, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %160
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  br label %213

212:                                              ; preds = %160
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi %struct.TYPE_11__* [ %211, %210 ], [ null, %212 ]
  %215 = call i32 @SYSLINK_SetFocusLink(i32* %201, %struct.TYPE_11__* %214)
  br label %216

216:                                              ; preds = %213, %153
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32*, i32** %4, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %222 = call i32 @SYSLINK_RepaintLink(i32* %220, %struct.TYPE_11__* %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = load i32, i32* @TRUE, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %109, %74, %37, %26
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.TYPE_11__* @SYSLINK_GetLinkItemByIndex(i32*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @SYSLINK_SetFocusLink(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @SYSLINK_RepaintLink(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
