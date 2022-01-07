; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_arithmetic_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_arithmetic_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i8* }

@INCR_MAX_STORAGE_LEN = common dso_local global i32 0, align 4
@KEY_TOKEN = common dso_local global i64 0, align 8
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CLIENT_ERROR invalid numeric delta argument\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"CLIENT_ERROR cannot increment or decrement non-numeric value\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SERVER_ERROR out of memory\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"NOT_FOUND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32)* @process_arithmetic_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_arithmetic_command(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @INCR_MAX_STORAGE_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @set_noreply_maybe(%struct.TYPE_15__* %23, %struct.TYPE_14__* %24, i64 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = load i64, i64* @KEY_TOKEN, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @out_string(%struct.TYPE_15__* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %109

37:                                               ; preds = %4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load i64, i64* @KEY_TOKEN, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = load i64, i64* @KEY_TOKEN, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @safe_strtoull(i8* %51, i32* %11)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = call i32 @out_string(%struct.TYPE_15__* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %109

57:                                               ; preds = %37
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @add_delta(%struct.TYPE_15__* %58, i8* %59, i64 %60, i32 %61, i32 %62, i8* %18, i32* null)
  switch i32 %63, label %108 [
    i32 128, label %64
    i32 129, label %67
    i32 130, label %70
    i32 131, label %73
    i32 132, label %107
  ]

64:                                               ; preds = %57
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = call i32 @out_string(%struct.TYPE_15__* %65, i8* %18)
  br label %108

67:                                               ; preds = %57
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = call i32 @out_string(%struct.TYPE_15__* %68, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %108

70:                                               ; preds = %57
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 @out_of_memory(%struct.TYPE_15__* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %108

73:                                               ; preds = %57
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = call i32 @pthread_mutex_lock(i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %98

90:                                               ; preds = %73
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %82
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = call i32 @pthread_mutex_unlock(i32* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = call i32 @out_string(%struct.TYPE_15__* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %108

107:                                              ; preds = %57
  br label %108

108:                                              ; preds = %57, %107, %98, %70, %67, %64
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %54, %34
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %14, align 4
  switch i32 %111, label %113 [
    i32 0, label %112
    i32 1, label %112
  ]

112:                                              ; preds = %109, %109
  ret void

113:                                              ; preds = %109
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @set_noreply_maybe(%struct.TYPE_15__*, %struct.TYPE_14__*, i64) #2

declare dso_local i32 @out_string(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @safe_strtoull(i8*, i32*) #2

declare dso_local i32 @add_delta(%struct.TYPE_15__*, i8*, i64, i32, i32, i8*, i32*) #2

declare dso_local i32 @out_of_memory(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
