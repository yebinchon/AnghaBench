; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_normal.c_clear_showcmd.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_normal.c_clear_showcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@p_sc = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@curwin = common dso_local global %struct.TYPE_11__* null, align 8
@VIsual_mode = common dso_local global i8 0, align 1
@Ctrl_V = common dso_local global i8 0, align 1
@showcmd_buf = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%ldx%ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@p_sel = common dso_local global i8* null, align 8
@NUL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@SHOWCMD_COLS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@showcmd_visual = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@showcmd_is_clear = common dso_local global i64 0, align 8
@empty_option = common dso_local global i64* null, align 8
@p_sbr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_showcmd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @p_sc, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %170

15:                                               ; preds = %0
  %16 = load i64, i64* @VIsual_active, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %159

18:                                               ; preds = %15
  %19 = call i32 (...) @char_avail()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %159, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VIsual, i32 0, i32 0), align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lt(i32 %24, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VIsual, i32 0, i32 0), align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VIsual, i32 0, i32 0), align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %2, align 8
  %48 = load i8, i8* @VIsual_mode, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @Ctrl_V, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @getvcols(%struct.TYPE_11__* %54, %struct.TYPE_10__* %56, %struct.TYPE_9__* @VIsual, i64* %3, i64* %4)
  %58 = load i64*, i64** @showcmd_buf, align 8
  %59 = bitcast i64* %58 to i8*
  %60 = load i64, i64* %2, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %3, align 8
  %64 = sub nsw i64 %62, %63
  %65 = add nsw i64 %64, 1
  %66 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %65)
  br label %153

67:                                               ; preds = %42
  %68 = load i8, i8* @VIsual_mode, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 86
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @VIsual, i32 0, i32 0), align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71, %67
  %79 = load i64*, i64** @showcmd_buf, align 8
  %80 = bitcast i64* %79 to i8*
  %81 = load i64, i64* %2, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %152

84:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %85 = load i32, i32* %1, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call i64* @ml_get_pos(%struct.TYPE_9__* @VIsual)
  store i64* %88, i64** %7, align 8
  %89 = call i64* (...) @ml_get_cursor()
  store i64* %89, i64** %8, align 8
  br label %93

90:                                               ; preds = %84
  %91 = call i64* (...) @ml_get_cursor()
  store i64* %91, i64** %7, align 8
  %92 = call i64* @ml_get_pos(%struct.TYPE_9__* @VIsual)
  store i64* %92, i64** %8, align 8
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i8*, i8** @p_sel, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 101
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i64*, i64** %7, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = icmp ule i64* %100, %101
  %103 = zext i1 %102 to i32
  br label %109

104:                                              ; preds = %94
  %105 = load i64*, i64** %7, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = icmp ult i64* %105, %106
  %108 = zext i1 %107 to i32
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i32 [ %103, %99 ], [ %108, %104 ]
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NUL, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 0, i32 1
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %136

126:                                              ; preds = %112
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i64*, i64** %7, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64* %135, i64** %7, align 8
  br label %94

136:                                              ; preds = %121, %109
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i64*, i64** @showcmd_buf, align 8
  %142 = bitcast i64* %141 to i8*
  %143 = load i32, i32* %11, align 4
  %144 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %151

145:                                              ; preds = %136
  %146 = load i64*, i64** @showcmd_buf, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %140
  br label %152

152:                                              ; preds = %151, %78
  br label %153

153:                                              ; preds = %152, %53
  %154 = load i64, i64* @NUL, align 8
  %155 = load i64*, i64** @showcmd_buf, align 8
  %156 = load i64, i64* @SHOWCMD_COLS, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %154, i64* %157, align 8
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* @showcmd_visual, align 4
  br label %168

159:                                              ; preds = %18, %15
  %160 = load i64, i64* @NUL, align 8
  %161 = load i64*, i64** @showcmd_buf, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* @showcmd_visual, align 4
  %164 = load i64, i64* @showcmd_is_clear, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %170

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %153
  %169 = call i32 (...) @display_showcmd()
  br label %170

170:                                              ; preds = %168, %166, %14
  ret void
}

declare dso_local i32 @char_avail(...) #1

declare dso_local i32 @lt(i32, i32) #1

declare dso_local i32 @getvcols(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i64*, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64* @ml_get_pos(%struct.TYPE_9__*) #1

declare dso_local i64* @ml_get_cursor(...) #1

declare dso_local i32 @display_showcmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
