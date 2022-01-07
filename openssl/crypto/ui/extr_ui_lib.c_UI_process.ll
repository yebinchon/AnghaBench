; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_UI_process.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_UI_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*, i32)*, {}*, i32 (%struct.TYPE_10__*, i32)*, i64 (%struct.TYPE_10__*)* }

@.str = private unnamed_addr constant [11 x i8] c"processing\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"opening session\00", align 1
@UI_FLAG_PRINT_ERRORS = common dso_local global i32 0, align 4
@print_error = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"writing strings\00", align 1
@UI_FLAG_REDOABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"flushing\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"reading strings\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"closing session\00", align 1
@UI_F_UI_PROCESS = common dso_local global i32 0, align 4
@UI_R_PROCESSING_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"while \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_process(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %9, align 8
  %11 = icmp ne i64 (%struct.TYPE_10__*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i64 %17(%struct.TYPE_10__* %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i32 -1, i32* %4, align 4
  br label %139

22:                                               ; preds = %12, %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UI_FLAG_PRINT_ERRORS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64, i64* @print_error, align 8
  %31 = inttoptr i64 %30 to i32 (i8*, i64, i8*)*
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = bitcast %struct.TYPE_10__* %32 to i8*
  %34 = call i32 @ERR_print_errors_cb(i32 (i8*, i64, i8*)* %31, i8* %33)
  br label %35

35:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sk_UI_STRING_num(i32 %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64 (%struct.TYPE_10__*, i32)*, i64 (%struct.TYPE_10__*, i32)** %47, align 8
  %49 = icmp ne i64 (%struct.TYPE_10__*, i32)* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64 (%struct.TYPE_10__*, i32)*, i64 (%struct.TYPE_10__*, i32)** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @sk_UI_STRING_value(i32 %59, i32 %60)
  %62 = call i64 %55(%struct.TYPE_10__* %56, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i32 -1, i32* %4, align 4
  br label %139

65:                                               ; preds = %50, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %36

69:                                               ; preds = %36
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = bitcast {}** %73 to i32 (%struct.TYPE_10__*)**
  %75 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %74, align 8
  %76 = icmp ne i32 (%struct.TYPE_10__*)* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = bitcast {}** %81 to i32 (%struct.TYPE_10__*)**
  %83 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = call i32 %83(%struct.TYPE_10__* %84)
  switch i32 %85, label %94 [
    i32 -1, label %86
    i32 0, label %93
  ]

86:                                               ; preds = %77
  %87 = load i32, i32* @UI_FLAG_REDOABLE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  store i32 -2, i32* %4, align 4
  br label %139

93:                                               ; preds = %77
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  store i32 -1, i32* %4, align 4
  br label %139

94:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %69
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %135, %96
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @sk_UI_STRING_num(i32 %101)
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %97
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %108, align 8
  %110 = icmp ne i32 (%struct.TYPE_10__*, i32)* %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %104
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @sk_UI_STRING_value(i32 %120, i32 %121)
  %123 = call i32 %116(%struct.TYPE_10__* %117, i32 %122)
  switch i32 %123, label %132 [
    i32 -1, label %124
    i32 0, label %131
  ]

124:                                              ; preds = %111
  %125 = load i32, i32* @UI_FLAG_REDOABLE, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  store i32 -2, i32* %4, align 4
  br label %139

131:                                              ; preds = %111
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  store i32 -1, i32* %4, align 4
  br label %139

132:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %97

138:                                              ; preds = %97
  store i8* null, i8** %5, align 8
  br label %139

139:                                              ; preds = %138, %131, %124, %93, %86, %64, %21
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %143, align 8
  %145 = icmp ne i64 (%struct.TYPE_10__*)* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %153 = call i64 %151(%struct.TYPE_10__* %152)
  %154 = icmp sle i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load i8*, i8** %5, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %159

159:                                              ; preds = %158, %155
  store i32 -1, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %146, %139
  %161 = load i32, i32* %4, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* @UI_F_UI_PROCESS, align 4
  %165 = load i32, i32* @UI_R_PROCESSING_ERROR, align 4
  %166 = call i32 @UIerr(i32 %164, i32 %165)
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @ERR_print_errors_cb(i32 (i8*, i64, i8*)*, i8*) #1

declare dso_local i32 @sk_UI_STRING_num(i32) #1

declare dso_local i32 @sk_UI_STRING_value(i32, i32) #1

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
