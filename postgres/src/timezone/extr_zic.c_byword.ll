; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_byword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_byword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup = type { i8* }

@lasts = common dso_local global %struct.lookup* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\22%s\22 is undocumented; use \22last%s\22 instead\00", align 1
@wday_names = common dso_local global %struct.lookup* null, align 8
@noise = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"\22%s\22 is ambiguous in pre-2017c zic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lookup* (i8*, %struct.lookup*)* @byword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lookup* @byword(i8* %0, %struct.lookup* %1) #0 {
  %3 = alloca %struct.lookup*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lookup*, align 8
  %6 = alloca %struct.lookup*, align 8
  %7 = alloca %struct.lookup*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.lookup* %1, %struct.lookup** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.lookup*, %struct.lookup** %5, align 8
  %13 = icmp eq %struct.lookup* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store %struct.lookup* null, %struct.lookup** %3, align 8
  br label %126

15:                                               ; preds = %11
  %16 = load %struct.lookup*, %struct.lookup** %5, align 8
  %17 = load %struct.lookup*, %struct.lookup** @lasts, align 8
  %18 = icmp eq %struct.lookup* %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @ciprefix(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = call i32 (i32, i8*, ...) @warning(i32 %36, i8* %37, i8* %39)
  br label %45

41:                                               ; preds = %29
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %43, i8** %4, align 8
  %44 = load %struct.lookup*, %struct.lookup** @wday_names, align 8
  store %struct.lookup* %44, %struct.lookup** %5, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %23, %19, %15
  %47 = load %struct.lookup*, %struct.lookup** %5, align 8
  store %struct.lookup* %47, %struct.lookup** %7, align 8
  br label %48

48:                                               ; preds = %63, %46
  %49 = load %struct.lookup*, %struct.lookup** %7, align 8
  %50 = getelementptr inbounds %struct.lookup, %struct.lookup* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.lookup*, %struct.lookup** %7, align 8
  %56 = getelementptr inbounds %struct.lookup, %struct.lookup* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @ciequal(i8* %54, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load %struct.lookup*, %struct.lookup** %7, align 8
  store %struct.lookup* %61, %struct.lookup** %3, align 8
  br label %126

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.lookup*, %struct.lookup** %7, align 8
  %65 = getelementptr inbounds %struct.lookup, %struct.lookup* %64, i32 1
  store %struct.lookup* %65, %struct.lookup** %7, align 8
  br label %48

66:                                               ; preds = %48
  store %struct.lookup* null, %struct.lookup** %6, align 8
  %67 = load %struct.lookup*, %struct.lookup** %5, align 8
  store %struct.lookup* %67, %struct.lookup** %7, align 8
  br label %68

68:                                               ; preds = %88, %66
  %69 = load %struct.lookup*, %struct.lookup** %7, align 8
  %70 = getelementptr inbounds %struct.lookup, %struct.lookup* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.lookup*, %struct.lookup** %7, align 8
  %76 = getelementptr inbounds %struct.lookup, %struct.lookup* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @ciprefix(i8* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.lookup*, %struct.lookup** %6, align 8
  %82 = icmp eq %struct.lookup* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load %struct.lookup*, %struct.lookup** %7, align 8
  store %struct.lookup* %84, %struct.lookup** %6, align 8
  br label %86

85:                                               ; preds = %80
  store %struct.lookup* null, %struct.lookup** %3, align 8
  br label %126

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.lookup*, %struct.lookup** %7, align 8
  %90 = getelementptr inbounds %struct.lookup, %struct.lookup* %89, i32 1
  store %struct.lookup* %90, %struct.lookup** %7, align 8
  br label %68

91:                                               ; preds = %68
  %92 = load %struct.lookup*, %struct.lookup** %6, align 8
  %93 = icmp ne %struct.lookup* %92, null
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i64, i64* @noise, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  store i32 0, i32* %8, align 4
  %98 = load %struct.lookup*, %struct.lookup** %5, align 8
  store %struct.lookup* %98, %struct.lookup** %7, align 8
  br label %99

99:                                               ; preds = %120, %97
  %100 = load %struct.lookup*, %struct.lookup** %7, align 8
  %101 = getelementptr inbounds %struct.lookup, %struct.lookup* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = load %struct.lookup*, %struct.lookup** %7, align 8
  %107 = getelementptr inbounds %struct.lookup, %struct.lookup* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @itsabbr(i8* %105, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 (i32, i8*, ...) @warning(i32 %115, i8* %116)
  br label %123

118:                                              ; preds = %111
  store i32 1, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.lookup*, %struct.lookup** %7, align 8
  %122 = getelementptr inbounds %struct.lookup, %struct.lookup* %121, i32 1
  store %struct.lookup* %122, %struct.lookup** %7, align 8
  br label %99

123:                                              ; preds = %114, %99
  br label %124

124:                                              ; preds = %123, %94, %91
  %125 = load %struct.lookup*, %struct.lookup** %6, align 8
  store %struct.lookup* %125, %struct.lookup** %3, align 8
  br label %126

126:                                              ; preds = %124, %85, %60, %14
  %127 = load %struct.lookup*, %struct.lookup** %3, align 8
  ret %struct.lookup* %127
}

declare dso_local i64 @ciprefix(i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @ciequal(i8*, i8*) #1

declare dso_local i64 @itsabbr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
