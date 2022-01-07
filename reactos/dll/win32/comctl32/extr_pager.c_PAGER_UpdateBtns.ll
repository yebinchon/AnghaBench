; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_UpdateBtns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_UpdateBtns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@PGF_INVISIBLE = common dso_local global i64 0, align 8
@PGF_GRAYED = common dso_local global i64 0, align 8
@PGF_NORMAL = common dso_local global i8* null, align 8
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@WM_NCPAINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32)* @PAGER_UpdateBtns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PAGER_UpdateBtns(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @PAGER_GetButtonRects(%struct.TYPE_4__* %20, i32* %12, i32* %13, i32 %21)
  %23 = call i32 @GetCursorPos(i32* %11)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ScreenToClient(i32 %26, i32* %11)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PGF_INVISIBLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PGF_GRAYED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** @PGF_NORMAL, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %38
  br label %66

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @PtInRect(i32* %12, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* @PGF_GRAYED, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %65

61:                                               ; preds = %53, %50
  %62 = load i64, i64* @PGF_INVISIBLE, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i64, i64* %5, align 8
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i64, i64* @PGF_INVISIBLE, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* @PGF_INVISIBLE, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %117

76:                                               ; preds = %66
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PGF_INVISIBLE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PGF_GRAYED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88, %82
  %95 = load i8*, i8** @PGF_NORMAL, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %94, %88
  br label %116

100:                                              ; preds = %76
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @PtInRect(i32* %13, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* @PGF_GRAYED, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %115

111:                                              ; preds = %103, %100
  %112 = load i64, i64* @PGF_INVISIBLE, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %69
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @PGF_INVISIBLE, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PGF_INVISIBLE, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = icmp ne i32 %121, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %117
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @PGF_INVISIBLE, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PGF_INVISIBLE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = icmp ne i32 %133, %139
  br label %141

141:                                              ; preds = %129, %117
  %142 = phi i1 [ true, %117 ], [ %140, %129 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %151 = load i32, i32* @SWP_NOSIZE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @SWP_NOMOVE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SWP_NOZORDER, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @SWP_NOACTIVATE, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @SetWindowPos(i32 %149, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %158)
  br label %160

160:                                              ; preds = %146, %141
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br label %172

172:                                              ; preds = %166, %160
  %173 = phi i1 [ true, %160 ], [ %171, %166 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @WM_NCPAINT, align 4
  %182 = call i32 @SendMessageW(i32 %180, i32 %181, i32 0, i32 0)
  br label %183

183:                                              ; preds = %177, %172
  ret void
}

declare dso_local i32 @PAGER_GetButtonRects(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @GetCursorPos(i32*) #1

declare dso_local i32 @ScreenToClient(i32, i32*) #1

declare dso_local i64 @PtInRect(i32*, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
