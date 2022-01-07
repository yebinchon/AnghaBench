; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32*, i64, i32, i32, i32, i32, i8*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i8* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i64, i64, i8*, i8* }

@DTHT_NODATEMASK = common dso_local global i32 0, align 4
@DTHT_NONE = common dso_local global i32 0, align 4
@DT_STRING = common dso_local global i32 0, align 4
@FULLDAY = common dso_local global i32 0, align 4
@DTHT_MCPOPUP = common dso_local global i64 0, align 8
@MCM_GETMINREQRECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@DTS_RIGHTALIGN = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@DTN_CLOSEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"update calendar %04d/%02d/%02d\0A\00", align 1
@MCM_SETCURSEL = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@DTN_DROPDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dt:%p mc:%p mc parent:%p, desktop:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i8*)* @DATETIME_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_LButtonDown(%struct.TYPE_22__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = bitcast %struct.TYPE_21__* %8 to { i8*, i8* }*
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %18, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @DATETIME_HitTest(%struct.TYPE_22__* %17, i8* %20, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SetFocus(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DTHT_NODATEMASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DTHT_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DTHT_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %76

45:                                               ; preds = %36
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DT_STRING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @DATETIME_GetPrevDateField(%struct.TYPE_22__* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %233

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FULLDAY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %233

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @DATETIME_SetSelectedField(%struct.TYPE_22__* %78, i32 %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DTHT_MCPOPUP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %227

86:                                               ; preds = %77
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MCM_GETMINREQRECT, align 4
  %91 = ptrtoint %struct.TYPE_20__* %10 to i32
  %92 = call i32 @SendMessageW(i32 %89, i32 %90, i32 0, i32 %91)
  %93 = load i8*, i8** @TRUE, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 12
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DTS_RIGHTALIGN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %86
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %108 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sub i64 0, %113
  %115 = getelementptr i8, i8* %106, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i8* %115, i8** %116, align 8
  br label %123

117:                                              ; preds = %86
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %117, %102
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @OffsetRect(%struct.TYPE_20__* %10, i8* %130, i8* %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = bitcast %struct.TYPE_20__* %10 to %struct.TYPE_21__*
  %138 = call i32 @MapWindowPoints(i32 %136, i32 0, %struct.TYPE_21__* %137, i32 2)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = ptrtoint i8* %147 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = inttoptr i64 %152 to i8*
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %155, %157
  %159 = call i32 @SetWindowPos(i32 %141, i32 0, i8* %143, i64 %145, i8* %153, i64 %158, i32 0)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @IsWindowVisible(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %123
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SW_HIDE, align 4
  %170 = call i32 @ShowWindow(i32 %168, i32 %169)
  %171 = load i8*, i8** @FALSE, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 7
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %175 = load i32, i32* @DTN_CLOSEUP, align 4
  %176 = call i32 @DATETIME_SendSimpleNotify(%struct.TYPE_22__* %174, i32 %175)
  br label %215

177:                                              ; preds = %123
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 8
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %12, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %185, i32 %188)
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @MCM_SETCURSEL, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 8
  %196 = ptrtoint %struct.TYPE_19__* %195 to i32
  %197 = call i32 @SendMessageW(i32 %192, i32 %193, i32 0, i32 %196)
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 7
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %177
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SW_SHOW, align 4
  %207 = call i32 @ShowWindow(i32 %205, i32 %206)
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %209 = load i32, i32* @DTN_DROPDOWN, align 4
  %210 = call i32 @DATETIME_SendSimpleNotify(%struct.TYPE_22__* %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %177
  %212 = load i8*, i8** @TRUE, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 7
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %165
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (...) @GetDesktopWindow()
  %226 = call i32 (i8*, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %221, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %215, %77
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** @TRUE, align 8
  %232 = call i32 @InvalidateRect(i32 %230, i32* null, i8* %231)
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %74, %62
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @DATETIME_HitTest(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i32 @DATETIME_GetPrevDateField(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @DATETIME_SetSelectedField(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @MapWindowPoints(i32, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @DATETIME_SendSimpleNotify(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
