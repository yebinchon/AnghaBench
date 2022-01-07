; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_LineScroll_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_LineScroll_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SW_INVALIDATE = common dso_local global i32 0, align 4
@EF_HSCROLL_TRACK = common dso_local global i32 0, align 4
@EN_HSCROLL = common dso_local global i32 0, align 4
@EF_VSCROLL_TRACK = common dso_local global i32 0, align 4
@EN_VSCROLL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64)* @EDIT_EM_LineScroll_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_EM_LineScroll_internal(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %15, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sdiv i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ES_MULTILINE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  br label %45

35:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__* %36, i64 %39, i32 %40)
  %42 = call i64 @LOWORD(i32 %41)
  %43 = trunc i64 %42 to i16
  %44 = sext i16 %43 to i64
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %35, %31
  %46 = load i64, i64* %5, align 8
  %47 = sub nsw i64 0, %46
  %48 = load i64, i64* %8, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %57, %58
  %60 = icmp sgt i64 %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %61, %53
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @max(i32 0, i64 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp sge i64 %74, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %84, %85
  %87 = call i64 @max(i32 0, i64 %86)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %81, %67
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul nsw i64 %93, %96
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %88
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %100, %88
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ES_MULTILINE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  br label %129

119:                                              ; preds = %103
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = sdiv i64 %120, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %119, %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @GetClientRect(i32 %132, i32* %10)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 9
  %136 = call i32 @IntersectRect(i32* %11, i32* %10, %struct.TYPE_8__* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %5, align 8
  %141 = sub nsw i64 0, %140
  %142 = load i64, i64* %6, align 8
  %143 = load i32, i32* @SW_INVALIDATE, align 4
  %144 = call i32 @ScrollWindowEx(i32 %139, i64 %141, i64 %142, i32* null, i32* %11, i32* null, i32* null, i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_7__* %145)
  br label %147

147:                                              ; preds = %129, %100
  %148 = load i64, i64* %5, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EF_HSCROLL_TRACK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = load i32, i32* @EN_HSCROLL, align 4
  %160 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_7__* %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %150, %147
  %162 = load i64, i64* %6, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @EF_VSCROLL_TRACK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = load i32, i32* @EN_VSCROLL, align 4
  %174 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_7__* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %164, %161
  %176 = load i32, i32* @TRUE, align 4
  ret i32 %176
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @IntersectRect(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ScrollWindowEx(i32, i64, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
