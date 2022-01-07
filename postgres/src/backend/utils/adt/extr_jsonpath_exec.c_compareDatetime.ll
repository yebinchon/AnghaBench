; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareDatetime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareDatetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@date_cmp = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unrecognized SQL/JSON datetime type oid: %u\00", align 1
@time_cmp = common dso_local global i32 0, align 4
@timetz_cmp = common dso_local global i32 0, align 4
@timestamp_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @compareDatetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareDatetime(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %127 [
    i32 132, label %17
    i32 131, label %42
    i32 128, label %58
    i32 130, label %74
    i32 129, label %100
  ]

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %37 [
    i32 132, label %19
    i32 130, label %21
    i32 129, label %28
    i32 131, label %35
    i32 128, label %35
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @date_cmp, align 4
  store i32 %20, i32* %14, align 4
  br label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DatumGetDateADT(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @DatumGetTimestamp(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @cmpDateToTimestamp(i32 %23, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %142

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @DatumGetDateADT(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DatumGetTimestampTz(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @cmpDateToTimestampTz(i32 %30, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %142

35:                                               ; preds = %17, %17
  %36 = load i32*, i32** %13, align 8
  store i32 1, i32* %36, align 4
  store i32 0, i32* %7, align 4
  br label %142

37:                                               ; preds = %17
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %19
  br label %131

42:                                               ; preds = %6
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %53 [
    i32 131, label %44
    i32 128, label %46
    i32 132, label %51
    i32 130, label %51
    i32 129, label %51
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @time_cmp, align 4
  store i32 %45, i32* %14, align 4
  br label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @castTimeToTimeTz(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @timetz_cmp, align 4
  store i32 %50, i32* %14, align 4
  br label %57

51:                                               ; preds = %42, %42, %42
  %52 = load i32*, i32** %13, align 8
  store i32 1, i32* %52, align 4
  store i32 0, i32* %7, align 4
  br label %142

53:                                               ; preds = %42
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %46, %44
  br label %131

58:                                               ; preds = %6
  %59 = load i32, i32* %11, align 4
  switch i32 %59, label %69 [
    i32 131, label %60
    i32 128, label %65
    i32 132, label %67
    i32 130, label %67
    i32 129, label %67
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @castTimeToTimeTz(i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @timetz_cmp, align 4
  store i32 %64, i32* %14, align 4
  br label %73

65:                                               ; preds = %58
  %66 = load i32, i32* @timetz_cmp, align 4
  store i32 %66, i32* %14, align 4
  br label %73

67:                                               ; preds = %58, %58, %58
  %68 = load i32*, i32** %13, align 8
  store i32 1, i32* %68, align 4
  store i32 0, i32* %7, align 4
  br label %142

69:                                               ; preds = %58
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @elog(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %65, %60
  br label %131

74:                                               ; preds = %6
  %75 = load i32, i32* %11, align 4
  switch i32 %75, label %95 [
    i32 132, label %76
    i32 130, label %84
    i32 129, label %86
    i32 131, label %93
    i32 128, label %93
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @DatumGetDateADT(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @DatumGetTimestamp(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @cmpDateToTimestamp(i32 %78, i32 %80, i32 %81)
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %142

84:                                               ; preds = %74
  %85 = load i32, i32* @timestamp_cmp, align 4
  store i32 %85, i32* %14, align 4
  br label %99

86:                                               ; preds = %74
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @DatumGetTimestamp(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @DatumGetTimestampTz(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @cmpTimestampToTimestampTz(i32 %88, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %142

93:                                               ; preds = %74, %74
  %94 = load i32*, i32** %13, align 8
  store i32 1, i32* %94, align 4
  store i32 0, i32* %7, align 4
  br label %142

95:                                               ; preds = %74
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %84
  br label %131

100:                                              ; preds = %6
  %101 = load i32, i32* %11, align 4
  switch i32 %101, label %122 [
    i32 132, label %102
    i32 130, label %110
    i32 129, label %118
    i32 131, label %120
    i32 128, label %120
  ]

102:                                              ; preds = %100
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @DatumGetDateADT(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @DatumGetTimestampTz(i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @cmpDateToTimestampTz(i32 %104, i32 %106, i32 %107)
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %142

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @DatumGetTimestamp(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @DatumGetTimestampTz(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @cmpTimestampToTimestampTz(i32 %112, i32 %114, i32 %115)
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %142

118:                                              ; preds = %100
  %119 = load i32, i32* @timestamp_cmp, align 4
  store i32 %119, i32* %14, align 4
  br label %126

120:                                              ; preds = %100, %100
  %121 = load i32*, i32** %13, align 8
  store i32 1, i32* %121, align 4
  store i32 0, i32* %7, align 4
  br label %142

122:                                              ; preds = %100
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %131

127:                                              ; preds = %6
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @elog(i32 %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %126, %99, %73, %57, %41
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %142

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @DirectFunctionCall2(i32 %137, i32 %138, i32 %139)
  %141 = call i32 @DatumGetInt32(i32 %140)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %136, %135, %120, %110, %102, %93, %86, %76, %67, %51, %35, %28, %21
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @cmpDateToTimestamp(i32, i32, i32) #1

declare dso_local i32 @DatumGetDateADT(i32) #1

declare dso_local i32 @DatumGetTimestamp(i32) #1

declare dso_local i32 @cmpDateToTimestampTz(i32, i32, i32) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @castTimeToTimeTz(i32, i32) #1

declare dso_local i32 @cmpTimestampToTimestampTz(i32, i32, i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
