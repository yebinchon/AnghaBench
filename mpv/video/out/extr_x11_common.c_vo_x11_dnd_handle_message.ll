; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_dnd_handle_message.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_dnd_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i8*, i32, i64, i32 }
%struct.TYPE_8__ = type { i32* }

@XdndEnter = common dso_local global i32 0, align 4
@XdndTypeList = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@XdndPosition = common dso_local global i32 0, align 4
@ClientMessage = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@XdndStatus = common dso_local global i32 0, align 4
@XdndActionCopy = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@XdndDrop = common dso_local global i32 0, align 4
@XdndSelection = common dso_local global i32 0, align 4
@DND_PROPERTY = common dso_local global i32 0, align 4
@XdndLeave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_12__*)* @vo_x11_dnd_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_dnd_handle_message(%struct.vo* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 0
  %15 = load %struct.vo_x11_state*, %struct.vo_x11_state** %14, align 8
  store %struct.vo_x11_state* %15, %struct.vo_x11_state** %5, align 8
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %227

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %26 = load i32, i32* @XdndEnter, align 4
  %27 = call i8* @XA(%struct.vo_x11_state* %25, i32 %26)
  %28 = icmp eq i8* %24, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %21
  %30 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %31 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %29
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %50 = load i32, i32* @XdndTypeList, align 4
  %51 = call i8* @XA(%struct.vo_x11_state* %49, i32 %50)
  %52 = load i32, i32* @XA_ATOM, align 4
  %53 = call i32* @x11_get_property(%struct.vo_x11_state* %47, i32 %48, i8* %51, i32 %52, i32 32, i32* %7)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dnd_select_format(%struct.vo_x11_state* %57, i32* %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @XFree(i32* %61)
  br label %63

63:                                               ; preds = %56, %46
  br label %88

64:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %66, 4
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %87 = call i32 @dnd_select_format(%struct.vo_x11_state* %85, i32* %86, i32 3)
  br label %88

88:                                               ; preds = %84, %63
  br label %227

89:                                               ; preds = %21
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %94 = load i32, i32* @XdndPosition, align 4
  %95 = call i8* @XA(%struct.vo_x11_state* %93, i32 %94)
  %96 = icmp eq i8* %92, %95
  br i1 %96, label %97, label %174

97:                                               ; preds = %89
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %105 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @ClientMessage, align 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @True, align 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %121 = load i32, i32* @XdndStatus, align 4
  %122 = call i8* @XA(%struct.vo_x11_state* %120, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 32, i32* %129, align 4
  %130 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %131 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %132, i32* %137, align 4
  %138 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %139 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %143, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 0, i32* %158, align 4
  %159 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %160 = load i32, i32* @XdndActionCopy, align 4
  %161 = call i8* @XA(%struct.vo_x11_state* %159, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  store i32 %162, i32* %167, align 4
  %168 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %169 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @False, align 4
  %173 = call i32 @XSendEvent(i32 %170, i32 %171, i32 %172, i32 0, %struct.TYPE_11__* %12)
  br label %226

174:                                              ; preds = %89
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %179 = load i32, i32* @XdndDrop, align 4
  %180 = call i8* @XA(%struct.vo_x11_state* %178, i32 %179)
  %181 = icmp eq i8* %177, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %174
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %190 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %192 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %195 = load i32, i32* @XdndSelection, align 4
  %196 = call i8* @XA(%struct.vo_x11_state* %194, i32 %195)
  %197 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %198 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %201 = load i32, i32* @DND_PROPERTY, align 4
  %202 = call i32 @XAs(%struct.vo_x11_state* %200, i32 %201)
  %203 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %204 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @XConvertSelection(i32 %193, i8* %196, i64 %199, i32 %202, i32 %205, i32 %211)
  br label %225

213:                                              ; preds = %174
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %218 = load i32, i32* @XdndLeave, align 4
  %219 = call i8* @XA(%struct.vo_x11_state* %217, i32 %218)
  %220 = icmp eq i8* %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = load %struct.vo*, %struct.vo** %3, align 8
  %223 = call i32 @dnd_reset(%struct.vo* %222)
  br label %224

224:                                              ; preds = %221, %213
  br label %225

225:                                              ; preds = %224, %182
  br label %226

226:                                              ; preds = %225, %97
  br label %227

227:                                              ; preds = %20, %226, %88
  ret void
}

declare dso_local i8* @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32* @x11_get_property(%struct.vo_x11_state*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @dnd_select_format(%struct.vo_x11_state*, i32*, i32) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @XSendEvent(i32, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @XConvertSelection(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @XAs(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @dnd_reset(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
