; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_VSCROLL.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_VSCROLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SB_LINELEFT = common dso_local global i32 0, align 4
@g_yscroll = common dso_local global i32 0, align 4
@g_Wnd = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@SB_LINERIGHT = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_wnd_cheight = common dso_local global i32 0, align 4
@SB_PAGELEFT = common dso_local global i32 0, align 4
@SB_PAGERIGHT = common dso_local global i32 0, align 4
@SB_BOTTOM = common dso_local global i32 0, align 4
@SB_TOP = common dso_local global i32 0, align 4
@SB_THUMBPOSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @handle_WM_VSCROLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_WM_VSCROLL(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @LOWORD(i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SB_LINELEFT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* @g_yscroll, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @g_yscroll, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @g_yscroll, align 4
  %21 = load i32, i32* @g_yscroll, align 4
  %22 = call i32 @UI_MAX(i32 %21, i32 0)
  store i32 %22, i32* @g_yscroll, align 4
  %23 = load i32, i32* @g_Wnd, align 4
  %24 = load i32, i32* @SB_VERT, align 4
  %25 = load i32, i32* @g_yscroll, align 4
  %26 = call i32 @SetScrollPos(i32 %23, i32 %24, i32 %25, i32 1)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @g_yscroll, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @mi_scroll(i32 0, i32 %29)
  br label %150

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SB_LINERIGHT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* @g_yscroll, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @g_yscroll, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @g_yscroll, align 4
  %39 = load i32, i32* @g_yscroll, align 4
  %40 = load i32, i32* @g_height, align 4
  %41 = load i32, i32* @g_wnd_cheight, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @UI_MIN(i32 %39, i32 %42)
  store i32 %43, i32* @g_yscroll, align 4
  %44 = load i32, i32* @g_Wnd, align 4
  %45 = load i32, i32* @SB_VERT, align 4
  %46 = load i32, i32* @g_yscroll, align 4
  %47 = call i32 @SetScrollPos(i32 %44, i32 %45, i32 %46, i32 1)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @g_yscroll, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @mi_scroll(i32 0, i32 %50)
  br label %149

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SB_PAGELEFT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32, i32* @g_yscroll, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @g_wnd_cheight, align 4
  %59 = sdiv i32 %58, 2
  %60 = load i32, i32* @g_yscroll, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* @g_yscroll, align 4
  %62 = load i32, i32* @g_yscroll, align 4
  %63 = call i32 @UI_MAX(i32 %62, i32 0)
  store i32 %63, i32* @g_yscroll, align 4
  %64 = load i32, i32* @g_Wnd, align 4
  %65 = load i32, i32* @SB_VERT, align 4
  %66 = load i32, i32* @g_yscroll, align 4
  %67 = call i32 @SetScrollPos(i32 %64, i32 %65, i32 %66, i32 1)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @g_yscroll, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @mi_scroll(i32 0, i32 %70)
  br label %148

72:                                               ; preds = %52
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SB_PAGERIGHT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i32, i32* @g_yscroll, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @g_wnd_cheight, align 4
  %79 = sdiv i32 %78, 2
  %80 = load i32, i32* @g_yscroll, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* @g_yscroll, align 4
  %82 = load i32, i32* @g_yscroll, align 4
  %83 = load i32, i32* @g_height, align 4
  %84 = load i32, i32* @g_wnd_cheight, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @UI_MIN(i32 %82, i32 %85)
  store i32 %86, i32* @g_yscroll, align 4
  %87 = load i32, i32* @g_Wnd, align 4
  %88 = load i32, i32* @SB_VERT, align 4
  %89 = load i32, i32* @g_yscroll, align 4
  %90 = call i32 @SetScrollPos(i32 %87, i32 %88, i32 %89, i32 1)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @g_yscroll, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @mi_scroll(i32 0, i32 %93)
  br label %147

95:                                               ; preds = %72
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SB_BOTTOM, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i32, i32* @g_yscroll, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @g_height, align 4
  %102 = load i32, i32* @g_wnd_cheight, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* @g_yscroll, align 4
  %104 = load i32, i32* @g_Wnd, align 4
  %105 = load i32, i32* @SB_VERT, align 4
  %106 = load i32, i32* @g_yscroll, align 4
  %107 = call i32 @SetScrollPos(i32 %104, i32 %105, i32 %106, i32 1)
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @g_yscroll, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @mi_scroll(i32 0, i32 %110)
  br label %146

112:                                              ; preds = %95
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SB_TOP, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i32, i32* @g_yscroll, align 4
  store i32 %117, i32* %10, align 4
  store i32 0, i32* @g_yscroll, align 4
  %118 = load i32, i32* @g_Wnd, align 4
  %119 = load i32, i32* @SB_VERT, align 4
  %120 = load i32, i32* @g_yscroll, align 4
  %121 = call i32 @SetScrollPos(i32 %118, i32 %119, i32 %120, i32 1)
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @g_yscroll, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i32 @mi_scroll(i32 0, i32 %124)
  br label %145

126:                                              ; preds = %112
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @SB_THUMBPOSITION, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i32, i32* @g_yscroll, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @HIWORD(i32 %132)
  %134 = trunc i64 %133 to i16
  %135 = sext i16 %134 to i32
  store i32 %135, i32* @g_yscroll, align 4
  %136 = load i32, i32* @g_Wnd, align 4
  %137 = load i32, i32* @SB_VERT, align 4
  %138 = load i32, i32* @g_yscroll, align 4
  %139 = call i32 @SetScrollPos(i32 %136, i32 %137, i32 %138, i32 1)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @g_yscroll, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @mi_scroll(i32 0, i32 %142)
  br label %144

144:                                              ; preds = %130, %126
  br label %145

145:                                              ; preds = %144, %116
  br label %146

146:                                              ; preds = %145, %99
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147, %56
  br label %149

149:                                              ; preds = %148, %35
  br label %150

150:                                              ; preds = %149, %17
  ret i32 0
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @UI_MAX(i32, i32) #1

declare dso_local i32 @SetScrollPos(i32, i32, i32, i32) #1

declare dso_local i32 @mi_scroll(i32, i32) #1

declare dso_local i32 @UI_MIN(i32, i32) #1

declare dso_local i64 @HIWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
