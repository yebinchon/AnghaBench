; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_timeline.c_rewind_parseTimeLineHistory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_timeline.c_rewind_parseTimeLineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64 }

@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%u\09%X/%X\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"syntax error in history file: %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected a numeric timeline ID.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Expected a write-ahead log switchpoint location.\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid data in history file: %s\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Timeline IDs must be in increasing sequence.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid data in history file\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Timeline IDs must be less than child timeline's ID.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @rewind_parseTimeLineHistory(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** @InvalidXLogRecPtr, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %13, align 8
  br label %22

22:                                               ; preds = %108, %77, %3
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %142

26:                                               ; preds = %22
  %27 = load i8*, i8** %13, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 10
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %13, align 8
  br label %28

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %13, align 8
  store i8 0, i8* %49, align 1
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %15, align 8
  br label %53

53:                                               ; preds = %64, %51
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i8*, i8** %15, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @isspace(i8 zeroext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %15, align 8
  br label %53

67:                                               ; preds = %62, %53
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %15, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 35
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  br label %22

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @sscanf(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %16, i64* %17, i64* %18)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %78
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  %106 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %99, %96
  %109 = load i64, i64* %16, align 8
  store i64 %109, i64* %11, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 24
  %116 = trunc i64 %115 to i32
  %117 = call %struct.TYPE_6__* @pg_realloc(%struct.TYPE_6__* %112, i32 %116)
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %9, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %121
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %8, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %17, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %130, 32
  %132 = load i64, i64* %18, align 8
  %133 = trunc i64 %132 to i32
  %134 = or i32 %131, %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** %12, align 8
  br label %22

142:                                              ; preds = %22
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* %11, align 8
  %148 = icmp sle i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %152 = call i32 @exit(i32 1) #3
  unreachable

153:                                              ; preds = %145, %142
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = icmp ne %struct.TYPE_6__* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 24
  %163 = trunc i64 %162 to i32
  %164 = call %struct.TYPE_6__* @pg_realloc(%struct.TYPE_6__* %159, i32 %163)
  store %struct.TYPE_6__* %164, %struct.TYPE_6__** %9, align 8
  br label %167

165:                                              ; preds = %153
  %166 = call %struct.TYPE_6__* @pg_malloc(i32 24)
  store %struct.TYPE_6__* %166, %struct.TYPE_6__** %9, align 8
  br label %167

167:                                              ; preds = %165, %158
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %171
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %8, align 8
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32*, i32** %6, align 8
  store i32 %183, i32* %184, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %185
}

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_6__* @pg_realloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @pg_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
