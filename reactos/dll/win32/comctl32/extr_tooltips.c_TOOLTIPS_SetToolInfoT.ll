; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_SetToolInfoT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_SetToolInfoT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32*, i32, i32, i32, i32, i32 }

@TTTOOLINFOW_V1_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"tool %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"set string id %x\0A\00", align 1
@LPSTR_TEXTCALLBACKW = common dso_local global i32* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@TTTOOLINFOW_V2_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i64)* @TOOLTIPS_SetToolInfoT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_SetToolInfoT(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %214

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTTOOLINFOW_V1_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %214

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i32 @TOOLTIPS_GetToolFromInfoT(%struct.TYPE_13__* %23, %struct.TYPE_12__* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %214

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_INTRESOURCE(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %29
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @LOWORD(i32* %71)
  %73 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  br label %172

79:                                               ; preds = %29
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @TOOLTIPS_IsCallbackString(i32* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  br label %171

90:                                               ; preds = %79
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @IS_INTRESOURCE(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %106 = icmp ne i32* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @Free(i32* %110)
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %112, %95, %90
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %170

120:                                              ; preds = %115
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @lstrlenW(i32* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i8* @Alloc(i32 %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @strcpyW(i32* %139, i32* %142)
  br label %169

144:                                              ; preds = %120
  %145 = load i32, i32* @CP_ACP, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = ptrtoint i32* %148 to i32
  %150 = call i32 @MultiByteToWideChar(i32 %145, i32 0, i32 %149, i32 -1, i32* null, i32 0)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i8* @Alloc(i32 %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = load i32, i32* @CP_ACP, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = ptrtoint i32* %162 to i32
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @MultiByteToWideChar(i32 %159, i32 0, i32 %163, i32 -1, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %144, %123
  br label %170

170:                                              ; preds = %169, %115
  br label %171

171:                                              ; preds = %170, %86
  br label %172

172:                                              ; preds = %171, %68
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TTTOOLINFOW_V2_SIZE, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %184
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = call i32 @TOOLTIPS_GetTipText(%struct.TYPE_13__* %191, i32 %194, i64* %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %207 = call i32 @TOOLTIPS_Hide(%struct.TYPE_13__* %206)
  br label %212

208:                                              ; preds = %190
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i32 @TOOLTIPS_Show(%struct.TYPE_13__* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %205
  br label %213

213:                                              ; preds = %212, %184
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %213, %28, %21, %14
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @TOOLTIPS_GetToolFromInfoT(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i64 @TOOLTIPS_IsCallbackString(i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TOOLTIPS_GetTipText(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @TOOLTIPS_Hide(%struct.TYPE_13__*) #1

declare dso_local i32 @TOOLTIPS_Show(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
