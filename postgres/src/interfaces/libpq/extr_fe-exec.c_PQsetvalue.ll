; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsetvalue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsetvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"row number %d is out of range 0..%d\00", align 1
@NULL_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQsetvalue(%struct.TYPE_8__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @check_field_number(%struct.TYPE_8__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %167

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24, %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  store i32 0, i32* %6, align 4
  br label %167

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  %51 = trunc i64 %50 to i32
  %52 = call i64 @pqResultAlloc(%struct.TYPE_8__* %45, i32 %51, i32 1)
  %53 = inttoptr i64 %52 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %14, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %157

57:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i32, i32* @NULL_LEN, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i8* %73, i8** %78, align 8
  br label %79

79:                                               ; preds = %64
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = call i32 @pqAddTuple(%struct.TYPE_8__* %83, %struct.TYPE_9__* %84, i8** %13)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %157

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %38
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %92, i64 %94
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %12, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @NULL_LEN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  %104 = load i8*, i8** %10, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103, %89
  %107 = load i32, i32* @NULL_LEN, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  br label %156

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  br label %155

126:                                              ; preds = %115
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i64 @pqResultAlloc(%struct.TYPE_8__* %127, i32 %129, i32 1)
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %126
  br label %157

139:                                              ; preds = %126
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @memcpy(i8* %145, i8* %146, i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 0, i8* %154, align 1
  br label %155

155:                                              ; preds = %139, %118
  br label %156

156:                                              ; preds = %155, %106
  store i32 1, i32* %6, align 4
  br label %167

157:                                              ; preds = %138, %87, %56
  %158 = load i8*, i8** %13, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = call i8* @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %161, i8** %13, align 8
  br label %162

162:                                              ; preds = %160, %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i8*, i8** %13, align 8
  %166 = call i32 (i32*, i8*, ...) @pqInternalNotice(i32* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %162, %156, %30, %20
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @check_field_number(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, ...) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pqAddTuple(%struct.TYPE_8__*, %struct.TYPE_9__*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
