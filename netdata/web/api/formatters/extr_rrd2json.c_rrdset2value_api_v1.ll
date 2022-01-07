; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdset2value_api_v1.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdset2value_api_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@HTTP_RESP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@RRDR_RESULT_OPTION_RELATIVE = common dso_local global i32 0, align 4
@RRDR_RESULT_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@RRDR_OPTION_REVERSED = common dso_local global i32 0, align 4
@HTTP_RESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdset2value_api_v1(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i64 %8, i32 %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_6__*, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i32 %7, i32* %22, align 4
  store i64 %8, i64* %23, align 8
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i64, i64* %19, align 8
  %32 = load i64, i64* %20, align 8
  %33 = load i64, i64* %21, align 8
  %34 = load i32, i32* %22, align 4
  %35 = load i64, i64* %23, align 8
  %36 = load i32, i32* %24, align 4
  %37 = load i8*, i8** %18, align 8
  %38 = call %struct.TYPE_6__* @rrd2rrdr(i32* %30, i64 %31, i64 %32, i64 %33, i32 %34, i64 %35, i32 %36, i8* %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %28, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %13
  %42 = load i32*, i32** %27, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %27, align 8
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* @HTTP_RESP_INTERNAL_SERVER_ERROR, align 4
  store i32 %47, i32* %14, align 4
  br label %134

48:                                               ; preds = %13
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %50 = call i32 @rrdr_rows(%struct.TYPE_6__* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %54 = call i32 @rrdr_free(%struct.TYPE_6__* %53)
  %55 = load i32*, i32** %25, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** %25, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32*, i32** %26, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32*, i32** %26, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32*, i32** %27, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %27, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* @HTTP_RESP_BAD_REQUEST, align 4
  store i32 %70, i32* %14, align 4
  br label %134

71:                                               ; preds = %48
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RRDR_RESULT_OPTION_RELATIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @buffer_no_cacheable(i32* %82)
  br label %95

84:                                               ; preds = %74
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RRDR_RESULT_OPTION_ABSOLUTE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @buffer_cacheable(i32* %92)
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32*, i32** %25, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %25, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32*, i32** %26, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %26, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* @RRDR_OPTION_REVERSED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %119 = call i32 @rrdr_rows(%struct.TYPE_6__* %118)
  %120 = sub nsw i32 %119, 1
  br label %122

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ %120, %117 ], [ 0, %121 ]
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %29, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %126 = load i64, i64* %29, align 8
  %127 = load i32, i32* %24, align 4
  %128 = load i32*, i32** %27, align 8
  %129 = call i32 @rrdr2value(%struct.TYPE_6__* %125, i64 %126, i32 %127, i32* %128)
  %130 = load i32*, i32** %17, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %132 = call i32 @rrdr_free(%struct.TYPE_6__* %131)
  %133 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %122, %69, %46
  %135 = load i32, i32* %14, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_6__* @rrd2rrdr(i32*, i64, i64, i64, i32, i64, i32, i8*) #1

declare dso_local i32 @rrdr_rows(%struct.TYPE_6__*) #1

declare dso_local i32 @rrdr_free(%struct.TYPE_6__*) #1

declare dso_local i32 @buffer_no_cacheable(i32*) #1

declare dso_local i32 @buffer_cacheable(i32*) #1

declare dso_local i32 @rrdr2value(%struct.TYPE_6__*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
