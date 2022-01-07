; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleHScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleHScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8* }

@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIF_TRACKPOS = common dso_local global i8* null, align 8
@SB_VERT = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @LISTBOX_HandleHScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_HandleHScroll(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %126

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %125 [
    i32 134, label %17
    i32 133, label %28
    i32 132, label %39
    i32 131, label %63
    i32 129, label %87
    i32 128, label %96
    i32 135, label %114
    i32 130, label %118
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %18, i32 %25, i32 %26)
  br label %125

28:                                               ; preds = %15
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %29, i32 %36, i32 %37)
  br label %125

39:                                               ; preds = %15
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sub nsw i32 %54, %59
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %51, i32 %60, i32 %61)
  br label %125

63:                                               ; preds = %15
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = add nsw i32 %78, %83
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %75, i32 %84, i32 %85)
  br label %125

87:                                               ; preds = %15
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %88, i32 %93, i32 %94)
  br label %125

96:                                               ; preds = %15
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 16, i32* %97, align 8
  %98 = load i8*, i8** @SIF_TRACKPOS, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SB_VERT, align 4
  %104 = call i32 @GetScrollInfo(i32 %102, i32 %103, %struct.TYPE_7__* %7)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %105, i32 %111, i32 %112)
  br label %125

114:                                              ; preds = %15
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %115, i32 0, i32 %116)
  br label %125

118:                                              ; preds = %15
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %119, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %15, %118, %114, %96, %87, %74, %50, %28, %17
  br label %199

126:                                              ; preds = %3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %198

131:                                              ; preds = %126
  %132 = load i32, i32* %5, align 4
  switch i32 %132, label %197 [
    i32 134, label %133
    i32 133, label %140
    i32 132, label %147
    i32 131, label %157
    i32 129, label %167
    i32 128, label %171
    i32 135, label %184
    i32 130, label %187
  ]

133:                                              ; preds = %131
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %134, i32 %138)
  br label %197

140:                                              ; preds = %131
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %141, i32 %145)
  br label %197

147:                                              ; preds = %131
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %148, i32 %155)
  br label %197

157:                                              ; preds = %131
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %158, i32 %165)
  br label %197

167:                                              ; preds = %131
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %168, i32 %169)
  br label %197

171:                                              ; preds = %131
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 16, i32* %172, align 8
  %173 = load i8*, i8** @SIF_TRACKPOS, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %173, i8** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @SB_HORZ, align 4
  %179 = call i32 @GetScrollInfo(i32 %177, i32 %178, %struct.TYPE_7__* %7)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %180, i32 %182)
  br label %197

184:                                              ; preds = %131
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %185, i32 0)
  br label %197

187:                                              ; preds = %131
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %191, %194
  %196 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__* %188, i32 %195)
  br label %197

197:                                              ; preds = %131, %187, %184, %171, %167, %157, %147, %140, %133
  br label %198

198:                                              ; preds = %197, %126
  br label %199

199:                                              ; preds = %198, %125
  ret i32 0
}

declare dso_local i32 @LISTBOX_SetTopItem(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GetScrollInfo(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
