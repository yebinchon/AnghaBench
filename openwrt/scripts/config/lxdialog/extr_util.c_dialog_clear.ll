; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_dialog_clear.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_dialog_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.subtitle_list*, i32*, %struct.TYPE_3__ }
%struct.subtitle_list = type { i8*, %struct.subtitle_list* }
%struct.TYPE_3__ = type { i32 }

@stdscr = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"[...] \00", align 1
@ACS_RARROW = common dso_local global i8 0, align 1
@ACS_HLINE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dialog_clear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.subtitle_list*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @stdscr, align 4
  %9 = call i32 @getmaxy(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @stdscr, align 4
  %11 = call i32 @getmaxx(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @stdscr, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 2, i32 0), align 8
  %16 = call i32 @attr_clear(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 1), align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %138

19:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* @stdscr, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 2, i32 0), align 8
  %22 = call i32 @wattrset(i32 %20, i32 %21)
  %23 = load i32, i32* @stdscr, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 1), align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i32 @mvwaddstr(i32 %23, i32 0, i32 1, i8* %25)
  %27 = load %struct.subtitle_list*, %struct.subtitle_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0), align 8
  store %struct.subtitle_list* %27, %struct.subtitle_list** %6, align 8
  br label %28

28:                                               ; preds = %39, %19
  %29 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %30 = icmp ne %struct.subtitle_list* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %33 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 3
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %41 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %40, i32 0, i32 1
  %42 = load %struct.subtitle_list*, %struct.subtitle_list** %41, align 8
  store %struct.subtitle_list* %42, %struct.subtitle_list** %6, align 8
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* @stdscr, align 4
  %45 = call i32 @wmove(i32 %44, i32 1, i32 1)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %47, 2
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %51 = load i32, i32* @stdscr, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @waddstr(i32 %51, i8* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = sub nsw i32 %55, 2
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sub nsw i32 %56, %58
  %60 = sub nsw i32 %54, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %50, %43
  %62 = load %struct.subtitle_list*, %struct.subtitle_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0), align 8
  store %struct.subtitle_list* %62, %struct.subtitle_list** %6, align 8
  br label %63

63:                                               ; preds = %118, %61
  %64 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %65 = icmp ne %struct.subtitle_list* %64, null
  br i1 %65, label %66, label %122

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @stdscr, align 4
  %71 = load i8, i8* @ACS_RARROW, align 1
  %72 = call i32 @waddch(i32 %70, i8 signext %71)
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @stdscr, align 4
  %81 = call i32 @waddch(i32 %80, i8 signext 32)
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %88 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* @stdscr, align 4
  %94 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %95 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = call i32 @waddstr(i32 %93, i8* %99)
  store i32 0, i32* %5, align 4
  br label %108

101:                                              ; preds = %85
  %102 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %103 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %101, %92
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @stdscr, align 4
  %113 = call i32 @waddch(i32 %112, i8 signext 32)
  br label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.subtitle_list*, %struct.subtitle_list** %6, align 8
  %120 = getelementptr inbounds %struct.subtitle_list, %struct.subtitle_list* %119, i32 0, i32 1
  %121 = load %struct.subtitle_list*, %struct.subtitle_list** %120, align 8
  store %struct.subtitle_list* %121, %struct.subtitle_list** %6, align 8
  br label %63

122:                                              ; preds = %63
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %134, %122
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %2, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* @stdscr, align 4
  %132 = load i8, i8* @ACS_HLINE, align 1
  %133 = call i32 @waddch(i32 %131, i8 signext %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %125

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %0
  %139 = load i32, i32* @stdscr, align 4
  %140 = call i32 @wnoutrefresh(i32 %139)
  ret void
}

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @attr_clear(i32, i32, i32, i32) #1

declare dso_local i32 @wattrset(i32, i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @waddstr(i32, i8*) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local i32 @wnoutrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
