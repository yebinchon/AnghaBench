; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_stat.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@settings = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<%d STATS \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" dump\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"SERVER_ERROR Out of memory generating stats\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"detailed\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" on\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" off\00", align 1
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"SERVER_ERROR Out of memory preparing to send stats\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @process_bin_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_stat(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = call i8* @binary_get_key(%struct.TYPE_21__* %9)
  store i8* %10, i8** %3, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 0), align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %18
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %1
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = call i32 @server_stats(i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)* @append_stats, %struct.TYPE_21__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = call i64 @get_stats(i8* null, i64 0, i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)* @append_stats, %struct.TYPE_21__* %50)
  br label %155

52:                                               ; preds = %44
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (...) @stats_reset()
  br label %154

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = call i32 @process_stat_settings(i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)* @append_stats, %struct.TYPE_21__* %63)
  br label %153

65:                                               ; preds = %58
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = call i8* @stats_prefix_dump(i32* %7)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79, %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %84 = call i32 @out_of_memory(%struct.TYPE_21__* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %180

91:                                               ; preds = %79
  %92 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %96 = call i32 @append_stats(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %92, i8* %93, i32 %94, %struct.TYPE_21__* %95)
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @free(i8* %97)
  br label %99

99:                                               ; preds = %91
  br label %116

100:                                              ; preds = %69
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strncmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 1), align 4
  br label %115

105:                                              ; preds = %100
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 1), align 4
  br label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %113 = call i32 @write_bin_error(%struct.TYPE_21__* %111, i32 %112, i32* null, i32 0)
  br label %180

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %99
  br label %152

117:                                              ; preds = %65
  %118 = load i8*, i8** %3, align 8
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %121 = call i64 @get_stats(i8* %118, i64 %119, i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)* @append_stats, %struct.TYPE_21__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %117
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = call i32 @out_of_memory(%struct.TYPE_21__* %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %146

132:                                              ; preds = %123
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @write_and_free(%struct.TYPE_21__* %133, i32* %137, i32 %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %132, %129
  br label %151

147:                                              ; preds = %117
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %150 = call i32 @write_bin_error(%struct.TYPE_21__* %148, i32 %149, i32* null, i32 0)
  br label %151

151:                                              ; preds = %147, %146
  br label %180

152:                                              ; preds = %116
  br label %153

153:                                              ; preds = %152, %62
  br label %154

154:                                              ; preds = %153, %56
  br label %155

155:                                              ; preds = %154, %47
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %157 = call i32 @append_stats(i8* null, i32 0, i8* null, i32 0, %struct.TYPE_21__* %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %165 = call i32 @out_of_memory(%struct.TYPE_21__* %164, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  br label %180

166:                                              ; preds = %155
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @write_and_free(%struct.TYPE_21__* %167, i32* %171, i32 %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %90, %110, %151, %166, %163
  ret void
}

declare dso_local i8* @binary_get_key(%struct.TYPE_21__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @server_stats(i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @append_stats(i8*, i32, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @get_stats(i8*, i64, i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)*, %struct.TYPE_21__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @stats_reset(...) #1

declare dso_local i32 @process_stat_settings(i32 (i8*, i32, i8*, i32, %struct.TYPE_21__*)*, %struct.TYPE_21__*) #1

declare dso_local i8* @stats_prefix_dump(i32*) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_21__*, i32, i32*, i32) #1

declare dso_local i32 @write_and_free(%struct.TYPE_21__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
