; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_GetEnv_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_GetEnv_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.LSAPI_key_value_pair* }
%struct.TYPE_5__ = type { i32 }
%struct.LSAPI_key_value_pair = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LSAPI_GetEnv_r(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.LSAPI_key_value_pair*, align 8
  %7 = alloca %struct.LSAPI_key_value_pair*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %9, align 8
  store %struct.LSAPI_key_value_pair* %10, %struct.LSAPI_key_value_pair** %6, align 8
  %11 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %11, i64 %17
  store %struct.LSAPI_key_value_pair* %18, %struct.LSAPI_key_value_pair** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  store i8* null, i8** %3, align 8
  br label %53

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @GetHeaderVar(%struct.TYPE_6__* %30, i8* %31)
  store i8* %32, i8** %3, align 8
  br label %53

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %49, %33
  %35 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %36 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %7, align 8
  %37 = icmp ult %struct.LSAPI_key_value_pair* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %41 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @strcmp(i8* %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %47 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %3, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %51 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %50, i32 1
  store %struct.LSAPI_key_value_pair* %51, %struct.LSAPI_key_value_pair** %6, align 8
  br label %34

52:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %45, %29, %24
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @GetHeaderVar(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
