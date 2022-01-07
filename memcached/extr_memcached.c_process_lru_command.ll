; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_lru_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_lru_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, double, double, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"ERROR hot and warm pcts must not exceed 80\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ERROR hot/warm age factors must be greater than 0\00", align 1
@settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"segmented\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"temp_ttl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i64)* @process_lru_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_lru_command(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @set_noreply_maybe(i32* %12, %struct.TYPE_5__* %13, i64 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp uge i64 %23, 7
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @safe_strtoul(i32 %29, i32* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @safe_strtoul(i32 %36, i32* %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @safe_strtod(i32 %43, double* %9)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @safe_strtod(i32 %50, double* %11)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %39, %32, %25
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @out_string(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %82

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp sgt i32 %59, 80
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @out_string(i32* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %81

64:                                               ; preds = %56
  %65 = load double, double* %11, align 8
  %66 = fcmp ole double %65, 0.000000e+00
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load double, double* %9, align 8
  %69 = fcmp ole double %68, 0.000000e+00
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @out_string(i32* %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %80

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 0), align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 1), align 4
  %76 = load double, double* %9, align 8
  store double %76, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 2), align 8
  %77 = load double, double* %11, align 8
  store double %77, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 3), align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @out_string(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %53
  br label %159

83:                                               ; preds = %22, %3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @strcmp(i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %83
  %91 = load i64, i64* %6, align 8
  %92 = icmp uge i64 %91, 4
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 7), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @strcmp(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 4), align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @out_string(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %120

106:                                              ; preds = %96
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @strcmp(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 4), align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @out_string(i32* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %119

116:                                              ; preds = %106
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @out_string(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %103
  br label %158

121:                                              ; preds = %93, %90, %83
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @strcmp(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %121
  %129 = load i64, i64* %6, align 8
  %130 = icmp uge i64 %129, 4
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 7), align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @safe_strtol(i32 %138, i64* %10)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @out_string(i32* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %153

144:                                              ; preds = %134
  %145 = load i64, i64* %10, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 5), align 4
  br label %150

148:                                              ; preds = %144
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 5), align 4
  %149 = load i64, i64* %10, align 8
  store i64 %149, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 6), align 8
  br label %150

150:                                              ; preds = %148, %147
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @out_string(i32* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %141
  br label %157

154:                                              ; preds = %131, %128, %121
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @out_string(i32* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %153
  br label %158

158:                                              ; preds = %157, %120
  br label %159

159:                                              ; preds = %158, %82
  ret void
}

declare dso_local i32 @set_noreply_maybe(i32*, %struct.TYPE_5__*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @safe_strtoul(i32, i32*) #1

declare dso_local i32 @safe_strtod(i32, double*) #1

declare dso_local i32 @out_string(i32*, i8*) #1

declare dso_local i32 @safe_strtol(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
