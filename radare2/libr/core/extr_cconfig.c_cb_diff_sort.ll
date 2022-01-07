; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_diff_sort.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_diff_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@compareName = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"namelen\00", align 1
@compareNameLen = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@compareAddress = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@compareType = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@compareSize = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@compareDist = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [55 x i8] c"e diff.sort = [name, namelen, addr, type, size, dist]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cb_diff_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_diff_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %95

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @compareName, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  br label %94

33:                                               ; preds = %22
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @compareNameLen, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  br label %93

44:                                               ; preds = %33
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @compareAddress, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  br label %92

55:                                               ; preds = %44
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @compareType, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  br label %91

66:                                               ; preds = %55
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @compareSize, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  br label %90

77:                                               ; preds = %66
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* @compareDist, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %83, i8** %87, align 8
  br label %89

88:                                               ; preds = %77
  br label %96

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %48
  br label %93

93:                                               ; preds = %92, %37
  br label %94

94:                                               ; preds = %93, %26
  store i32 1, i32* %3, align 4
  br label %98

95:                                               ; preds = %18, %2
  br label %96

96:                                               ; preds = %95, %88
  %97 = call i32 @eprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
