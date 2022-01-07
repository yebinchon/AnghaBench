; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_alloc.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i64, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"[pool %s] the proc->free_slot was not free. Let's search\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"[pool %s] no free scoreboard slot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_scoreboard_proc_alloc(%struct.fpm_scoreboard_s* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_scoreboard_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %8 = icmp ne %struct.fpm_scoreboard_s* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %138

13:                                               ; preds = %9
  %14 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %15 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %20 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %24 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %18
  %28 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %29 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %32 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %27
  %38 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %39 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %42 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %51 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %37, %27
  br label %55

55:                                               ; preds = %54, %18, %13
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i32, i32* @ZLOG_DEBUG, align 4
  %60 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %61 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @zlog(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %92, %58
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %67 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %72 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %81 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %95

91:                                               ; preds = %79, %70
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %64

95:                                               ; preds = %90, %64
  br label %96

96:                                               ; preds = %95, %55
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %102 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99, %96
  %106 = load i32, i32* @ZLOG_ERROR, align 4
  %107 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %108 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @zlog(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  store i32 -1, i32* %3, align 4
  br label %138

111:                                              ; preds = %99
  %112 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %113 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %114, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %125 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %130 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %137

131:                                              ; preds = %111
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %4, align 8
  %136 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %128
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %105, %12
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @zlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
