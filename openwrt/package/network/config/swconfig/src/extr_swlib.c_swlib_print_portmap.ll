; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_print_portmap.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_print_portmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"port%d:\09cpu\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"port%d:\09%s.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"port%d:\09disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swlib_print_portmap(%struct.switch_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %85

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %14 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %84

17:                                               ; preds = %8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %25 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %30 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %22

45:                                               ; preds = %22
  br label %83

46:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %50 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %55 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %65 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcmp(i8* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %63, %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %47

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %12
  br label %146

85:                                               ; preds = %2
  %86 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %87 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %90 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %88, i8* %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %142, %85
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %96 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %145

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %102 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %141

108:                                              ; preds = %99
  %109 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %110 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %108
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %121 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %129 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %128, i32 0, i32 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %119, i8* %127, i32 %135)
  br label %140

137:                                              ; preds = %108
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %118
  br label %141

141:                                              ; preds = %140, %105
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %93

145:                                              ; preds = %93
  br label %146

146:                                              ; preds = %145, %84
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
