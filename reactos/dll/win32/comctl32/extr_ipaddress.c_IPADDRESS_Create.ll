; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ANSI_VAR_FONT = common dso_local global i32 0, align 4
@SPI_GETICONTITLELOGFONT = common dso_local global i32 0, align 4
@WC_EDITW = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IP_SUBCLASS_PROP = common dso_local global i32 0, align 4
@GWLP_WNDPROC = common dso_local global i32 0, align 4
@IPADDRESS_SubclassProc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_17__*)* @IPADDRESS_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IPADDRESS_Create(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GWL_STYLE, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GWL_STYLE, align 4
  %21 = call i32 @GetWindowLongW(i32 %19, i32 %20)
  %22 = load i32, i32* @WS_BORDER, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @SetWindowLongW(i32 %17, i32 %18, i32 %24)
  %26 = call %struct.TYPE_16__* @heap_alloc_zero(i32 24)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %169

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = ptrtoint %struct.TYPE_16__* %32 to i32
  %34 = call i64 @SetWindowLongPtrW(i32 %31, i32 0, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @GetClientRect(i32 %35, %struct.TYPE_13__* %7)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %38, %40
  %42 = sdiv i32 %41, 4
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @ANSI_VAR_FONT, align 4
  %63 = call i64 @GetStockObject(i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @GetObjectW(i64 %64, i32 4, %struct.TYPE_14__* %14)
  %66 = load i32, i32* @SPI_GETICONTITLELOGFONT, align 4
  %67 = call i32 @SystemParametersInfoW(i32 %66, i32 0, %struct.TYPE_14__* %13, i32 0)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcpyW(i32 %69, i32 %71)
  %73 = call i64 @CreateFontIndirectW(%struct.TYPE_14__* %13)
  store i64 %73, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %163, %30
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %166

77:                                               ; preds = %74
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %82
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %15, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32 255, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = add nsw i32 %93, 6
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %97, %101
  %103 = sub nsw i32 %102, 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @WC_EDITW, align 4
  %106 = load i32, i32* @WS_CHILD, align 4
  %107 = load i32, i32* @WS_VISIBLE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @ES_CENTER, align 4
  %110 = or i32 %108, %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %116, %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %121, %123
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @GWLP_HINSTANCE, align 4
  %128 = call i64 @GetWindowLongPtrW(i32 %126, i32 %127)
  %129 = trunc i64 %128 to i32
  %130 = call i32 @CreateWindowW(i32 %105, i32* null, i32 %110, i32 %112, i64 %114, i32 %119, i64 %124, i32 %125, i32 1, i32 %129, i32* null)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @WM_SETFONT, align 4
  %137 = load i64, i64* %11, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @SendMessageW(i32 %135, i32 %136, i32 %138, i32 %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IP_SUBCLASS_PROP, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @SetPropW(i32 %143, i32 %144, i32 %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GWLP_WNDPROC, align 4
  %151 = load i64, i64* @IPADDRESS_SubclassProc, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i64 @SetWindowLongPtrW(i32 %149, i32 %150, i32 %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @EnableWindow(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %77
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %74

166:                                              ; preds = %74
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = call i32 @IPADDRESS_UpdateText(%struct.TYPE_16__* %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %29
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local %struct.TYPE_16__* @heap_alloc_zero(i32) #1

declare dso_local i64 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i64 @CreateFontIndirectW(%struct.TYPE_14__*) #1

declare dso_local i32 @CreateWindowW(i32, i32*, i32, i32, i64, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SetPropW(i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @IPADDRESS_UpdateText(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
