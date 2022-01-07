; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getAnotherTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getAnotherTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"insufficient data in \22D\22 message\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected field count in \22D\22 message\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"extraneous data in \22D\22 message\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"out of memory for query result\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @getAnotherTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAnotherTuple(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i64 @pqGetInt(i32* %10, i32 2, %struct.TYPE_13__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i8* @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  br label %126

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i8* @libpq_gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  br label %126

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 16
  %44 = trunc i64 %43 to i32
  %45 = call i64 @realloc(%struct.TYPE_12__* %40, i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %9, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %126

50:                                               ; preds = %39
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %30
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %98, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i64 @pqGetInt(i32* %11, i32 4, %struct.TYPE_13__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i8* @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %67, i8** %8, align 8
  br label %126

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i64 %81, i64* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %68
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = call i64 @pqSkipnchar(i32 %90, %struct.TYPE_13__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i8* @libpq_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %95, i8** %8, align 8
  br label %126

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %68
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %58

101:                                              ; preds = %58
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 5
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = icmp ne i64 %104, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i8* %114, i8** %8, align 8
  br label %126

115:                                              ; preds = %101
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  store i8* null, i8** %8, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = call i64 @pqRowProcessor(%struct.TYPE_13__* %121, i8** %8)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %148

125:                                              ; preds = %115
  br label %134

126:                                              ; preds = %113, %94, %66, %49, %28, %22
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 5, %127
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %126, %125
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = call i32 @pqClearAsyncResult(%struct.TYPE_13__* %135)
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i8* %140, i8** %8, align 8
  br label %141

141:                                              ; preds = %139, %134
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 4
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @printfPQExpBuffer(i32* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %147 = call i32 @pqSaveErrorResult(%struct.TYPE_13__* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %141, %124
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i64 @realloc(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @pqSkipnchar(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @pqRowProcessor(%struct.TYPE_13__*, i8**) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_13__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, i8*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
