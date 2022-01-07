; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_SetTopItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_SetTopItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"setting top item %d, scroll %d\0A\00", align 1
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@SW_INVALIDATE = common dso_local global i32 0, align 4
@SW_ERASE = common dso_local global i32 0, align 4
@SW_SCROLLCHILDREN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64)* @LISTBOX_SetTopItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_SetTopItem(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i32 @LISTBOX_GetMaxTopIndex(%struct.TYPE_7__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %33, %36
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @LB_OKAY, align 4
  store i32 %47, i32* %4, align 4
  br label %172

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %159

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %9, align 4
  br label %148

72:                                               ; preds = %51
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %137

79:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %107, %85
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %10, align 4
  br label %88

110:                                              ; preds = %88
  br label %136

111:                                              ; preds = %79
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %132, %111
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %113

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %135, %110
  br label %147

137:                                              ; preds = %72
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %137, %136
  br label %148

148:                                              ; preds = %147, %58
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @SW_INVALIDATE, align 4
  %154 = load i32, i32* @SW_ERASE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SW_SCROLLCHILDREN, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @ScrollWindowEx(i32 %151, i32 0, i32 %152, i32* null, i32* null, i32 0, i32* null, i32 %157)
  br label %165

159:                                              ; preds = %48
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TRUE, align 4
  %164 = call i32 @InvalidateRect(i32 %162, i32* null, i32 %163)
  br label %165

165:                                              ; preds = %159, %148
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = call i32 @LISTBOX_UpdateScroll(%struct.TYPE_7__* %169)
  %171 = load i32, i32* @LB_OKAY, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %165, %46
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @LISTBOX_GetMaxTopIndex(%struct.TYPE_7__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @ScrollWindowEx(i32, i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @LISTBOX_UpdateScroll(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
