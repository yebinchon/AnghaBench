; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_update.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@fpm_scoreboard = common dso_local global %struct.fpm_scoreboard_s* null, align 8
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Unable to update scoreboard: the SHM has not been found\00", align 1
@FPM_SCOREBOARD_ACTION_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_scoreboard_update(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fpm_scoreboard_s* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fpm_scoreboard_s*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.fpm_scoreboard_s* %8, %struct.fpm_scoreboard_s** %18, align 8
  %19 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %20 = icmp ne %struct.fpm_scoreboard_s* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %9
  %22 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** @fpm_scoreboard, align 8
  store %struct.fpm_scoreboard_s* %22, %struct.fpm_scoreboard_s** %18, align 8
  br label %23

23:                                               ; preds = %21, %9
  %24 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %25 = icmp ne %struct.fpm_scoreboard_s* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ZLOG_WARNING, align 4
  %28 = call i32 @zlog(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %186

29:                                               ; preds = %23
  %30 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %31 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %30, i32 0, i32 9
  %32 = call i32 @fpm_spinlock(i32* %31, i32 0)
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @FPM_SCOREBOARD_ACTION_SET, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %42 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %49 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %56 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %63 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %14, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %70 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %15, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %77 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %16, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %84 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %78
  br label %167

86:                                               ; preds = %29
  %87 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %88 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %96 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %102

99:                                               ; preds = %86
  %100 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %101 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %104 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %112 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %118

115:                                              ; preds = %102
  %116 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %117 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %109
  %119 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %120 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %128 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %134

131:                                              ; preds = %118
  %132 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %133 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %132, i32 0, i32 5
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %136 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %144 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %150

147:                                              ; preds = %134
  %148 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %149 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %148, i32 0, i32 6
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %152 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %153, %154
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %160 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %166

163:                                              ; preds = %150
  %164 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %165 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %164, i32 0, i32 7
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166, %85
  %168 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %169 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %172 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %177 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %180 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %18, align 8
  %183 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @fpm_unlock(i32 %184)
  br label %186

186:                                              ; preds = %181, %26
  ret void
}

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @fpm_spinlock(i32*, i32) #1

declare dso_local i32 @fpm_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
