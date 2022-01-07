; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_check_eof.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_check_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64 }

@REDIS_SOCK_STATUS_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Connection closed\00", align 1
@errno = common dso_local global i64 0, align 8
@MULTI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Connection lost and socket is in MULTI/watching mode\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Connection lost\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"AUTH failed while reconnecting\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"SELECT failed while reconnecting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_check_eof(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REDIS_SOCK_STATUS_FAILED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %11, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @REDIS_THROW_EXCEPTION(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %27

27:                                               ; preds = %25, %22
  store i32 -1, i32* %3, align 4
  br label %131

28:                                               ; preds = %16
  store i64 0, i64* @errno, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @php_stream_eof(i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %131

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MULTI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %118

47:                                               ; preds = %41
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %114, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %117

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 @redis_sock_disconnect(%struct.TYPE_7__* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  br label %77

71:                                               ; preds = %64
  %72 = call i64 (...) @php_rand()
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = srem i64 %72, %75
  br label %77

77:                                               ; preds = %71, %67
  %78 = phi i64 [ %70, %67 ], [ %76, %71 ]
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @usleep(i64 %79)
  br label %81

81:                                               ; preds = %77, %59
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = call i64 @redis_sock_connect(%struct.TYPE_7__* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  store i64 0, i64* @errno, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @php_stream_eof(i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = call i64 @redis_sock_auth(%struct.TYPE_7__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %117

101:                                              ; preds = %96, %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = call i64 @reselect_db(%struct.TYPE_7__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %117

111:                                              ; preds = %106, %101
  store i32 0, i32* %3, align 4
  br label %131

112:                                              ; preds = %85
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %48

117:                                              ; preds = %110, %100, %48
  br label %118

118:                                              ; preds = %117, %46
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = call i32 @redis_sock_disconnect(%struct.TYPE_7__* %120, i32 1)
  %122 = load i64, i64* @REDIS_SOCK_STATUS_FAILED, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @REDIS_THROW_EXCEPTION(i8* %128, i32 0)
  br label %130

130:                                              ; preds = %127, %119
  store i32 -1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %111, %34, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @REDIS_THROW_EXCEPTION(i8*, i32) #1

declare dso_local i64 @php_stream_eof(i64) #1

declare dso_local i32 @redis_sock_disconnect(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @php_rand(...) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i64 @redis_sock_connect(%struct.TYPE_7__*) #1

declare dso_local i64 @redis_sock_auth(%struct.TYPE_7__*) #1

declare dso_local i64 @reselect_db(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
