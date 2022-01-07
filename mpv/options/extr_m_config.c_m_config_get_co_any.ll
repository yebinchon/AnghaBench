; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co_any.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_option = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i64*, i32* }
%struct.m_config = type { i64 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@m_option_type_alias = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Warning: option %s%s was replaced with %s%s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Warning: option %s%s was replaced with %s%s and might be removed in the future.\0A\00", align 1
@m_option_type_removed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Option %s%s was removed: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Option %s%s was removed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"Warning: option %s%s is deprecated and might be removed in the future (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_config_option* (%struct.m_config*, i32)* @m_config_get_co_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_config_option* @m_config_get_co_any(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca %struct.m_config_option*, align 8
  %4 = alloca %struct.bstr, align 4
  %5 = alloca %struct.m_config*, align 8
  %6 = alloca %struct.m_config_option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bstr, align 4
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.m_config* %0, %struct.m_config** %5, align 8
  %12 = load %struct.m_config*, %struct.m_config** %5, align 8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.m_config_option* @m_config_get_co_raw(%struct.m_config* %12, i32 %14)
  store %struct.m_config_option* %15, %struct.m_config_option** %6, align 8
  %16 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %17 = icmp ne %struct.m_config_option* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.m_config_option* null, %struct.m_config_option** %3, align 8
  br label %163

19:                                               ; preds = %2
  %20 = load %struct.m_config*, %struct.m_config** %5, align 8
  %21 = getelementptr inbounds %struct.m_config, %struct.m_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %7, align 8
  %26 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %27 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, @m_option_type_alias
  br i1 %31, label %32, label %92

32:                                               ; preds = %19
  %33 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %34 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  %38 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %39 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %84

44:                                               ; preds = %32
  %45 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %46 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %44
  %50 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %51 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %struct.m_config*, %struct.m_config** %5, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %62 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %67 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 (%struct.m_config*, i8*, i8*, i32, i8*, ...) @MP_WARN(%struct.m_config* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %63, i8* %64, i8* %65, i64* %70)
  br label %81

72:                                               ; preds = %49
  %73 = load %struct.m_config*, %struct.m_config** %5, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %76 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (%struct.m_config*, i8*, i8*, i32, i8*, ...) @MP_WARN(%struct.m_config* %73, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %77, i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %72, %58
  %82 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %83 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %44, %32
  %85 = load %struct.m_config*, %struct.m_config** %5, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @bstr0(i8* %86)
  %88 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.m_config_option* @m_config_get_co_any(%struct.m_config* %85, i32 %90)
  store %struct.m_config_option* %91, %struct.m_config_option** %3, align 8
  br label %163

92:                                               ; preds = %19
  %93 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %94 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, @m_option_type_removed
  br i1 %98, label %99, label %131

99:                                               ; preds = %92
  %100 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %101 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %130, label %104

104:                                              ; preds = %99
  %105 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %106 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.m_config*, %struct.m_config** %5, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %116 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 (%struct.m_config*, i8*, i8*, i32, ...) @MP_FATAL(%struct.m_config* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %114, i32 %117, i8* %118)
  br label %127

120:                                              ; preds = %104
  %121 = load %struct.m_config*, %struct.m_config** %5, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %124 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.m_config*, i8*, i8*, i32, ...) @MP_FATAL(%struct.m_config* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32 %125)
  br label %127

127:                                              ; preds = %120, %112
  %128 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %129 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %99
  store %struct.m_config_option* null, %struct.m_config_option** %3, align 8
  br label %163

131:                                              ; preds = %92
  %132 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %133 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %159

138:                                              ; preds = %131
  %139 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %140 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %138
  %144 = load %struct.m_config*, %struct.m_config** %5, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %147 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %150 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = bitcast i64* %153 to i8*
  %155 = call i32 (%struct.m_config*, i8*, i8*, i32, i8*, ...) @MP_WARN(%struct.m_config* %144, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0), i8* %145, i32 %148, i8* %154)
  %156 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %157 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %143, %138
  br label %159

159:                                              ; preds = %158, %131
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  store %struct.m_config_option* %162, %struct.m_config_option** %3, align 8
  br label %163

163:                                              ; preds = %161, %130, %84, %18
  %164 = load %struct.m_config_option*, %struct.m_config_option** %3, align 8
  ret %struct.m_config_option* %164
}

declare dso_local %struct.m_config_option* @m_config_get_co_raw(%struct.m_config*, i32) #1

declare dso_local i32 @MP_WARN(%struct.m_config*, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @MP_FATAL(%struct.m_config*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
