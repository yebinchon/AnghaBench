; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_longlong.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_longlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.bstr = type { i64 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"The %.*s option must be an integer: %.*s\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@M_OPT_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"The %.*s option must be >= %d: %.*s\0A\00", align 1
@M_OPT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"The %.*s option must be <= %d: %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.TYPE_3__*, i64, i64, i8*)* @parse_longlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_longlong(%struct.mp_log* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %20, i32* %6, align 4
  br label %108

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @bstrtoll(i64 %23, %struct.bstr* %12, i32 10)
  store i64 %24, i64* %13, align 8
  %25 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @bstrtoll(i64 %30, %struct.bstr* %12, i32 0)
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @BSTR_P(i64 %39)
  %41 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BSTR_P(i64 %42)
  %44 = call i32 (%struct.mp_log*, i8*, i32, i32, ...) @mp_err(%struct.mp_log* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %45, i32* %6, align 4
  br label %108

46:                                               ; preds = %32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @M_OPT_MIN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @BSTR_P(i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @BSTR_P(i64 %69)
  %71 = call i32 (%struct.mp_log*, i8*, i32, i32, ...) @mp_err(%struct.mp_log* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i32 %70)
  %72 = load i32, i32* @M_OPT_OUT_OF_RANGE, align 4
  store i32 %72, i32* %6, align 4
  br label %108

73:                                               ; preds = %53, %46
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @M_OPT_MAX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %88 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @BSTR_P(i64 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @BSTR_P(i64 %96)
  %98 = call i32 (%struct.mp_log*, i8*, i32, i32, ...) @mp_err(%struct.mp_log* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %94, i32 %97)
  %99 = load i32, i32* @M_OPT_OUT_OF_RANGE, align 4
  store i32 %99, i32* %6, align 4
  br label %108

100:                                              ; preds = %80, %73
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i64, i64* %13, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = bitcast i8* %105 to i64*
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %100
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %86, %59, %36, %19
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @bstrtoll(i64, %struct.bstr*, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32, ...) #1

declare dso_local i32 @BSTR_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
