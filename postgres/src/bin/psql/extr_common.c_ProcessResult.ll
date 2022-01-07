; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ProcessResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ProcessResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"unexpected PQresultStatus: %d\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @ProcessResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessResult(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %134, %1
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @AcceptResult(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %140

19:                                               ; preds = %13
  %20 = load i32**, i32*** %3, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PQresultStatus(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %26 [
    i32 129, label %24
    i32 132, label %24
    i32 128, label %24
    i32 130, label %25
    i32 131, label %25
  ]

24:                                               ; preds = %19, %19, %19
  store i32 0, i32* %7, align 4
  br label %29

25:                                               ; preds = %19, %19
  store i32 1, i32* %7, align 4
  br label %29

26:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %25, %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %123

32:                                               ; preds = %29
  %33 = call i32 (...) @SetCancelConn()
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 130
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  store i32* %40, i32** %9, align 8
  br label %59

41:                                               ; preds = %36
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 4), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 4), align 8
  %46 = call i64 @openQueryOutputFile(i64 %45, i32** %9, i32* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @disable_sigpipe_trap()
  br label %53

53:                                               ; preds = %51, %48
  br label %55

54:                                               ; preds = %44
  store i32* null, i32** %9, align 8
  br label %55

55:                                               ; preds = %54, %53
  br label %58

56:                                               ; preds = %41
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 3), align 8
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %56, %55
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @handleCopyOut(i32 %60, i32* %61, i32** %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br label %70

70:                                               ; preds = %67, %64, %59
  %71 = phi i1 [ false, %64 ], [ false, %59 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 3), align 8
  %75 = icmp eq i32* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @PQclear(i32* %77)
  store i32* null, i32** %10, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @pclose(i32* %86)
  %88 = call i32 (...) @restore_sigpipe_trap()
  br label %92

89:                                               ; preds = %82
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @fclose(i32* %90)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %79
  br label %116

94:                                               ; preds = %32
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  br label %101

99:                                               ; preds = %94
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32* [ %98, %97 ], [ %100, %99 ]
  store i32* %102, i32** %9, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32**, i32*** %3, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @PQbinaryTuples(i32* %106)
  %108 = call i64 @handleCopyIn(i32 %103, i32* %104, i32 %107, i32** %10)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %110, %101
  %114 = phi i1 [ false, %101 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %93
  %117 = call i32 (...) @ResetCancelConn()
  %118 = load i32**, i32*** %3, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @PQclear(i32* %119)
  %121 = load i32*, i32** %10, align 8
  %122 = load i32**, i32*** %3, align 8
  store i32* %121, i32** %122, align 8
  br label %128

123:                                              ; preds = %29
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %140

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %130 = call i32* @PQgetResult(i32 %129)
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %140

134:                                              ; preds = %128
  %135 = load i32**, i32*** %3, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @PQclear(i32* %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load i32**, i32*** %3, align 8
  store i32* %138, i32** %139, align 8
  store i32 0, i32* %5, align 4
  br label %13

140:                                              ; preds = %133, %126, %18
  %141 = load i32**, i32*** %3, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @SetResultVariables(i32* %142, i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %140
  %148 = call i32 (...) @CheckConnection()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %153

151:                                              ; preds = %147, %140
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @AcceptResult(i32*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i64 @openQueryOutputFile(i64, i32**, i32*) #1

declare dso_local i32 @disable_sigpipe_trap(...) #1

declare dso_local i64 @handleCopyOut(i32, i32*, i32**) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @restore_sigpipe_trap(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @handleCopyIn(i32, i32*, i32, i32**) #1

declare dso_local i32 @PQbinaryTuples(i32*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @SetResultVariables(i32*, i32) #1

declare dso_local i32 @CheckConnection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
