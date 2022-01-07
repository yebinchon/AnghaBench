; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_security_on_initdialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_security_on_initdialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32*, i8*, i8*, i8*, i32 }

@DWLP_USER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_SEC_LISTVIEW = common dso_local global i32 0, align 4
@IDC_SEC_TRACKBAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"(%p)   (data: %p, listview: %p, trackbar: %p)\0A\00", align 1
@TBM_SETRANGE = common dso_local global i32 0, align 4
@NUM_TRACKBAR_POS = common dso_local global i64 0, align 8
@TBM_SETTICFREQ = common dso_local global i32 0, align 4
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"using imagelist: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ImageList_Create failed!\0A\00", align 1
@LVM_SETIMAGELIST = common dso_local global i32 0, align 4
@LVSIL_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"got 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"found %d zones\0A\00", align 1
@URLZONE_INTERNET = common dso_local global i64 0, align 8
@URLZONE_INTRANET = common dso_local global i64 0, align 8
@URLZONE_TRUSTED = common dso_local global i64 0, align 8
@URLZONE_UNTRUSTED = common dso_local global i64 0, align 8
@URLZONE_INVALID = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @security_on_initdialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_on_initdialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %7, align 8
  %9 = call %struct.TYPE_6__* @heap_alloc_zero(i32 64)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DWLP_USER, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = ptrtoint %struct.TYPE_6__* %12 to i32
  %14 = call i32 @SetWindowLongPtrW(i32 %10, i32 %11, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %208

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IDC_SEC_LISTVIEW, align 4
  %25 = call i8* @GetDlgItem(i32 %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IDC_SEC_TRACKBAR, align 4
  %30 = call i8* @GetDlgItem(i32 %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @EnableWindow(i8* %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.TYPE_6__* %39, i8* %42, i8* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @TBM_SETRANGE, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i64, i64* @NUM_TRACKBAR_POS, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @MAKELONG(i32 0, i64 %53)
  %55 = call i32 @SendMessageW(i8* %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @TBM_SETTICFREQ, align 4
  %60 = call i32 @SendMessageW(i8* %58, i32 %59, i32 1, i32 0)
  %61 = load i32, i32* @SM_CXICON, align 4
  %62 = call i32 @GetSystemMetrics(i32 %61)
  %63 = load i32, i32* @SM_CYICON, align 4
  %64 = call i32 @GetSystemMetrics(i32 %63)
  %65 = load i32, i32* @ILC_COLOR32, align 4
  %66 = load i32, i32* @ILC_MASK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ImageList_Create(i32 %62, i32 %64, i32 %67, i32 1, i32 1)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %19
  %80 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %208

82:                                               ; preds = %19
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @LVM_SETIMAGELIST, align 4
  %87 = load i32, i32* @LVSIL_NORMAL, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @SendMessageW(i8* %85, i32 %86, i32 %87, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = call i32 @security_enum_zones(%struct.TYPE_6__* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = call i32 @security_on_destroy(%struct.TYPE_6__* %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %208

103:                                              ; preds = %82
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = call i8* @heap_alloc(i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %103
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = call i32 @security_on_destroy(%struct.TYPE_6__* %122)
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %2, align 4
  br label %208

125:                                              ; preds = %103
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 16, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @heap_alloc(i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %125
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = call i32 @security_on_destroy(%struct.TYPE_6__* %141)
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %2, align 4
  br label %208

144:                                              ; preds = %125
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = load i64, i64* @URLZONE_INTERNET, align 8
  %157 = call i32 @add_zone_to_listview(%struct.TYPE_6__* %155, i64* %7, i64 %156)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = load i64, i64* @URLZONE_INTRANET, align 8
  %160 = call i32 @add_zone_to_listview(%struct.TYPE_6__* %158, i64* %7, i64 %159)
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = load i64, i64* @URLZONE_TRUSTED, align 8
  %163 = call i32 @add_zone_to_listview(%struct.TYPE_6__* %161, i64* %7, i64 %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = load i64, i64* @URLZONE_UNTRUSTED, align 8
  %166 = call i32 @add_zone_to_listview(%struct.TYPE_6__* %164, i64* %7, i64 %165)
  store i64 0, i64* %8, align 8
  br label %167

167:                                              ; preds = %203, %144
  %168 = load i64, i64* %8, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %168, %172
  br i1 %173, label %174, label %206

174:                                              ; preds = %167
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @IInternetZoneManager_GetZoneAt(i32 %177, i32 %180, i64 %181, i64* %6)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @SUCCEEDED(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %174
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* @URLZONE_INVALID, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i64, i64* %6, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* @URLZONE_UNTRUSTED, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193, %190
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = load i64, i64* %6, align 8
  %200 = call i32 @add_zone_to_listview(%struct.TYPE_6__* %198, i64* %7, i64 %199)
  br label %201

201:                                              ; preds = %197, %193
  br label %202

202:                                              ; preds = %201, %186, %174
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %8, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %8, align 8
  br label %167

206:                                              ; preds = %167
  %207 = load i32, i32* @TRUE, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %140, %121, %97, %79, %17
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_6__* @heap_alloc_zero(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i8* @GetDlgItem(i32, i32) #1

declare dso_local i32 @EnableWindow(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @SendMessageW(i8*, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i64) #1

declare dso_local i32 @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @security_enum_zones(%struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @security_on_destroy(%struct.TYPE_6__*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @add_zone_to_listview(%struct.TYPE_6__*, i64*, i64) #1

declare dso_local i32 @IInternetZoneManager_GetZoneAt(i32, i32, i64, i64*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
