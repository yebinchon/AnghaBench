; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_queue_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_queue_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, i32, i32, i32, double, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.demux_stream* }
%struct.demux_stream = type { double }
%struct.TYPE_3__ = type { i32 }
%struct.demux_cached_range = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [22 x i8] c"queuing seek to %f%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (cascade)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SEEK_CACHED = common dso_local global i32 0, align 4
@SEEK_SATAN = common dso_local global i32 0, align 4
@SEEK_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Cached seek not possible.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Cannot seek in this file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demux_internal*, double, i32, i32)* @queue_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_seek(%struct.demux_internal* %0, double %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.demux_internal*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.demux_cached_range*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.demux_stream*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load double, double* %7, align 8
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  %18 = fcmp oeq double %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %171

20:                                               ; preds = %4
  %21 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %22 = load double, double* %7, align 8
  %23 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %24 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %22, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SEEK_CACHED, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @SEEK_CACHED, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SEEK_SATAN, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @SEEK_SATAN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SEEK_FORCE, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @SEEK_FORCE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %52 = load double, double* %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.demux_cached_range* @find_cache_seek_range(%struct.demux_internal* %51, double %52, i32 %53)
  store %struct.demux_cached_range* %54, %struct.demux_cached_range** %13, align 8
  %55 = load %struct.demux_cached_range*, %struct.demux_cached_range** %13, align 8
  %56 = icmp ne %struct.demux_cached_range* %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %20
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %62 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %171

63:                                               ; preds = %57
  %64 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %65 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %64, i32 0, i32 10
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %75 = call i32 @MP_WARN(%struct.demux_internal* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %171

76:                                               ; preds = %70, %63
  br label %77

77:                                               ; preds = %76, %20
  %78 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %79 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %81 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %83 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %82, i32 0, i32 3
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %86 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @clear_reader_state(%struct.demux_internal* %87, i32 %88)
  %90 = load %struct.demux_cached_range*, %struct.demux_cached_range** %13, align 8
  %91 = icmp ne %struct.demux_cached_range* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %77
  %93 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %94 = load %struct.demux_cached_range*, %struct.demux_cached_range** %13, align 8
  %95 = load double, double* %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @execute_cache_seek(%struct.demux_internal* %93, %struct.demux_cached_range* %94, double %95, i32 %96)
  br label %109

98:                                               ; preds = %77
  %99 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %100 = call i32 @switch_to_fresh_cache_range(%struct.demux_internal* %99)
  %101 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %102 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %105 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load double, double* %7, align 8
  %107 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %108 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %107, i32 0, i32 6
  store double %106, double* %108, align 8
  br label %109

109:                                              ; preds = %98, %92
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %154, %109
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %113 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %157

116:                                              ; preds = %110
  %117 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %118 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %117, i32 0, i32 9
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.demux_stream*, %struct.demux_stream** %124, align 8
  store %struct.demux_stream* %125, %struct.demux_stream** %15, align 8
  %126 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %127 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %116
  %131 = load %struct.demux_stream*, %struct.demux_stream** %15, align 8
  %132 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %131, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = load double, double* @MP_NOPTS_VALUE, align 8
  %135 = fcmp oeq double %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load double, double* %7, align 8
  %138 = load %struct.demux_stream*, %struct.demux_stream** %15, align 8
  %139 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %138, i32 0, i32 0
  store double %137, double* %139, align 8
  br label %140

140:                                              ; preds = %136, %130
  %141 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %142 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %141, i32 0, i32 9
  %143 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %143, i64 %145
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.demux_stream*, %struct.demux_stream** %148, align 8
  %150 = call i32 @back_demux_see_packets(%struct.demux_stream* %149)
  br label %151

151:                                              ; preds = %140, %116
  %152 = load %struct.demux_stream*, %struct.demux_stream** %15, align 8
  %153 = call i32 @wakeup_ds(%struct.demux_stream* %152)
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %110

157:                                              ; preds = %110
  %158 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %159 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %164 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  %169 = call i32 @execute_seek(%struct.demux_internal* %168)
  br label %170

170:                                              ; preds = %167, %162, %157
  store i32 1, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %73, %60, %19
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, ...) #1

declare dso_local %struct.demux_cached_range* @find_cache_seek_range(%struct.demux_internal*, double, i32) #1

declare dso_local i32 @MP_WARN(%struct.demux_internal*, i8*) #1

declare dso_local i32 @clear_reader_state(%struct.demux_internal*, i32) #1

declare dso_local i32 @execute_cache_seek(%struct.demux_internal*, %struct.demux_cached_range*, double, i32) #1

declare dso_local i32 @switch_to_fresh_cache_range(%struct.demux_internal*) #1

declare dso_local i32 @back_demux_see_packets(%struct.demux_stream*) #1

declare dso_local i32 @wakeup_ds(%struct.demux_stream*) #1

declare dso_local i32 @execute_seek(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
