; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_mainwnd.c_SetMenuAndButtonStates.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_mainwnd.c_SetMenuAndButtonStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@ID_START = common dso_local global i64 0, align 8
@ID_RESTART = common dso_local global i64 0, align 8
@MF_GRAYED = common dso_local global i32 0, align 4
@TB_SETSTATE = common dso_local global i32 0, align 4
@TBSTATE_INDETERMINATE = common dso_local global i32 0, align 4
@NO_ITEM_SELECTED = common dso_local global i64 0, align 8
@ID_DELETE = common dso_local global i64 0, align 8
@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@SERVICE_DISABLED = common dso_local global i64 0, align 8
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@SERVICE_ACCEPT_STOP = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@ID_STOP = common dso_local global i64 0, align 8
@SERVICE_ACCEPT_PAUSE_CONTINUE = common dso_local global i64 0, align 8
@ID_PAUSE = common dso_local global i64 0, align 8
@ID_PROP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetMenuAndButtonStates(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @GetMenu(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @ID_START, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %39, %1
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ID_RESTART, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @MF_GRAYED, align 4
  %22 = call i32 @EnableMenuItem(i32 %19, i64 %20, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GetSubMenu(i32 %25, i32 0)
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @MF_GRAYED, align 4
  %29 = call i32 @EnableMenuItem(i32 %26, i64 %27, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TB_SETSTATE, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @TBSTATE_INDETERMINATE, align 4
  %36 = call i64 @MAKELONG(i32 %35, i32 0)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @SendMessage(i32 %32, i32 %33, i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %18
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NO_ITEM_SELECTED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %225

48:                                               ; preds = %42
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TB_SETSTATE, align 4
  %58 = load i64, i64* @ID_DELETE, align 8
  %59 = load i32, i32* @TBSTATE_ENABLED, align 4
  %60 = call i64 @MAKELONG(i32 %59, i32 0)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SendMessage(i32 %56, i32 %57, i64 %58, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i64, i64* @ID_DELETE, align 8
  %65 = load i32, i32* @MF_ENABLED, align 4
  %66 = call i32 @EnableMenuItem(i32 %63, i64 %64, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GetSubMenu(i32 %69, i32 0)
  %71 = load i64, i64* @ID_DELETE, align 8
  %72 = load i32, i32* @MF_ENABLED, align 4
  %73 = call i32 @EnableMenuItem(i32 %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %53, %48
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_11__* @GetServiceConfig(i32 %91)
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %6, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %157

95:                                               ; preds = %74
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SERVICE_DISABLED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %157

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @SERVICE_STOPPED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load i64, i64* @ID_START, align 8
  %108 = load i32, i32* @MF_ENABLED, align 4
  %109 = call i32 @EnableMenuItem(i32 %106, i64 %107, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @GetSubMenu(i32 %112, i32 0)
  %114 = load i64, i64* @ID_START, align 8
  %115 = load i32, i32* @MF_ENABLED, align 4
  %116 = call i32 @EnableMenuItem(i32 %113, i64 %114, i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TB_SETSTATE, align 4
  %121 = load i64, i64* @ID_START, align 8
  %122 = load i32, i32* @TBSTATE_ENABLED, align 4
  %123 = call i64 @MAKELONG(i32 %122, i32 0)
  %124 = trunc i64 %123 to i32
  %125 = call i32 @SendMessage(i32 %119, i32 %120, i64 %121, i32 %124)
  br label %126

126:                                              ; preds = %105, %101
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @SERVICE_ACCEPT_STOP, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %126
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @SERVICE_RUNNING, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = load i32, i32* %4, align 4
  %137 = load i64, i64* @ID_RESTART, align 8
  %138 = load i32, i32* @MF_ENABLED, align 4
  %139 = call i32 @EnableMenuItem(i32 %136, i64 %137, i32 %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @GetSubMenu(i32 %142, i32 0)
  %144 = load i64, i64* @ID_RESTART, align 8
  %145 = load i32, i32* @MF_ENABLED, align 4
  %146 = call i32 @EnableMenuItem(i32 %143, i64 %144, i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TB_SETSTATE, align 4
  %151 = load i64, i64* @ID_RESTART, align 8
  %152 = load i32, i32* @TBSTATE_ENABLED, align 4
  %153 = call i64 @MAKELONG(i32 %152, i32 0)
  %154 = trunc i64 %153 to i32
  %155 = call i32 @SendMessage(i32 %149, i32 %150, i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %135, %131, %126
  br label %157

157:                                              ; preds = %156, %95, %74
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = icmp ne %struct.TYPE_11__* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = call i32 @HeapFree(i32 %161, i32 0, %struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @SERVICE_ACCEPT_STOP, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %164
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @SERVICE_RUNNING, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %194

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  %175 = load i64, i64* @ID_STOP, align 8
  %176 = load i32, i32* @MF_ENABLED, align 4
  %177 = call i32 @EnableMenuItem(i32 %174, i64 %175, i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @GetSubMenu(i32 %180, i32 0)
  %182 = load i64, i64* @ID_STOP, align 8
  %183 = load i32, i32* @MF_ENABLED, align 4
  %184 = call i32 @EnableMenuItem(i32 %181, i64 %182, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @TB_SETSTATE, align 4
  %189 = load i64, i64* @ID_STOP, align 8
  %190 = load i32, i32* @TBSTATE_ENABLED, align 4
  %191 = call i64 @MAKELONG(i32 %190, i32 0)
  %192 = trunc i64 %191 to i32
  %193 = call i32 @SendMessage(i32 %187, i32 %188, i64 %189, i32 %192)
  br label %194

194:                                              ; preds = %173, %169, %164
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* @SERVICE_ACCEPT_PAUSE_CONTINUE, align 8
  %197 = and i64 %195, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %224

199:                                              ; preds = %194
  %200 = load i64, i64* %8, align 8
  %201 = load i64, i64* @SERVICE_RUNNING, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = load i32, i32* %4, align 4
  %205 = load i64, i64* @ID_PAUSE, align 8
  %206 = load i32, i32* @MF_ENABLED, align 4
  %207 = call i32 @EnableMenuItem(i32 %204, i64 %205, i32 %206)
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @GetSubMenu(i32 %210, i32 0)
  %212 = load i64, i64* @ID_PAUSE, align 8
  %213 = load i32, i32* @MF_ENABLED, align 4
  %214 = call i32 @EnableMenuItem(i32 %211, i64 %212, i32 %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @TB_SETSTATE, align 4
  %219 = load i64, i64* @ID_PAUSE, align 8
  %220 = load i32, i32* @TBSTATE_ENABLED, align 4
  %221 = call i64 @MAKELONG(i32 %220, i32 0)
  %222 = trunc i64 %221 to i32
  %223 = call i32 @SendMessage(i32 %217, i32 %218, i64 %219, i32 %222)
  br label %224

224:                                              ; preds = %203, %199, %194
  br label %266

225:                                              ; preds = %42
  %226 = load i32, i32* %4, align 4
  %227 = load i64, i64* @ID_PROP, align 8
  %228 = load i32, i32* @MF_GRAYED, align 4
  %229 = call i32 @EnableMenuItem(i32 %226, i64 %227, i32 %228)
  %230 = load i32, i32* %4, align 4
  %231 = load i64, i64* @ID_DELETE, align 8
  %232 = load i32, i32* @MF_GRAYED, align 4
  %233 = call i32 @EnableMenuItem(i32 %230, i64 %231, i32 %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @GetSubMenu(i32 %236, i32 0)
  %238 = load i64, i64* @ID_PROP, align 8
  %239 = load i32, i32* @MF_GRAYED, align 4
  %240 = call i32 @EnableMenuItem(i32 %237, i64 %238, i32 %239)
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @GetSubMenu(i32 %243, i32 0)
  %245 = load i64, i64* @ID_DELETE, align 8
  %246 = load i32, i32* @MF_GRAYED, align 4
  %247 = call i32 @EnableMenuItem(i32 %244, i64 %245, i32 %246)
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @TB_SETSTATE, align 4
  %252 = load i64, i64* @ID_PROP, align 8
  %253 = load i32, i32* @TBSTATE_INDETERMINATE, align 4
  %254 = call i64 @MAKELONG(i32 %253, i32 0)
  %255 = trunc i64 %254 to i32
  %256 = call i32 @SendMessage(i32 %250, i32 %251, i64 %252, i32 %255)
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @TB_SETSTATE, align 4
  %261 = load i64, i64* @ID_DELETE, align 8
  %262 = load i32, i32* @TBSTATE_INDETERMINATE, align 4
  %263 = call i64 @MAKELONG(i32 %262, i32 0)
  %264 = trunc i64 %263 to i32
  %265 = call i32 @SendMessage(i32 %259, i32 %260, i64 %261, i32 %264)
  br label %266

266:                                              ; preds = %225, %224
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @EnableMenuItem(i32, i64, i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i64, i32) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local %struct.TYPE_11__* @GetServiceConfig(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
