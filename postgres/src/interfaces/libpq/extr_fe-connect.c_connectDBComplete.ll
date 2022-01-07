; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_connectDBComplete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_connectDBComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.addrinfo*, i32* }
%struct.addrinfo = type { i32 }

@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1
@CONNECTION_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @connectDBComplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connectDBComplete(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 128, i32* %4, align 4
  store i64 -1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -2, i32* %7, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CONNECTION_BAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %119

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @parse_int_param(i32* %27, i32* %6, %struct.TYPE_6__* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* @CONNECTION_BAD, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %119

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 2, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %116, %45
  store i32 0, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 130
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load %struct.addrinfo*, %struct.addrinfo** %60, align 8
  %62 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %63 = icmp ne %struct.addrinfo* %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %52
  %65 = call i64 @time(i32* null)
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  store i64 %68, i64* %5, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.addrinfo*, %struct.addrinfo** %73, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %8, align 8
  br label %75

75:                                               ; preds = %64, %58, %49, %46
  %76 = load i32, i32* %4, align 4
  switch i32 %76, label %103 [
    i32 130, label %77
    i32 129, label %81
    i32 128, label %92
  ]

77:                                               ; preds = %75
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = call i32 @resetPQExpBuffer(i32* %79)
  store i32 1, i32* %2, align 4
  br label %119

81:                                               ; preds = %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @pqWaitTimed(i32 1, i32 0, %struct.TYPE_6__* %82, i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* @CONNECTION_BAD, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  store i32 0, i32* %2, align 4
  br label %119

91:                                               ; preds = %81
  br label %107

92:                                               ; preds = %75
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @pqWaitTimed(i32 0, i32 1, %struct.TYPE_6__* %93, i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* @CONNECTION_BAD, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  store i32 0, i32* %2, align 4
  br label %119

102:                                              ; preds = %92
  br label %107

103:                                              ; preds = %75
  %104 = load i64, i64* @CONNECTION_BAD, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  store i32 0, i32* %2, align 4
  br label %119

107:                                              ; preds = %102, %91
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32 1, i32* %112, align 4
  %113 = load i64, i64* @CONNECTION_NEEDED, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %107
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = call i32 @PQconnectPoll(%struct.TYPE_6__* %117)
  store i32 %118, i32* %4, align 4
  br label %46

119:                                              ; preds = %103, %98, %87, %77, %31, %18
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @parse_int_param(i32*, i32*, %struct.TYPE_6__*, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i32 @pqWaitTimed(i32, i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @PQconnectPoll(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
