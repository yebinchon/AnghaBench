; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i8*, %struct.TYPE_11__, i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i8*, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32, i64 }

@IDC_EDITOR = common dso_local global i32 0, align 4
@IDC_PREVIEW = common dso_local global i32 0, align 4
@preview = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@margins = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_preview(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @IDC_EDITOR, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @IDC_PREVIEW, align 4
  %14 = call i32 @GetDlgItem(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GetDC(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @make_dc()
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %21 = bitcast %struct.TYPE_12__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 6) to i8*), i64 16, i1 false)
  %22 = bitcast %struct.TYPE_12__* %19 to i8*
  %23 = bitcast %struct.TYPE_12__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 16, i1 false)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @margins, i32 0, i32 3), align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @margins, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @margins, i32 0, i32 1), align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @margins, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 5), align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 1), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 0), align 8
  %59 = call i32 @SetRect(%struct.TYPE_12__* %3, i32 0, i32 0, i32 %57, i32 %58)
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 4), align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %1
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @CreateCompatibleDC(i32 %63)
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 4), align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 1), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 0), align 8
  %68 = call i32 @CreateCompatibleBitmap(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 4), align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @SelectObject(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %1
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 4), align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 1), align 8
  %77 = call i32 @draw_preview(i32 %75, %struct.TYPE_13__* %7, %struct.TYPE_12__* %3, i64 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 0), align 8
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %101

80:                                               ; preds = %72
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 2), align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @CreateCompatibleDC(i32 %84)
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 2), align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 1), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 3, i32 0), align 8
  %89 = call i32 @CreateCompatibleBitmap(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 2), align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @SelectObject(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %83, %80
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 2), align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @preview, i32 0, i32 1), align 8
  %99 = add nsw i64 %98, 1
  %100 = call i32 @draw_preview(i32 %96, %struct.TYPE_13__* %7, %struct.TYPE_12__* %97, i64 %99)
  br label %101

101:                                              ; preds = %93, %72
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DeleteDC(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ReleaseDC(i32 %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i32 @InvalidateRect(i32 %108, i32* null, i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @update_preview_buttons(i32 %111)
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @update_preview_statusbar(i32 %113)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @make_dc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetRect(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i8* @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i8*, i32) #1

declare dso_local i32 @draw_preview(i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @update_preview_buttons(i32) #1

declare dso_local i32 @update_preview_statusbar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
