; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_stat.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i8* }

@SUBCOMMAND_TOKEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"CLIENT_ERROR bad command line\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"cachedump\00", align 1
@settings = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"CLIENT_ERROR stats cachedump not allowed\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"CLIENT_ERROR Illegal slab id\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"conns\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"SERVER_ERROR out of memory writing stats\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, i64)* @process_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stat(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = load i64, i64* @SUBCOMMAND_TOKEN, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = icmp ne %struct.TYPE_24__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %25 = call i32 @out_string(%struct.TYPE_24__* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %187

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = call i32 @server_stats(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)* @append_stats, %struct.TYPE_24__* %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = call i64 @get_stats(i8* null, i32 0, i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)* @append_stats, %struct.TYPE_24__* %32)
  br label %162

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 (...) @stats_reset()
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = call i32 @out_string(%struct.TYPE_24__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %187

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = call i32 @process_stats_detail(%struct.TYPE_24__* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @process_stats_detail(%struct.TYPE_24__* %53, i8* %57)
  br label %59

59:                                               ; preds = %52, %49
  br label %187

60:                                               ; preds = %42
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = call i32 @process_stat_settings(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)* @append_stats, %struct.TYPE_24__* %65)
  br label %159

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @settings, i32 0, i32 0), align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = call i32 @out_string(%struct.TYPE_24__* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %187

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = icmp ult i64 %78, 5
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = call i32 @out_string(%struct.TYPE_24__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %187

83:                                               ; preds = %77
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @safe_strtoul(i8* %87, i32* %10)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i64 3
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @safe_strtoul(i8* %94, i32* %11)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %99 = call i32 @out_string(%struct.TYPE_24__* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %187

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %106 = call i32 @out_string(%struct.TYPE_24__* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %187

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i8* @item_cachedump(i32 %108, i32 %109, i32* %9)
  store i8* %110, i8** %8, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @write_and_free(%struct.TYPE_24__* %111, i8* %112, i32 %113)
  br label %187

115:                                              ; preds = %67
  %116 = load i8*, i8** %7, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %121 = call i32 @process_stats_conns(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)* @append_stats, %struct.TYPE_24__* %120)
  br label %157

122:                                              ; preds = %115
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %127 = call i64 @get_stats(i8* %123, i32 %125, i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)* @append_stats, %struct.TYPE_24__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %122
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %137 = call i32 @out_of_memory(%struct.TYPE_24__* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %152

138:                                              ; preds = %129
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @write_and_free(%struct.TYPE_24__* %139, i8* %143, i32 %147)
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  store i8* null, i8** %151, align 8
  br label %152

152:                                              ; preds = %138, %135
  br label %156

153:                                              ; preds = %122
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %155 = call i32 @out_string(%struct.TYPE_24__* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %152
  br label %187

157:                                              ; preds = %119
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158, %64
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %29
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %164 = call i32 @append_stats(i32* null, i32 0, i32* null, i32 0, %struct.TYPE_24__* %163)
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %172 = call i32 @out_of_memory(%struct.TYPE_24__* %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %187

173:                                              ; preds = %162
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @write_and_free(%struct.TYPE_24__* %174, i8* %178, i32 %182)
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  store i8* null, i8** %186, align 8
  br label %187

187:                                              ; preds = %23, %38, %59, %74, %80, %97, %104, %107, %156, %173, %170
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @out_string(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @server_stats(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)*, %struct.TYPE_24__*) #1

declare dso_local i32 @append_stats(i32*, i32, i32*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @get_stats(i8*, i32, i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)*, %struct.TYPE_24__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stats_reset(...) #1

declare dso_local i32 @process_stats_detail(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @process_stat_settings(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)*, %struct.TYPE_24__*) #1

declare dso_local i32 @safe_strtoul(i8*, i32*) #1

declare dso_local i8* @item_cachedump(i32, i32, i32*) #1

declare dso_local i32 @write_and_free(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @process_stats_conns(i32 (i32*, i32, i32*, i32, %struct.TYPE_24__*)*, %struct.TYPE_24__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_24__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
