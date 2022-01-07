; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_print_lavfi_help.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_print_lavfi_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Filter '%s' not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Filter '%s' is not usable in this context (wrong media \0Atypes or wrong number of inputs/outputs).\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Options:\0A\0A\00", align 1
@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" %-10s %-12s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" %3s%-23s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\0ATotal: %d options\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_lavfi_help(%struct.mp_log* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.TYPE_8__* @avfilter_get_by_name(i8* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @mp_err(%struct.mp_log* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %118

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @is_usable(%struct.TYPE_8__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @mp_err(%struct.mp_log* %30, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %35 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  store i32** %8, i32*** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %39 = load i32**, i32*** %9, align 8
  %40 = call %struct.TYPE_7__* @av_opt_next(i32** %39, %struct.TYPE_7__* null)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %12, align 8
  br label %41

41:                                               ; preds = %110, %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %114

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44
  br label %110

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @get_avopt_type_name(i64 %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i8*, i8** %13, align 8
  %69 = call i8* @mp_tprintf(i32 30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8* [ %69, %67 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %70 ]
  store i8* %72, i8** %14, align 8
  %73 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @NSTR(i32 %80)
  %82 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %76, i8* %77, i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %15, align 8
  br label %84

84:                                               ; preds = %71, %97
  %85 = load i32**, i32*** %9, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = call %struct.TYPE_7__* @av_opt_next(i32** %85, %struct.TYPE_7__* %86)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %15, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %84
  br label %107

97:                                               ; preds = %90
  %98 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @NSTR(i32 %104)
  %106 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %101, i32 %105)
  br label %84

107:                                              ; preds = %96
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %56
  %111 = load i32**, i32*** %9, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = call %struct.TYPE_7__* @av_opt_next(i32** %111, %struct.TYPE_7__* %112)
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %12, align 8
  br label %41

114:                                              ; preds = %41
  %115 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %20
  ret void
}

declare dso_local %struct.TYPE_8__* @avfilter_get_by_name(i8*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i8*) #1

declare dso_local i32 @is_usable(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @av_opt_next(i32**, %struct.TYPE_7__*) #1

declare dso_local i8* @get_avopt_type_name(i64) #1

declare dso_local i8* @mp_tprintf(i32, i8*, i8*) #1

declare dso_local i32 @NSTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
