; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_addToArray.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_addToArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [48 x i8] c"time zone abbreviation \22%s\22 is multiply defined\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Entry in time zone file \22%s\22, line %d, conflicts with entry in file \22%s\22, line %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, i32*, i32, %struct.TYPE_9__*, i32)* @addToArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addToArray(%struct.TYPE_9__** %0, i32* %1, i32 %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %139, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %140

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %16, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @strcmp(i32* %37, i32* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %139

47:                                               ; preds = %26
  %48 = load i32, i32* %17, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %138

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %98, label %79

79:                                               ; preds = %71, %63, %58, %53
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @strcmp(i32* %92, i32* %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89, %71
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %6, align 4
  br label %180

100:                                              ; preds = %89, %84, %79
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %6, align 4
  br label %180

120:                                              ; preds = %100
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @GUC_check_errdetail(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %136)
  store i32 -1, i32* %6, align 4
  br label %180

138:                                              ; preds = %50
  br label %139

139:                                              ; preds = %138, %44
  br label %22

140:                                              ; preds = %22
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %141, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 2
  store i32 %148, i32* %146, align 4
  %149 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 40
  %155 = trunc i64 %154 to i32
  %156 = call i64 @repalloc(%struct.TYPE_9__* %150, i32 %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_9__*
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %158, align 8
  br label %159

159:                                              ; preds = %145, %140
  %160 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %12, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 40
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memmove(%struct.TYPE_9__* %166, %struct.TYPE_9__* %167, i32 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %177 = call i32 @memcpy(%struct.TYPE_9__* %175, %struct.TYPE_9__* %176, i32 40)
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %159, %120, %103, %98
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @strcmp(i32*, i32*) #1

declare dso_local i32 @GUC_check_errmsg(i8*, i32*) #1

declare dso_local i32 @GUC_check_errdetail(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
