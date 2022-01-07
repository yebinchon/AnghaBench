; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_getTSCurrentConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_getTSCurrentConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSCurrentConfigCache = common dso_local global i32 0, align 4
@TSCurrentConfig = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"text search configuration isn't set\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@TSConfigCacheHash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getTSCurrentConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @TSCurrentConfigCache, align 4
  %5 = call i64 @OidIsValid(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TSCurrentConfigCache, align 4
  store i32 %8, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load i8*, i8** @TSCurrentConfig, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @TSCurrentConfig, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @InvalidOid, align 4
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32*, i32** @TSConfigCacheHash, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @init_ts_config_cache()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** @TSCurrentConfig, align 8
  %33 = call i32 @stringToQualifiedNameList(i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @get_ts_config_oid(i32 %33, i32 %37)
  store i32 %38, i32* @TSCurrentConfigCache, align 4
  %39 = load i32, i32* @TSCurrentConfigCache, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %23, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @init_ts_config_cache(...) #1

declare dso_local i32 @get_ts_config_oid(i32, i32) #1

declare dso_local i32 @stringToQualifiedNameList(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
