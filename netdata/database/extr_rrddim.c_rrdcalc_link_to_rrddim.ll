; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrddim.c_rrdcalc_link_to_rrddim.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrddim.c_rrdcalc_link_to_rrddim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [36 x i8] c"Cannot insert the alarm index ID %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot allocate a new alarm.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdcalc_link_to_rrddim(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  br label %14

14:                                               ; preds = %129, %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %133

17:                                               ; preds = %14
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @simple_pattern_matches(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @simple_pattern_matches(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %128

35:                                               ; preds = %26, %17
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %61, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcmp(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcmp(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %52, %43, %35
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strlen(i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strlen(i32 %74)
  %76 = call i8* @alarm_name_with_dim(i32 %64, i32 %68, i32 %71, i32 %75)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %61
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @rrdcalc_exists(%struct.TYPE_15__* %80, i32 %83, i8* %84, i32 0, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @freez(i8* %88)
  br label %129

90:                                               ; preds = %79
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_17__* @rrdcalc_create_from_rrdcalc(%struct.TYPE_17__* %91, %struct.TYPE_15__* %92, i8* %93, i32 %96)
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %9, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = icmp ne %struct.TYPE_17__* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %90
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = call i32 @rrdcalc_add_to_host(%struct.TYPE_15__* %101, %struct.TYPE_17__* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %107 = bitcast %struct.TYPE_17__* %106 to i32*
  %108 = call i64 @avl_insert_lock(i32* %105, i32* %107)
  %109 = inttoptr i64 %108 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %109, %struct.TYPE_17__** %10, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = icmp ne %struct.TYPE_17__* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %100
  br label %125

119:                                              ; preds = %90
  %120 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %118
  br label %126

126:                                              ; preds = %125, %61
  br label %127

127:                                              ; preds = %126, %52
  br label %128

128:                                              ; preds = %127, %26
  br label %129

129:                                              ; preds = %128, %87
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %7, align 8
  br label %14

133:                                              ; preds = %14
  ret void
}

declare dso_local i64 @simple_pattern_matches(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i8* @alarm_name_with_dim(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @rrdcalc_exists(%struct.TYPE_15__*, i32, i8*, i32, i32) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local %struct.TYPE_17__* @rrdcalc_create_from_rrdcalc(%struct.TYPE_17__*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @rrdcalc_add_to_host(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i64 @avl_insert_lock(i32*, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
