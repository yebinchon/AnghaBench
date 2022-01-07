; ModuleID = '/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_do_slab_stats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_do_slab_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i32, i32, %struct.slabinfo*, i32 }

@do_slab_stats.loops = internal global i32 0, align 4
@running = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"CHART %s.%s '' 'Memory Usage' 'B' '%s' '' line %d %d %s\0A\00", align 1
@CHART_TYPE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"slabmemory\00", align 1
@CHART_FAMILY = common dso_local global i8* null, align 8
@CHART_PRIO = common dso_local global i32 0, align 4
@PLUGIN_SLABINFO_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"DIMENSION %s '' absolute 1 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"CHART %s.%s '' 'Object Filling' '%%' '%s' '' line %d %d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"slabfilling\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"CHART %s.%s '' 'Memory waste' 'B' '%s' '' line %d %d %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"slabwaste\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"BEGIN %s.%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"SET %s = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SET %s = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_slab_stats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slabinfo*, align 8
  %4 = alloca %struct.slabinfo*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.slabinfo* null, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* null, %struct.slabinfo** %4, align 8
  br label %5

5:                                                ; preds = %137, %1
  %6 = load i64, i64* @running, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %143

8:                                                ; preds = %5
  %9 = call %struct.slabinfo* (...) @read_file_slabinfo()
  store %struct.slabinfo* %9, %struct.slabinfo** %3, align 8
  %10 = load i32, i32* @do_slab_stats.loops, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %8
  %16 = load i8*, i8** @CHART_TYPE, align 8
  %17 = load i8*, i8** @CHART_FAMILY, align 8
  %18 = load i32, i32* @CHART_PRIO, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i8*, i8** @PLUGIN_SLABINFO_NAME, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18, i32 %19, i8* %20)
  %22 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %22, %struct.slabinfo** %4, align 8
  br label %23

23:                                               ; preds = %31, %15
  %24 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %25 = icmp ne %struct.slabinfo* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %28 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %33 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %32, i32 0, i32 3
  %34 = load %struct.slabinfo*, %struct.slabinfo** %33, align 8
  store %struct.slabinfo* %34, %struct.slabinfo** %4, align 8
  br label %23

35:                                               ; preds = %23
  %36 = load i8*, i8** @CHART_TYPE, align 8
  %37 = load i8*, i8** @CHART_FAMILY, align 8
  %38 = load i32, i32* @CHART_PRIO, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %2, align 4
  %41 = load i8*, i8** @PLUGIN_SLABINFO_NAME, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %37, i32 %39, i32 %40, i8* %41)
  %43 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %43, %struct.slabinfo** %4, align 8
  br label %44

44:                                               ; preds = %52, %35
  %45 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %46 = icmp ne %struct.slabinfo* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %49 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47
  %53 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %54 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %53, i32 0, i32 3
  %55 = load %struct.slabinfo*, %struct.slabinfo** %54, align 8
  store %struct.slabinfo* %55, %struct.slabinfo** %4, align 8
  br label %44

56:                                               ; preds = %44
  %57 = load i8*, i8** @CHART_TYPE, align 8
  %58 = load i8*, i8** @CHART_FAMILY, align 8
  %59 = load i32, i32* @CHART_PRIO, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32, i32* %2, align 4
  %62 = load i8*, i8** @PLUGIN_SLABINFO_NAME, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %58, i32 %60, i32 %61, i8* %62)
  %64 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %64, %struct.slabinfo** %4, align 8
  br label %65

65:                                               ; preds = %73, %56
  %66 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %67 = icmp ne %struct.slabinfo* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %70 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68
  %74 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %75 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %74, i32 0, i32 3
  %76 = load %struct.slabinfo*, %struct.slabinfo** %75, align 8
  store %struct.slabinfo* %76, %struct.slabinfo** %4, align 8
  br label %65

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %8
  %79 = load i8*, i8** @CHART_TYPE, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %81, %struct.slabinfo** %4, align 8
  br label %82

82:                                               ; preds = %93, %78
  %83 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %84 = icmp ne %struct.slabinfo* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %87 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %90 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %95 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %94, i32 0, i32 3
  %96 = load %struct.slabinfo*, %struct.slabinfo** %95, align 8
  store %struct.slabinfo* %96, %struct.slabinfo** %4, align 8
  br label %82

97:                                               ; preds = %82
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i8*, i8** @CHART_TYPE, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %101, %struct.slabinfo** %4, align 8
  br label %102

102:                                              ; preds = %113, %97
  %103 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %104 = icmp ne %struct.slabinfo* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %107 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %110 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %108, i32 %111)
  br label %113

113:                                              ; preds = %105
  %114 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %115 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %114, i32 0, i32 3
  %116 = load %struct.slabinfo*, %struct.slabinfo** %115, align 8
  store %struct.slabinfo* %116, %struct.slabinfo** %4, align 8
  br label %102

117:                                              ; preds = %102
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %119 = load i8*, i8** @CHART_TYPE, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  store %struct.slabinfo* %121, %struct.slabinfo** %4, align 8
  br label %122

122:                                              ; preds = %133, %117
  %123 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %124 = icmp ne %struct.slabinfo* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %127 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %130 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %128, i32 %131)
  br label %133

133:                                              ; preds = %125
  %134 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %135 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %134, i32 0, i32 3
  %136 = load %struct.slabinfo*, %struct.slabinfo** %135, align 8
  store %struct.slabinfo* %136, %struct.slabinfo** %4, align 8
  br label %122

137:                                              ; preds = %122
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %139 = load i32, i32* @do_slab_stats.loops, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* @do_slab_stats.loops, align 4
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @sleep(i32 %141)
  br label %5

143:                                              ; preds = %5
  %144 = load i32, i32* @do_slab_stats.loops, align 4
  ret i32 %144
}

declare dso_local %struct.slabinfo* @read_file_slabinfo(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
